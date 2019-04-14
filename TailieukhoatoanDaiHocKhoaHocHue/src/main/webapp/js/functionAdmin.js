/**
 * 
 */
 
 $(function () {
	      $("#btnRegister").click(function () {
	    	  $('form[name=actionFunction]').attr('action','functionRegister');
	    	  $('form[name=actionFunction]').submit();
	          
	      });
	  });
 $(function () {
	    $('button[id=btnDisplayPopup]').click(function () {
	        var title = "Xác Nhận Sửa";
	        var body = "Bạn có chắc chắn thực hiện chức năng này ?";
	
	        $("#MyPopup .modal-title").html(title);
	        $("#MyPopup .modal-body").html(body);
	        $("#MyPopup").modal("show");
		 });
	        $("#btnClosePopup").click(function () {
	            $("#MyPopup").modal("hide");
	        });
	             
	        $("#btnConfirmPopup").click(function () {	      	     
	         	  $('form[name=actionFunction]').submit();
	            $("#MyPopup").modal("hide");	            
	        });
	    });
 $(function () {
	    $('button[id=btnDelete]').click(function () {
	        var title = "Xác Nhận Xóa";
	        var body = "Bạn có chắc chắn thực hiện chức năng này ?";	
	        $("#MyPopup1.modal-title").html(title);
	        $("#MyPopup1.modal-body").html(body);
	        $("#MyPopup1").modal("show");
		 });
	        $("#btnClosePopup1").click(function () {
	            $("#MyPopup1").modal("hide");
	        });	             
	        $("#btnConfirmPopup1").click(function () {
	      	      $('form[name=actionFunction]').attr('action','functionDelete');
	         	  $('form[name=actionFunction]').submit();
	            $("#MyPopup1").modal("hide");
	            
	        });
	    });
 $(function () {
	  $('input[id="btnSearch"]').click(function () {
   	  
   	  $('form[name=searchInput]').submit();
         
     });
 });
 
