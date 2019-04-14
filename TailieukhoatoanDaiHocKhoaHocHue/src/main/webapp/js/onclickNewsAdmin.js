/**
 * 
 */
function onclickNews(id,title,content,createdUsername,lasUserName,createdDate,lasDate){
	document.getElementById('idNews').value = id;
	document.getElementById('tieude').value = title;	
	document.getElementById('noidung').value = content;
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