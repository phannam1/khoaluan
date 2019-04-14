/**
 * 
 */
function getValueRole(userName,nameRole,des,lasUserName,createDate,lasDate){	
	document.getElementById('taikhoan').value = userName;
	  document.getElementById('mota').innerHTML = des;
	  document.getElementById('chooseRole').value = nameRole;
	  document.getElementById('btnUpdate').style.display = 'block';
	  document.getElementById('lasUserName').innerHTML = lasUserName;
	  document.getElementById('createDate').innerHTML = createDate;
	  document.getElementById('lasDate').innerHTML = lasDate;
	  document.getElementById('an1').style.display = 'block';
	  document.getElementById('an2').style.display = 'block';
	  document.getElementById('an3').style.display = 'block';
  }
