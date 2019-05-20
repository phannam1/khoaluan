<!DOCTYPE html >
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ page isELIgnored="false"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>Adminnitrator</title>
<link rel="stylesheet" type="text/css" href="css/admin.css" />
<link href='http://fonts.googleapis.com/css?family=Belgrano'
	rel='stylesheet' type='text/css' />
<!-- jQuery file -->
<script src="js/jquery.min1.js"></script>
<script src="js/roleAdmin.js"></script>
<script src="js/onclickRole.js"></script>
<script src="js/panigationRole.js"></script>
<script src="js/jquery.tabify.js" type="text/javascript" charset="utf-8"></script>
<!-- Font awesome -->
<link href="css/font-awesome.css" rel="stylesheet" />
<!-- Bootstrap -->
<link href="css/bootstrap.css" rel="stylesheet" />
<!-- slick slider -->
<link rel="shortcut icon" href="img/C.PNG" type="image/x-icon">

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
					<li><a href="roleAdmin" class="selected">Quyền người dùng</a></li>
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
				<!-- <form name="searchInputRole" method="post" action="searchInputRole">
					<div>
						<div>
							<input id="btnSearchRole" type="button" class="form_submit"
								value="Tìm Kiếm" />

						</div>
						<div>
							<input id="valueInputSearch" type="text" class="form_input"
								name="valueInputSearch" value="" />
						</div>


					</div>
				</form> -->
			</li>
			<li class="active"><a>Thông Tin các quyền của người dùng</a></li>

		</ul>
		<div class="tabcontent">
			<form method="post" action="actionRole" name="actionRoleUpdate">
				<div class="form">

					<div class="row">
					<div class="col-sm-6" >
							<div class="col-sm-4" ><label>Nhập Tài Khoản:</label> </div>
							<div class="col-sm-8" >
							<input  id="taikhoan" 
							value="${role.userName}" id="nhap" required="required"
							class="form_input" name="chooseUserName" type="text" list="ide"
							onchange="myFunction(this.id)" />
						<p style="color: red; padding-left: 100px" id="error">${error}</p>
						<c:remove var="error" scope="session" />
						<datalist id="ide">
							<c:forEach items="${listRole}" var="role">
								<option value="${role.userName}">${role.userName}</option>
							</c:forEach>
						</datalist>
							</div>
						</div>
						<div class="col-sm-6" id="an1" style="display: none" >
						<div class="col-sm-4" ><label>Người sửa cuối cùng:</label></div>
							<div class="col-sm-8" ><label ><div id="lasUserName" style="font-weight: normal;"></div></label>
					</div>
					</div>
						
					</div>
					
					<div class="row">
					<div class="col-sm-6" >
						<div class="col-sm-4" ><label>Chọn quyền:</label></div>
							<div class="col-sm-8" ><select id="chooseRole" class="form_input"
							name="chooseRole">
							<option value="Admin">Admin</option>
							<option value="User">User</option>
						</select>
					</div>
					</div>
						<div class="col-sm-6" id="an2" style="display: none" >
						<div class="col-sm-4" ><label>Ngày tạo:</label></div>
							<div class="col-sm-8" ><label ><div id="createDate" style="font-weight: normal;"></div></label>
					</div>
					</div> 
					</div>
					<div class="row">
					<div class="col-sm-6" >
						<div class="col-sm-4" ><label>Mô tả :</label></div>
							
							<div class="col-sm-8" ><label ><div id="mota" style="font-weight: normal;"></div></label>
					</div>
					</div>
					
						<div class="col-sm-6" id="an3" style="display: none" >
						<div class="col-sm-4" ><label>Ngày sửa cuối cùng:</label></div>
							<div class="col-sm-8" ><label ><div id="lasDate" style="font-weight: normal;"></div></label>
					</div>
					</div>
						 
					</div>
					<div class="row">
					<div class="col-sm-6" >
						
					</div>
					<div class="col-sm-6" >
						<div class="col-md-6" id="btnUpdate" style="display: none;">
						<button style="margin-right: 17%" id="btnShowPopup" type="button" class="btn btn-info"
							value="" >Chỉnh Sửa</button>
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
							<table id="dataTable1"
								class="table table-bordered"
								cellspacing="0" width="100%">
								<thead>
									<tr>

										<th>Tài khoản</th>
										<th>Tên quyền</th>
										<th>Mô tả</th>
									
										<th>Người sửa cuối cùng</th>
										<th>Ngày tạo</th>
										<th>Ngày sửa cuối cùng</th>
									</tr>
								</thead>
								<tfoot>
									<tr>

										<th>Tài khoản</th>
										<th>Tên quyền</th>
										<th>Mô tả</th>
									
										<th>Người sửa cuối cùng</th>
										<th>Ngày tạo</th>
										<th>Ngày sửa cuối cùng</th>
									</tr>
									<tr>
										<td colspan="12">Trang quản lý của Admin!</td>
									</tr>
								</tfoot>
								<tbody>
									<c:forEach items="${listRole}" var="role">
										<tr class="odd"
											onclick="getValueRole('${role.userName}','${role.roleName}','${role.description}','${role.lasUserName}','${role.creationDate}','${role.lastModifiedDate}')">
											<td><a>${role.userName}</a></td>
											<td>${role.roleName}</td>
											<td>${role.description}</td>
											<td>${role.lasUserName}</td>
											<td>${role.creationDate}</td>
											<td>${role.lastModifiedDate}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>




					<!-- Modal Popup -->
					<div id="MyPopup" class="modal fade" role="dialog">
						<div class="modal-dialog">
							<!-- Modal content-->
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal">
										&times;</button>
									<h4 class="modal-title"></h4>
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


</body>
</html>