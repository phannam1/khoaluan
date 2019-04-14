/**
 * 
 */
  

function myFunction() {
 document.getElementById("error").style.display = 'none';
}
function clickQuestion(id,quesName,number,time,lasDate){
	document.getElementById('quesId').value =id;
	document.getElementById('content').value =quesName;
	document.getElementById('number').innerHTML =number;
	document.getElementById('createDate').innerHTML =time;
	document.getElementById('lasDate').innerHTML =lasDate;
	document.getElementById('an2').style.display ='block';
	document.getElementById('an3').style.display ='block';
	document.getElementById('an4').style.display ='block';
	document.getElementById('an5').style.display ='block';
	
	
}