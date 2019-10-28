var num=66;
var chance=5;

function showGame(){
document.getElementById("guessDiv").style.display="block";//显示猜数的DIV（游戏界面）
document.getElementById("guessNum").focus();//自动让输入框获得焦点
}

function guessNum(){
var guessNum=document.getElementById("guessNum")//得到输入数
if(guessNum.value>num){//如果太大
  chance--;//机会减1
  guessNum.value="";//输入框清空
  guessNum.focus();//自动让输入框获得焦点
  alert("The number you guessed is too big, there's"+chance+" "+"chance(s) left");
}else if(guessNum.value<num){//如果太小
  chance--;//机会减1
  guessNum.value="";//输入框清空
  guessNum.focus();//自动让输入框获得焦点
  alert("The number you guessed is too small, there's"+chance+""+"chance(s) left");
}else{//如果猜对
  chance=5;//机会重新赋值，以便重新开始游戏
  document.getElementById("guessDiv").style.display="none";
  alert("Congratulations! You are right!");
}
}