var num=Math.floor(Math.random() * 100) + 1;
var chance=5;

function showGame(){
document.getElementById("guessDiv").style.display="block";
document.getElementById("guessNum").focus();
}

function guessNum(){
var guessNum=document.getElementById("guessNum")
if(guessNum.value>num){
  chance--;
  guessNum.value="";
  guessNum.focus();
  alert("The number you guessed is too big, there's "+chance+" chance(s) left.");
}
else if(guessNum.value<num){
  chance--;
  guessNum.value="";
  guessNum.focus();
  alert("The number you guessed is too small, there's "+chance+" chance(s) left");
}
else if(guessNum.value=num){
  alert("Congratulations! You are right!");
}
}