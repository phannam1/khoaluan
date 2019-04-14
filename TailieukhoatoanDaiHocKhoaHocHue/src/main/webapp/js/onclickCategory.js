/**
 * 
 */
function clickCategory(id,name,createdBy,updatedBy,createdTime,updatedTime){
	document.getElementById('inputCategoryId').value = id;
	document.getElementById('ten').value = name;	
	document.getElementById('createdUsername').innerHTML = createdBy;
	document.getElementById("lasUserName").innerHTML = updatedBy;
	 document.getElementById("createdTime").innerHTML = createdTime;
	 document.getElementById("lasDate").innerHTML = updatedTime;


	 document.getElementById("an2").style.display = 'block';
	 document.getElementById("an3").style.display = 'block';
	 document.getElementById("an4").style.display = 'block';
	 document.getElementById("an5").style.display = 'block';
}