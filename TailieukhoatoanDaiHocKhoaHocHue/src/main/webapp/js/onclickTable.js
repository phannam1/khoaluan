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
function getValueAccount(id,userName,name,phone,address,email,isActive,lasUserName,createDate,lasDate){	
	document.getElementById('accountId').value = id;
	  document.getElementById('taikhoan').innerHTML = userName;
	  document.getElementById('ten').innerHTML = name;
	  document.getElementById('dienthoai').innerHTML = phone;
	  document.getElementById('diachi').innerHTML = address;
	  document.getElementById('email').innerHTML = email;
	  document.getElementById('hoatdong').innerHTML = isActive;
	  document.getElementById('lasUserName').innerHTML = lasUserName;
	  document.getElementById('createDate').innerHTML = createDate;
	  document.getElementById('lasDate').innerHTML = lasDate;
	  document.getElementById('clickhien4').style.display = 'block';
	  
	  var active = $('#hoatdong').val();
		if(active == 1){
			 $('#hoatdong').attr("checked","checked");
			
			 
		}else{
			 $('#hoatdong').removeAttr("checked");
			
		}
  }
