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
  function myFunction(val){
	  if(document.getElementById(val).checked){
		  list.push(val);
	  }
	  else{
		  for(var i = 0 ;i<list.length ;i++){
			  if(val == list[i]){
				  list.splice(i, 1); 
			  }
		  }
	  }
	  
	  console.log(list.valueOf());
  };
function getValueDocument(id,nameDocument,major,semester,subject,courseCredit,nameTeacher,isShow,lasUserName,createDate,lasDate){
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
	}
	document.getElementById("lasUserName").innerHTML = lasUserName;
	document.getElementById("createDate").innerHTML = createDate;
	document.getElementById("lasDate").innerHTML = lasDate;
	document.getElementById("clickhien").style.display = 'block';
	document.getElementById("clickhien1").style.display = 'block';
	
}
$(function () {
    $('input[id=btnDisplayPopup]').click(function () {
        var title = "Xác Nhận";
        var body = "Bạn có chắc chắn thực hiện chức năng này ?";

        $("#MyPopup .modal-title").html(title);
        $("#MyPopup .modal-body").html(body);
        $("#MyPopup").modal("show");
    });

    $("#btnClosePopup").click(function () {
        $("#MyPopup").modal("hide");
    });
         
    $("#btnConfirmPopup").click(function () {
  	
  	  $('form[name=acctionDocumentUpdate]').submit();
        $("#MyPopup").modal("hide");
        
    });
});