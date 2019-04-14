/**
 * 
 */
function getRoleFunction(quyen,roleFunctionId,functionName,description,createdUsername,lasUserName,createdDate,lasDate){
	
	document.getElementById('chooseRoleFunction').value = quyen;
	document.getElementById('roleFunctionId').value = roleFunctionId;
	document.getElementById('nhap').value = functionName;
	document.getElementById('mota').value = description;
	document.getElementById("createdUsername").innerHTML = createdUsername;
	 document.getElementById("lasUserName").innerHTML = lasUserName;
	 document.getElementById("createdDate").innerHTML = createdDate;
	 document.getElementById("lasDate").innerHTML = lasDate;
	 document.getElementById("an1").style.display = 'block';
	 document.getElementById("an2").style.display = 'block';
	 document.getElementById("an3").style.display = 'block';
	 document.getElementById("an4").style.display = 'block';
	 document.getElementById("an5").style.display = 'block';
}