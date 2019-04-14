<!DOCTYPE html >
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ page isELIgnored="false"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css">
<title>Adminnitrator</title>
<link rel="stylesheet" type="text/css" href="css/admin.css" />
<link href='http://fonts.googleapis.com/css?family=Belgrano'
	rel='stylesheet' type='text/css' />
<!-- jQuery file -->
<script src="js/jquery.min1.js"></script>
<script src="js/accountAdmin.js"></script>
<script src="js/onclickTable.js"></script>
<script src="js/paginationAdmin.js"></script>

<link href="css/font-awesome.css" rel="stylesheet">
<!-- Bootstrap -->
<link href="css/bootstrap.css" rel="stylesheet">
<script src="js/jquery.tabify.js" type="text/javascript" charset="utf-8"></script>
<!-- Font awesome -->
<link href="css/font-awesome.css" rel="stylesheet" />

<!-- Bootstrap -->
<link href="css/bootstrap.css" rel="stylesheet" />
<!-- slick slider -->
<link rel="shortcut icon" href="img/T.PNG" type="image/x-icon">

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
					<li><a href="accountAdmin" class="selected">Người dùng</a></li>
					<li><a href="roleAdmin">Quyền người dùng</a></li>
					<li><a href="functionAdmin">Chức năng</a></li>
					<li><a href="roleFunctionAdmin">Chức năng của quyền</a></li>
					<li><a href="documentAdmin">Tài liệu</a></li>
					<li><a href="majorAdmin">Ngành học</a></li>
					
						<li><a href="categoryAdmin" >Chuyên ngành</a></li>
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
				<form name="searchInput" method="post" action="searchInput">
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
				</form>
			</li>

			<li class="active"><a>Thông Tin người dùng</a></li>


		</ul>
		<div class="tabcontent">
			<form name="acctionEventUpdate" method="post"
				action="updateActiveDelete">
				<div class="form">
				<input style="display: none" id="accountId" name="accountId" value="">
					<div class="row">
						<div class="col-sm-6">
							<div class="col-sm-4">
								<label>Tài khoản:</label>
							</div>
							
							<div class="col-sm-8" ><label ><div id="taikhoan" style="font-weight: normal;" name="userName"></div></label>
					</div>
						</div>
						<div class="col-sm-6">
							<div class="col-sm-4">
								<label>Tên:</label>
							</div>
							
							<div class="col-sm-8" ><label ><div id="ten" style="font-weight: normal;"></div></label>
					</div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-6">
							<div class="col-sm-4">
								<label>Điện thoại:</label>
							</div>
							
							<div class="col-sm-8" ><label ><div id="dienthoai" style="font-weight: normal;"></div></label>
					</div>
						</div>
						<div class="col-sm-6">
							<div class="col-sm-4">
								<label>Địa chỉ:</label>
							</div>
							
							<div class="col-sm-8" ><label ><div id="diachi" style="font-weight: normal;"></div></label>
					</div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-6">
							<div class="col-sm-4">
								<label>Email:</label>
							</div>
							
							<div class="col-sm-8" ><label ><div id="email" style="font-weight: normal;"></div></label>
					</div>
						</div>
						<div class="col-sm-6">
							<div class="col-sm-4">
								<label>Đã phê duyệt:</label>
							</div>
							<div class="col-sm-8">
								<input id="hoatdong" class="isActive"
									style="width: 30px; height:30px;" type="checkbox"
									class="form_input" name="isActive" value="" disabled="disabled"/>
							</div>
						</div>
					</div>
