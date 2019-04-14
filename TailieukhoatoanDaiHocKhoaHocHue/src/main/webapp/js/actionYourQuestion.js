/**
 * 
 */

 $(function () {
      $("#btnShowPopup").click(function () {
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
    	  $('form[name=actionYourQuestion]').attr('action','deleteYourQuestion');
    	  $('form[name=actionYourQuestion]').submit();
          $("#MyPopup").modal("hide");
          
      });
  });
  $(function () {
      $("#btnRegister").click(function () {
    	  $('form[name=actionYourQuestion]').attr('action','createYourQuestion');
    	  $('form[name=actionYourQuestion]').submit();
          
      });
  })

  $(function () {
      $("#btnDisplayPopup").click(function () {
          var title = "Xác Nhận";
          var body = "Bạn có chắc chắn thực hiện chức năng này ?";

          $("#MyPopup1 .modal-title").html(title);
          $("#MyPopup1 .modal-body").html(body);
          $("#MyPopup1").modal("show");
      });

      $("#btnClosePopup1").click(function () {
          $("#MyPopup1").modal("hide");
      });
           
      $("#btnConfirmPopup1").click(function () {
    	  $('form[name=actionYourQuestion]').attr('action','updateYourQuestion'); 
    	  $('form[name=actionYourQuestion]').submit();
          $("#MyPopup1").modal("hide");
          
      });
  });