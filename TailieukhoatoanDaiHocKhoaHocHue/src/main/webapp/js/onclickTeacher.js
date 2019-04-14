/**
 * 
 */
function onclickTeacher(id,name,address,phone,email,createdBy,updatedBy,createdTime,updatedTime){
	document.getElementById('inputTeacherId').value = id;
	document.getElementById('ten').value = name;	
	document.getElementById('address').value = address;	
	document.getElementById('phone').value = phone;	
	document.getElementById('email').value = email;	
	document.getElementById('createdUsername').innerHTML = createdBy;
	document.getElementById("lasUserName").innerHTML = updatedBy;
	 document.getElementById("createdTime").innerHTML = createdTime;
	 document.getElementById("lasDate").innerHTML = updatedTime;


	 document.getElementById("an2").style.display = 'block';
	 document.getElementById("an3").style.display = 'block';
	 document.getElementById("an4").style.display = 'block';
	 document.getElementById("an5").style.display = 'block';
}