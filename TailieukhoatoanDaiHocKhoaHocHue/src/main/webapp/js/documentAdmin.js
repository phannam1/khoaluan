/**
 * 
 */
var list = [];
  $(document).ready(function(){
	  jQuery(".isActive").each(function(){
		   if(jQuery(this).val()==1){
			   jQuery(this).attr("checked","checked");
			  list.push(jQuery(this).attr("name"));			  
			  
			  
			  
		   }	  
		  });
               
          });
  /**
   * 
   */
  $(document).ready(function(){
  	  jQuery(".btnLock").each(function(){
  		   if(jQuery(this).val()==1){	  
  			  
  			   jQuery(this).show();
  			  
  		   }	  
  		  });
                 
            });
  $(document).ready(function(){
  	  jQuery(".btnOpen").each(function(){
  		   if(jQuery(this).val()==0){	   			  
  			   jQuery(this).show();  			  
  		   }	  
  		  });
               
          });
//  function myFunction(val){
//	  if(document.getElementById(val).checked){
//		  list.push(val);
//	  }
//	  else{
//		  for(var i = 0 ;i<list.length ;i++){
//			  if(val == list[i]){
//				  list.splice(i, 1); 
//			  }
//		  }
//	  }
//	  
//	  console.log(list.valueOf());
//  };
function getValueDocument(id,nameDocument,major,semester,subject,courseCredit,nameTeacher,isShow,createUerName,lasUserName,createDate,lasDate,link){
	document.getElementById("documentId").value = id;
	document.getElementById("nameDocument").value = nameDocument;
	document.getElementById("major").value = major;
	document.getElementById("semester").value = semester;
	document.getElementById("subject").value = subject;
	document.getElementById("courseCredit").value = courseCredit;
	document.getElementById("nameTeacher").value = nameTeacher;	
	document.getElementById("isShow").value = isShow;
	var active = $('#isShow').val();
	if(active == 1){
		 $('#isShow').attr("checked","checked");
		 $('#nameDocument').attr("readonly","readonly");
		 $('#major').attr("readonly","readonly");
		 $('#semester').attr("readonly","readonly");
		 $('#subject').attr("readonly","readonly");
		 $('#courseCredit').attr("disabled",true);
		 $('#nameTeacher').attr("readonly","readonly");
		 document.getElementById("btnUpdate").style.display = 'none';
		 document.getElementById("thongbao").style.display = 'block';
		 document.getElementById("btnDelete").style.display = 'block';
		
	}else{
		 $('#isShow').removeAttr("checked");
		 $('#nameDocument').removeAttr("readonly");
		 $('#major').removeAttr("readonly");
		 $('#semester').removeAttr("readonly");
		 $('#subject').removeAttr("readonly");
		 $('#courseCredit').attr("disabled",false);
		 $('#nameTeacher').removeAttr("readonly");
		 document.getElementById("btnUpdate").style.display = 'block';
		 document.getElementById("thongbao").style.display = 'none';
		 document.getElementById("btnDelete").style.display = 'block'; 
	}
	document.getElementById("createUserName").innerHTML = createUerName;
	document.getElementById("lasUserName").innerHTML = lasUserName;
	document.getElementById("createDate").innerHTML = createDate;
	document.getElementById("lasDate").innerHTML = lasDate;
	 $('#viewDocument').attr("href",link);
	 
	document.getElementById("row1").style.display = 'block'; 
	document.getElementById("viewsDo").style.display = 'block'; 
	document.getElementById("row2").style.display = 'block'; 
}