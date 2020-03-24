############# Flask Modules Setup ##############

from flask import Flask, render_template, url_for, redirect, request, make_response, Response, jsonify
from flask_login import LoginManager, login_user, current_user, logout_user, login_required, UserMixin
#from flask_cors import CORS
from flask_sqlalchemy import SQLAlchemy
from datetime import datetime
import requests
import jwt

############ Initialize Flask App ##############

app = Flask(__name__)
#CORS(app)

#### MySQL SQLAlchemy Object Relations Mapping #####

app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql://CarmenLU:HinsCheung@CarmenLU.mysql.pythonanywhere-services.com/CarmenLU$assign5'
app.config['SECRET_KEY'] = "mysecret"
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
db = SQLAlchemy(app)

class Album(db.Model):
    __tablename__ = 'album'
    albumID = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(22))
    time = db.Column(db.String(10))
    company = db.Column(db.String(5))
    songs = db.Column(db.String(100))
    picture = db.Column(db.String(87))
    # description = db.Column(db.Text)

############## Login Manager Setup ###############

login_manager = LoginManager()
login_manager.init_app(app)
login_manager.login_view = 'login'
app.config['SECRET_KEY'] = "lkkajdghdadkglajkgah"


@login_manager.user_loader
def load_user(user_id):
    return User(user_id)

class User(UserMixin):
  def __init__(self,id):
    self.id = id

############ Web Page Routes Setup ###############

@app.route("/")
def home():
    return render_template('home.html')

@app.route("/login")
def login():
    if current_user.is_authenticated:
        return redirect(url_for("list_album"))
    message = '請先登錄'
    return render_template('login.html', message=message)

@app.route("/form_auth",methods=['POST'])
def form_auth():
    username = request.form['email']
    password = request.form['pwd']
    if username == "Hins@Hins.com" and password == "0201":
        login_user(User(1))
        # message = "Dear " + username + ", welcome to Carmen's pages. Your login has been granted."
        return redirect(url_for("list_album"))
    else:
        message = '密碼錯誤'
        return render_template('login.html',message=message)

@app.route("/list_album")
@login_required
def list_album():
    dataset = []
    album_list = Album.query.all()
    for album in album_list:
        dataset.append({'albumID':album.albumID, 'name':album.name, 'time': album.time, 'company': album.company, 'songs': album.songs, 'picture':album.picture})
    return render_template('list_album2.html', entries=dataset)

@app.route('/album')
def album():
    page_num = 1
    album = Album.query.paginate(per_page=3, page=page_num, error_out=True)
    return render_template('album_paging.html', album=album)

@app.route('/album/<int:page_num>')
@login_required
def album_paging(page_num):
    album = Album.query.paginate(per_page=3, page=page_num, error_out=True)
    return render_template('album_paging.html', album=album)

@app.route("/add_album",methods=['POST'])
@login_required
def add_album():
    name = request.form['name']
    time = request.form['time']
    company = request.form['company']
    songs = request.form['songs']
    picture = request.form['picture']
    album = Album(name=name,time=time,company=company,songs=songs,picture=picture)
    db.session.add(album)
    db.session.commit()
    dataset = []
    album_list = Album.query.all()
    for album in album_list:
        dataset.append({'albumID':album.albumID, 'name':album.name, 'time': album.time, 'company': album.company, 'songs': album.songs, 'picture':album.picture})
    return render_template('list_album2.html', entries=dataset)

@app.route("/update_album",methods=['POST','PUT'])
@login_required
def update_album():
    record_id = request.form['record_id']
    album = Album.query.filter_by(albumID=record_id).first()
    album.name = request.form['name']
    album.time = request.form['time']
    album.company = request.form['company']
    album.songs = request.form['songs']
    album.picture = request.form['picture']
    db.session.commit()
    dataset = []
    album_list = Album.query.all()
    for album in album_list:
        dataset.append({'albumID':album.albumID, 'name':album.name, 'time': album.time, 'company': album.company, 'songs': album.songs, 'picture':album.picture})
    return render_template('list_album2.html', entries=dataset)

@app.route("/delete_album",methods=['POST','DELETE'])
@login_required
def delete_album():
    record_id = request.form['record_id']
    album = Album.query.filter_by(albumID=record_id).first()
    db.session.delete(album)
    db.session.commit()
    dataset = []
    album_list = Album.query.all()
    for album in album_list:
        dataset.append({'albumID':album.albumID, 'name':album.name, 'time': album.time, 'company': album.company, 'songs': album.songs, 'picture':album.picture})
    return render_template('list_album2.html', entries=dataset)

@app.route('/api')
def api():
    result = db.engine.execute('select * from album')
    final_result = [list(i) for i in result]
    dataset=[]
    dict={}
    for i in final_result:
        dict['albumID'] = i[0]
        dict['name'] = i[1]
        dict['time'] = i[2]
        dict['company'] = i[3]
        dict['songs'] = i[4]
        dict['picture'] = i[5]
        # print(i)
        # print(dict)
        dataset.append(dict.copy()) #markers.append(fld.copy())
    return jsonify({'Album': dataset})

@app.route('/logout/')
@login_required
def logout():
    logout_user()
    message = '您已登出'
    return render_template('login.html',message=message)

@app.errorhandler(500)
def internal_error(error):
    message = '密碼錯誤'
    return render_template('login.html',message=message),500

######### API Endpoints ##########

if __name__ == '__main__':
    app.run(debug = True)