<div class="row">
				<div class="col-sm-6" >
						
					</div>
					<div class="col-sm-6"id="clickhien1" >
						<div class="col-sm-4" ><label>Người sửa cuối cùng :</label></div>
						
							<div class="col-sm-8" ><label ><div id="lasUserName" style="font-weight: normal;"></div></label>
					</div>
					</div>
					

					
				</div>
				<div class="row" id="clickhien" >
					<div class="col-sm-6" >
						<div class="col-sm-4" ><label>Ngày tạo:</label></div>
						
							<div class="col-sm-8" ><label ><div id="createDate" style="font-weight: normal;"></div></label>
					</div>
					</div>
					<div class="col-sm-6" >
					<div class="col-sm-4" ><label>Ngày sửa cuối cùng:</label></div>
						
							<div class="col-sm-8" ><label ><div id="lasDate" style="font-weight: normal;"></div></label>
					</div>
					</div>
				</div>
					<div class="row">
						
						<div class="col-sm-6" ></div>
					<div class="col-sm-6">
					<div class="col-sm-4" ></div>
						<div class="col-sm-6"  id="clickhien4" style="display:none ">
							<button type="button" id="btnShowPopup" class="btn btn-danger"
								value="" >Xóa tài khoản</button>

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
							<table id="dataTable0"
								class="table table-bordered"
								cellspacing="0" width="100%">
								<thead>
								
									<tr>

										<th>Tài khoản</th>
										<th>Tên</th>
										<th>Điện thoại</th>
										<th>Địa chỉ</th>
										<th>Email</th>
										<th>Đã phê duyệt</th>
										<th>Người sửa cuối cùng</th>
										<th>Ngày tạo</th>
										<th>Ngày sửa cuối cùng</th>
										<th>Chỉnh sửa</th>
									</tr>
								</thead>
								<tfoot>
									<tr>

										<th>Tài khoản</th>
										<th>Tên</th>
										<th>Điện thoại</th>
										<th>Địa chỉ</th>
										<th>Email</th>
										<th>Đã phê duyệt</th>
										<th>Người sửa cuối cùng</th>
										<th>creationDate</th>
										<th>lastModifiedDate</th>
										<th>Chỉnh sửa</th>
									</tr>
									<tr>
								<td colspan="12">Trang quản lý của Admin!</td>
							</tr>
								</tfoot>
								<tbody>
									<c:forEach items="${list}" var="account">

										<tr
										
											onclick="getValueAccount('${account.accountId}','${account.userName}','${account.name}','${account.phone}','${account.address}','${account.email}','${account.isActive }','${account.lasUserName}','${account.creationDate}','${account.lastModifiedDate}')">

											<td><a style="color: #0291d4;">${account.userName}
											</a></td>
											<td>${account.name}</td>
											<td>${account.phone}</td>
											<td>${account.address}</td>
											<td>${account.email}</td>
											<td><input class="isActive" type="checkbox"
												name="${account.userName}" value="${account.isActive } "
												onchange="myFunction(this.name)" id="${account.userName}"
												disabled /></td>
											<td>${account.lasUserName}</td>
											<td>${account.creationDate}</td>
											<td>${account.lastModifiedDate}</td>
											<td  >
									<div  class="duyethien"  ><button style="display: none;" value="${account.isActive }"  id="btnduyet" class="btnLock btn btn-danger" >
							<a href="<%=request.getContextPath()%>/LockAccount?accountId=${account.accountId}" style="color:#fff;text-decoration: none ">Khóa tài khoản</a></button></div>
							<div class="duyetan" ><button style="display: none ;width: 117px;" value="${account.isActive }" id="btnKhoa" class="btnOpen btn btn-primary" name = "">
							<a href="<%=request.getContextPath()%>/approvedAccount?accountId=${account.accountId}" style="color:#fff;text-decoration: none ">Phê duyệt</a></button></div></td>						
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
						<h4 class="modal-title"></h4>
						<button type="button" class="close" data-dismiss="modal">
							&times;</button>
					</div>
					<div class="modal-body"></div>
					<div class="modal-footer">
						<input type="button" id="btnConfirmPopup1" value="Xác Nhận"
							class="btn btn-danger" /> <input type="button"
							id="btnClosePopup1" value="Close" class="btn btn-danger" />
					</div>
				</div>
			</div>
		</div>
		<!-- end popup -->

		<div class="footer">

			Designed by <a href="https://www.facebook.com/PhanNam2433"
				target="_blank">PTN</a>
		</div>

	</div>

	
</body>
</html>