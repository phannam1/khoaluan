<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ page isELIgnored="false"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Adminnitrator</title>
<link rel="shortcut icon" href="img/C.PNG" type="image/x-icon">
<link rel="stylesheet" type="text/css" href="css/admin.css" />
<link href='http://fonts.googleapis.com/css?family=Belgrano'
	rel='stylesheet' type='text/css' />
<!-- jQuery file -->
<script src="js/jquery.min1.js"></script>
<script src="js/onclickCategory.js"></script>
<script src="js/btnClickCategory.js"></script>
<!-- Font awesome -->
<link href="css/font-awesome.css" rel="stylesheet" />
<!-- Bootstrap -->
<link href="css/bootstrap.css" rel="stylesheet" />
<!-- slick slider -->
<script src="js/jquery.tabify.js" type="text/javascript" charset="utf-8"></script>
<!-- Font awesome -->
<link href="css/font-awesome.css" rel="stylesheet" />
<script type="text/javascript" src="js/paginationCategory.js"></script>
<!-- Bootstrap -->
<link href="css/bootstrap.css" rel="stylesheet" />
<!-- slick slider -->


<script type="text/javascript"
	src='https://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.3.min.js'></script>
<script type="text/javascript"
	src='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/js/bootstrap.min.js'></script>
<link rel="stylesheet"
	href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.0.3/css/bootstrap.min.css'
	media="screen" />
<link rel="stylesheet"
	href='https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css'
	media="screen" />

<script type="text/javascript"
	src='https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js'></script>
