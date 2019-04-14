<!DOCTYPE html >
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ page isELIgnored="false"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Adminnitrator</title>
<link rel="stylesheet" type="text/css" href="css/admin.css" />
<link href='http://fonts.googleapis.com/css?family=Belgrano'
	rel='stylesheet' type='text/css' />
<!-- jQuery file -->
<script src="js/jquery.min1.js"></script>
<script src="js/roleFunctionAdmin.js"></script>
<script src="js/onclickRoleFunctionAdmin.js"></script>
<script src="js/paginationRoleFunction.js"></script>
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
					<li><a href="accountAdmin">Người dùng</a></li>
					<li><a href="roleAdmin">Quyền người dùng</a></li>
					<li><a href="functionAdmin">Chức năng</a></li>
					<li><a href="roleFunctionAdmin" class="selected">Chức năng
							của quyền</a></li>
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
				<form name="searchInput" method="post" action="searchInputRoleFunction">
					<div>
						<div>
							<input id="btnSearch" type="button" class="form_submit"
								value="Tìm Kiếm" />

						</div>
						<div>
							<input id="valueInputSearch" type="text" class="form_input"
								name="valueInputSearch" value="" />
						</div>


					</div>
				</form>
			</li>
			<li class="active"><a>Thông Tin các chức năng của quyền </a></li>

		</ul>
		<div id="tab1" class="tabcontent">
			<form method="post" action="registerRoleFunction" name = "formRoleFunction">
				<div class="form">	
				<input  style="width: 506px;display: none" id="roleFunctionId"
							type="text"  class="form_input"
							name="roleFunctionId" value="" />
				<div class="row">
						<div class="col-sm-6">
							<div class="col-sm-4">
								<label>Chọn quyền:</label>
							</div>

							<div class="col-sm-8">
								<select id="chooseRoleFunction" class="form_input"
							name="chooseRoleFunction">
							<option value="Admin">Admin</option>
							<option value="User">User</option>
						</select>
							</div>
						</div>
						<div class="col-sm-6" id="an1" style="display: none">
							<div class="col-sm-4">
								<label>Người tạo:</label>
							</div>

							<div class="col-sm-8">
								<label><div id="createdUsername"
										style="font-weight: normal;"></div></label>
							</div>
						</div>
					</div>		
					<div class="row">
						<div class="col-sm-6">
							<div class="col-sm-4">
								<label>Nhập Chức Năng:</label>
							</div>

							<div class="col-sm-8">
								<input 
							value="${roleFunction.functionName}" id="nhap" required="required"
							class="form_input" name="chooseFunction" type="text" list="ide" />
						<p style="color: red; padding-left: 100px" id="error">${error}</p>
						<c:remove var="error" scope="session" />
						<datalist id="ide"> <c:forEach items="${list}"
							var="Function">
							<option value="${Function.functionName}">${Function.functionName}</option>
						</c:forEach> </datalist>
							</div>
						</div>
						<div class="col-sm-6" id="an2" style="display: none">
							<div class="col-sm-4">
								<label>Người sửa cuối cùng:</label>
							</div>

							<div class="col-sm-8">
								<label><div id="lasUserName"
										style="font-weight: normal;"></div></label>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-6">
							<div class="col-sm-4">
								<label>Mô tả :</label>
							</div>

							<div class="col-sm-8">
								<input   id="mota"
							type="text"  class="form_input"
							name="description" value="" />
							</div>
						</div>
						<div class="col-sm-6"  style="display: none">
							
						</div>
					</div>
					
					<div class="row" id="an3" style="display: none">
						<div class="col-sm-6">
							<div class="col-sm-4">
								<label>Ngày tạo:</label>
							</div>

							<div class="col-sm-8">
								<label><div id="createdDate"
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
								<button id="btnRegister" type="button" class="btn btn-success" value="" >Thêm Mới</button>
							</div>

							<div class="col-sm-2" id="an4" style="display: none">
								<button id="btnDisplayPopup" type="button" class="btn btn-info" value=" " >Chỉnh Sửa</button>
							</div>
							<div class="col-sm-2" id="an5" style="display: none">
								<button id="btnDelete" type="button" class="btn btn-danger" value="" >Xóa</button>
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
							<table id="dataTable3"
								class="table table-bordered"
								cellspacing="0" width="100%">
								<thead>
							<tr>
								
								<th>Quyền</th>	
								<th>Chức Năng</th>						
								<th>Quyền và Chức Năng</th>
								<th>Mô tả</th>
								<th>Người tạo</th>
										<th>Người sửa cuối cùng</th>
										<th>Ngày tạo</th>
										<th>Ngày sửa cuối cùng</th>
							</tr>
						</thead>
						<tfoot>
						<tr>
								
								<th>Quyền</th>	
								<th>Chức Năng</th>						
								<th>Quyền và Chức Năng</th>
								<th>Mô tả</th>
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

							<c:forEach items="${listRoleFunction}" var="roleFunction">
								<tr class="odd" onclick="getRoleFunction('${roleFunction.roleName}','${roleFunction.roleFunctionId }','${roleFunction.functionName}','${roleFunction.description}','${roleFunction.createdUserName }','${roleFunction.lastModifiedUserName }','${roleFunction.creationDate}','${roleFunction.lastModifiedDate}')">
									
									<td>${roleFunction.roleName}</td>	
									<td>${roleFunction.functionName}</td>					
									<td>${roleFunction.roleName}-${roleFunction.functionName}</td>
									<td>${roleFunction.description}</td>
									<td>${roleFunction.createdUserName }</td>
									<td>${roleFunction.lastModifiedUserName }</td>
									<td>${roleFunction.creationDate}</td>	
									<td>${roleFunction.lastModifiedDate}</td>
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
								<div class="modal-body">Bạn có chắc chắn thực hiện chức năng này ?</div>
								<div class="modal-footer">
									<input type="button" id="btnConfirmPopup1" value="Xác Nhận"
										class="btn btn-danger" /> <input type="button"
										id="btnClosePopup1" value="Close" class="btn btn-danger" />
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