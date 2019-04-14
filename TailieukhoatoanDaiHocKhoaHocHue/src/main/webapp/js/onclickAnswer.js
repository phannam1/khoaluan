function ClickOpenModel (content,id) {
	document.getElementById("answerId").value = id;	
	document.getElementById("areaAnswer").value = content;	
          var title = "Nội dung";
          var body = "Bạn có chắc chắn thực hiện chức năng này ?";

          $("#MyPopup .modal-title").html(title);
          $("#MyPopup .modal-body").html(body);
          $("#MyPopup").modal("show");
      

      $("#btnClosePopup").click(function () {
          $("#MyPopup").modal("hide");
      });
           
      $("#btnConfirmPopup").click(function () {
    	  $('form[name=actionAnswer]').submit();
          $("#MyPopup").modal("hide");
         
      });
  }
function ClickOpenModel1 (id) {
	document.getElementById("answerId1").value = id;	
        var title = "Xác Nhận";
        var body = "Bạn có chắc chắn thực hiện chức năng này ?";

        $("#MyPopup1 .modal-title").html(title);
        $("#MyPopup1 .modal-body").html(body);
        $("#MyPopup1").modal("show");
 

    $("#btnClosePopup1").click(function () {
        $("#MyPopup1").modal("hide");
    });
         
    $("#btnConfirmPopup1").click(function () {
  	 
  	  $('form[name=deleteAnswer]').submit();
        $("#MyPopup1").modal("hide");
        
    });
}
