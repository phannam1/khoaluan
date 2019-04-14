<!DOCTYPE html >
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ page isELIgnored="false"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Adminnitrator</title>
<link rel="stylesheet" type="text/css" href="css/admin.css" />
<link href='http://fonts.googleapis.com/css?family=Belgrano'
	rel='stylesheet' type='text/css'>
<script src="js/jquery.min1.js"></script>
<script src="js/jquery.tabify.js" type="text/javascript" charset="utf-8"></script>
<!-- Font awesome -->
<link href="css/font-awesome.css" rel="stylesheet">
<!-- Bootstrap -->
<link href="css/bootstrap.css" rel="stylesheet">
<!-- slick slider -->

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
					<li><a href="indexAdmin" class="selected">Trang Chủ</a></li>
					<li><a href="accountAdmin">Người dùng</a></li>
					<li><a href="roleAdmin">Quyền người dùng</a></li>
					<li><a href="functionAdmin">Chức năng</a></li>
					<li><a href="roleFunctionAdmin">Chức năng của quyền</a></li>
					<li><a href="documentAdmin">Tài liệu</a></li>
					<li><a href="majorAdmin">Ngành học</a></li>
					<li><a href="categoryAdmin">Chuyên ngành</a></li>
					<li><a href="teacherAdmin">Giảng Viên</a></li>
					<li><a href="subjectAdmin">Môn học</a></li>
					<li><a href="questionAdmin">Câu hỏi</a></li>
					<li><a href="newsAdmin">Tin tức</a></li>
					<li><a href="helpAdmin">Trợ giúp</a></li>
				</ul>
			</div>

		</div>

		<div class="center_content">

			<div id="right_wrap">
				<div id="right_content">

					<ul class="tabsmenu">
						<li class="active"><a href="indexAdmin">Thông Tin Admin</a></li>
						<li class="active"><a href="changePasswordAdmin">Đổi mật
								khẩu</a></li>
					</ul>
					<div class="tabcontent">
						<form method="post" action="updateAdmin">
							<div class="form">
								

								

								
								<div class="row">
									<div class="col-sm-6">
										<div class="col-sm-4">
											<label>Tài khoản:</label> 
										</div>
										<div class="col-sm-8">
											<input type="text" class="form_input"
										name="userName" readonly="readonly"
										value="${account.userName }" />
										</div>
									</div>
									<div class="col-sm-6"></div>

								</div>
								<div class="row">
									<div class="col-sm-6">
										<div class="col-sm-4">
											<label>Tên:</label>
										</div>
										<div class="col-sm-8">
											<input type="text" class="form_input"
										name="name" value="${account.name }" />
										</div>
									</div>
									<div class="col-sm-6"></div>

								</div>
								<div class="row">
									<div class="col-sm-6">
										<div class="col-sm-4">
											<label>Địa chỉ:</label>
										</div>
										<div class="col-sm-8">
											<input type="text" class="form_input" name="address"
												value="${account.address }" />
										</div>
									</div>
									<div class="col-sm-6"></div>

								</div>
								<div class="row">
									<div class="col-sm-6">
										<div class="col-sm-4">
											<label>Email:</label>
										</div>
										<div class="col-sm-8">
											<input type="text" class="form_input" name="email"
												value="${account.email }" />
										</div>
									</div>
									<div class="col-sm-6"></div>

								</div>

								<div class="row">
									<div class="col-sm-6">
										<div class="col-sm-4">
											<label>Điện thoại:</label>
										</div>
										<div class="col-sm-8">
											<input type="text" class="form_input" name="phone"
												value="${account.phone }" />
										</div>
									</div>
									<div class="col-sm-6"></div>

								</div>


								<div class="row">
									<div class="col-sm-6">
										<div class="col-sm-4"></div>
										<div class="col-sm-8">
											<div class="col-sm-3"></div>
											<div class="col-sm-3"></div>
											<div class="col-sm-3">
												<button style="margin-right: 210px" type="submit"
													class="btn btn-info" value="">Chỉnh Sửa</button>
											</div>
										</div>

									</div>
									<div class="col-sm-6"></div>
								</div>
							</div>
						</form>
						<div class="clear"></div>
					</div>
				</div>


			</div>
		</div>


		<div class="clear"></div>
		<div class="footer">
			Designed by <a href="https://www.facebook.com/PhanNam2433"
				target="_blank">PTN</a>
		</div>
	</div>
	<!--end of center_content-->






</body>
</html>