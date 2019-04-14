/**
 * 
 */

 $(function () {
      $("#btnDelete").click(function () {
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
    	  $('form[name=acctionMajor]').attr('action','deleteMajor');
    	  $('form[name=acctionMajor]').submit();
          $("#MyPopup").modal("hide");
          
      });
  });
  $(function () {
      $("#btnRegister").click(function () {
    	  $('form[name=acctionMajor]').attr('action','createMajor');
    	  $('form[name=acctionMajor]').submit();
          
      });
  })

  $(function () {
      $("#btnUpdate").click(function () {
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
    	  $('form[name=acctionMajor]').attr('action','updateMajor'); 
    	  $('form[name=acctionMajor]').submit();
          $("#MyPopup1").modal("hide");
          
      });
  });