//Overview
var currentTextInput;
var puzzelArrayData;

//Loads the Crossword
function initializeScreen(){
	var puzzelTable = document.getElementById("puzzle");
	puzzelArrayData = preparePuzzelArray();
	for ( var i = 0; i < puzzelArrayData.length ; i++ ) {
		var row = puzzelTable.insertRow(-1);
		var rowData = puzzelArrayData[i];
		for(var j = 0 ; j < rowData.length ; j++){
			var cell = row.insertCell(-1);
			if(rowData[j] != 0){
				var txtID = String('txt' + '_' + i + '_' + j);
				cell.innerHTML = '<input type="text" class="inputBox" maxlength="1" style="text-transform: uppercase" ' + 'id="' + txtID + '" onfocus="textInputFocus(' + "'" + txtID + "'"+ ')">';
			}else{
				cell.style.backgroundColor  = "#B6B6B4";
			}
		}
	}
	addHint();
}
//Adds the hint numbers
function addHint(){
	document.getElementById("txt_0_5").placeholder = "1";
	document.getElementById("txt_0_6").placeholder = "2";
	document.getElementById("txt_1_0").placeholder = "3";
	document.getElementById("txt_1_4").placeholder = "4";
	document.getElementById("txt_2_9").placeholder = "5";
	document.getElementById("txt_3_3").placeholder = "6";
	document.getElementById("txt_6_11").placeholder = "7";
	document.getElementById("txt_7_4").placeholder = "8";
	document.getElementById("txt_8_14").placeholder = "9";
	document.getElementById("txt_10_7").placeholder = "10";
	document.getElementById("txt_11_1").placeholder = "11";
	document.getElementById("txt_12_10").placeholder = "12";

}
//Stores ID of the selected cell into currentTextInput
function textInputFocus(txtID123){
	currentTextInput = txtID123;
}
//Returns Array
function preparePuzzelArray(){
var items = [	[0, 0, 0, 0, 0, 'd', 'o', 'l', 'l', 'a', 'r',0, 0, 0, 0],
				['I', 'n', 'u', 'i', 't',0, 't', 0, 0, 0, 0, 0, 0, 0, 0],
				[0, 0, 0, 0, 'e', 0, 't', 0, 0, 'T', 0, 0, 0, 0, 0],
				[0, 0, 0, 'O', 'n', 't', 'a', 'r', 'i', 'o', 0, 0, 0, 0, 0],
				[0, 0, 0, 0, 0, 0, 'w', 0, 0, 'r', 0, 0, 0, 0, 0],
				[0, 0, 0, 0, 0, 0, 'a', 0, 0, 'o', 0, 0, 0, 0, 0],
				[0, 0, 0, 0, 0, 0, 0, 0, 0, 'n', 0, 'B', 0, 0, 0],
				[0, 0, 0, 0, 'm', 'i', 'n', 'i', 's', 't', 'e', 'r', 0, 0, 0],
				[0, 0, 0, 0, 'a', 0, 0, 0, 0, 'o', 0, 'i', 0, 0, 'Q'],
				[0, 0, 0, 0, 'p', 0, 0, 0, 0, 0, 0,'t',0, 0, 'u'],
				[0, 0, 0, 0, 'l', 0, 0, 'A', 'r', 'c', 't', 'i', 'c', 0, 'e'],
				[0, 'l', 'a', 'k', 'e', 's', 0, 0, 0, 0, 0, 's', 0, 0, 'b'],
				[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'w', 'h', 'i', 't', 'e'],
				[0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'e'],
			];
return items;
}
//Clear All Button
function clearAllClicked(){
	currentTextInput = '';
	var puzzelTable = document.getElementById("puzzle");
	puzzelTable.innerHTML = '';
    initializeScreen();
}
//Check Button
function checkClicked(){
	for ( var i = 0; i < puzzelArrayData.length ; i++ ) {
		var rowData = puzzelArrayData[i];
		for(var j = 0 ; j < rowData.length ; j++){
			if(rowData[j] != 0){
				var selectedInputTextElement = document.getElementById('txt' + '_' + i + '_' + j);
				if(selectedInputTextElement.value != puzzelArrayData[i][j]){
					selectedInputTextElement.style.backgroundColor = 'white';
					
				}else{
					selectedInputTextElement.style.backgroundColor = '#ECC5C0';
				}
			}
		}
	}
}
//Clue Button
function clueClicked(){
	if (currentTextInput != null){
		var temp1 = currentTextInput;
		var token = temp1.split("_");
		var row = token[1];
		var column = token[2];
		document.getElementById(temp1).value = puzzelArrayData[row][column];
	}
}
//Solve Button
function solveClicked(){
	if (currentTextInput != null){
		var temp1 = currentTextInput;
		var token = temp1.split("_");
		var row = token[1];
		var column = token[2];
		
		// Print elements on top
		for(j = row; j >= 0; j--){
			if(puzzelArrayData[j][column] != 0){
				document.getElementById('txt' + '_' + j + '_' + column).value = puzzelArrayData[j][column];
				}else break;
		}
		// Print elements on right
		for(i = column; i< puzzelArrayData[row].length; i++){
			if(puzzelArrayData[row][i] != 0){
				document.getElementById('txt' + '_' + row + '_' + i).value = puzzelArrayData[row][i];
				}else break;
		}
		
		// Print elements below
		for(m = row; m< puzzelArrayData.length; m++){
			if(puzzelArrayData[m][column] != 0){
				document.getElementById('txt' + '_' + m + '_' + column).value = puzzelArrayData[m][column];
				}else break;
		}
		// Print elements on left
		for(k = column; k >= 0; k--){
			if(puzzelArrayData[row][k] != 0){
				document.getElementById('txt' + '_' + row + '_' + k).value = puzzelArrayData[row][k];
				}else break;
		}
	}
}