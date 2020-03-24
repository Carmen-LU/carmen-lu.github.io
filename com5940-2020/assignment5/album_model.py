from flask import Flask
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)

app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql://root:root@localhost/Assignment'
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