</head>
<body>
	<div id="panelwrap">

		<div class="header">
			<div class="title">Trang Quản Lý</div>

			<div class="header_right">
				Xin Chào : ${account.userName}, <a
					href="<%=request.getContextPath()%>/index" class="logout"><i
					class="fa fa-sign-out" aria-hidden="true"></i>Thoát</a>
			</div>

			<div class="menu">
				<ul>
					<li><a href="indexAdmin">Trang Chủ</a></li>
					<li><a href="accountAdmin">Người dùng</a></li>
					<li><a href="roleAdmin">Quyền người dùng</a></li>
					<li><a href="functionAdmin" >Chức năng</a></li>
					<li><a href="roleFunctionAdmin">Chức năng của quyền</a></li>
					<li><a href="documentAdmin">Tài liệu</a></li>
					<li><a href="majorAdmin">Ngành học</a></li>
					<li><a href="categoryAdmin" class="selected">Chuyên ngành</a></li>
						<li><a href="teacherAdmin" >Giảng Viên</a></li>
						<li><a href="subjectAdmin" >Môn học</a></li>
					<li><a href="questionAdmin" >Câu hỏi</a></li>
					
					<li><a href="newsAdmin">Tin tức</a></li>
					<li><a href="helpAdmin">Trợ giúp</a></li>
				</ul>
			</div>

		</div>

		<ul class="tabsmenu">
			<li class="active">
				<!-- <form name="searchInput" method="post" action="searchInputFunction">
					<div>
						<div>
							<input id="btnSearch" type="button" class="form_submit"
								value="Tìm Kiếm" />

						</div>
						<div>
							<input id="valueInputSearch" type="text" class="form_input"
								name="valueInput" value="" />
						</div>


					</div>
				</form> -->
			</li>
			<li class="active"><a>Thông Tin chuyên ngành</a></li>

		</ul>
		<div class="tabcontent">
			<form name="acctionCategory" method="post"
			>
				<div class="form">

					<input id='inputCategoryId' style="width: 500px; display: none"
						type="text" class="form_input" name="categoryId" value="" />

					<div class="row">
						<div class="col-sm-6">
							<div class="col-sm-4">
								<label>Tên Chuyên ngành:</label>
							</div>

							<div class="col-sm-8">
								<input id='ten' type="text" class="form_input"
									name="categoryName" value="" />
							</div>
						</div>
						<div class="col-sm-6" >
							
						</div>
					</div>
					<div class="row"  id="an2" style="display: none">
						<div class="col-sm-6">
							<div class="col-sm-4">
								<label>Người tạo:</label>
							</div>

							<div class="col-sm-8">
								<label><div id="createdUsername"
										style="font-weight: normal;"></div></label>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="col-sm-4">
								<label>Người sửa cuối cùng:</label>
							</div>

							<div class="col-sm-8">
								<label><div id="lasUserName"
										style="font-weight: normal;"></div></label>
							</div>
						</div>
					</div>
					<div class="row" id="an3" style="display: none">
						<div class="col-sm-6">
							<div class="col-sm-4">
								<label>Ngày tạo:</label>
							</div>

							<div class="col-sm-8">
								<label><div id="createdTime"
										style="font-weight: normal;"></div></label>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="col-sm-4">
								<label>Ngày sửa cuối cùng:</label>
							</div>

							<div class="col-sm-8">
								<label><div id="lasDate" style="font-weight: normal;"></div></label>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-6"></div>
						<div class="col-sm-6">
							<div class="col-sm-2">
								<button id="btnRegister" type="button" class="btn btn-success"
									value="" >Thêm Mới</button>
							</div>

							<div class="col-sm-2" id="an4" style="display: none">
								<button type="button" id="btnUpdate" class="btn btn-info"
									value="" >Chỉnh Sửa</button>
							</div>
							<div class="col-sm-2" id="an5" style="display: none">
								<button style="margin-right: 40px" id="btnDelete" type="button"
									class="btn btn-danger"  >Xóa</button>
							</div>


						</div>
					</div>

				</div>
				
				
			</form>

			<div class="clear"></div>
		</div>


		<div class="center_content">

			<div id="right_wrap">
				<div id="right_content">
					<h2>Bảng Người Dùng</h2>


					<div class="container-fluid">
						<div class="col-md-12">
							<table id="dataTable29" class="table table-bordered"
								>
								<thead>
									<tr>
									<th>ID</th>
										<th>Chuyên ngành</th>							
										<th>Người tạo</th>
										<th>Người sửa cuối cùng</th>
										<th>Ngày tạo</th>
										<th>Ngày sửa cuối cùng</th>
									</tr>
								</thead>
								<tfoot>
									<tr>
									<th>ID</th>
										<th>Chuyên ngành</th>							
										<th>Người tạo</th>
										<th>Người sửa cuối cùng</th>
										<th>Ngày tạo</th>
										<th>Ngày sửa cuối cùng</th>
									</tr>
									<tr>
										<td colspan="12">Trang quản lý của Admin!</td>
									</tr>
								</tfoot>
								<tbody>
									<c:forEach items="${list}" var="list">
										<tr class="odd"
											onclick="clickCategory('${list.idCategory }','${list.nameCategory }','${list.createdBy }','${list.updatedBy }','${list.createdTime}','${list.updatedTime}')">
											<td>${list.idCategory }</td>
											<td>${list.nameCategory }</td>
											<td>${list.createdBy }</td>
											<td>${list.updatedBy }</td>
											<td>${list.createdTime}</td>
											<td>${list.updatedTime}</td>
											
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
					



				</div>
			</div>

			<div class="clear"></div>
		</div>
		<!--end of center_content-->

		<div class="footer">
			Designed by <a href="https://www.facebook.com/PhanNam2433"
				target="_blank">PTN</a>
		</div>

	</div>
<!-- Modal Popup -->
					<div id="MyPopup" class="modal fade" role="dialog">
						<div class="modal-dialog">
							<!-- Modal content-->
							<div class="modal-content">
								<div class="modal-header">
									<h4 class="modal-title"></h4>
									<button type="button" class="close" data-dismiss="modal">
										&times;</button>
								</div>
								<div class="modal-body"></div>
								<div class="modal-footer">
									<input type="button" id="btnConfirmPopup" value="Xác Nhận"
										class="btn btn-danger" /> <input type="button"
										id="btnClosePopup" value="Close" class="btn btn-danger" />
								</div>
							</div>
						</div>
					</div>
					<!-- end popup -->
					<!-- Modal Popup -->
					<div id="MyPopup1" class="modal fade" role="dialog">
						<div class="modal-dialog">
							<!-- Modal content-->
							<div class="modal-content">
								<div class="modal-header">
									<h4 class="modal-title">Xác nhận Xóa</h4>
									<button type="button" class="close" data-dismiss="modal">
										&times;</button>
								</div>
								<div class="modal-body">Bạn có chắc chắn thực hiện chức
									năng này ?</div>
								<div class="modal-footer">
									<input type="button" id="btnConfirmPopup1" value="Xác Nhận"
										class="btn btn-danger" /> <input type="button"
										id="btnClosePopup1" value="Close" class="btn btn-danger" />
								</div>
							</div>
						</div>
					</div>
					<!-- end popup -->

</body>
</html>