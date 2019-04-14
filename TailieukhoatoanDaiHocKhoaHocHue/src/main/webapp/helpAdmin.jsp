<!DOCTYPE html>
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
<script src="js/panigationHelp.js"></script>
<script src="js/jquery.tabify.js" type="text/javascript" charset="utf-8"></script>
<!-- Font awesome -->
<link href="css/font-awesome.css" rel="stylesheet" />
<!-- Bootstrap -->
<link href="css/bootstrap.css" rel="stylesheet" />
<!-- slick slider -->

<!-- Font awesome -->

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
				Xin Chào : ${account.userName},  <a
					href="<%=request.getContextPath()%>/index" class="logout"><i
					class="fa fa-sign-out" aria-hidden="true"></i>Thoát</a>
			</div>

			<div class="menu">
				<ul>
					<li><a href="indexAdmin">Trang Chủ</a></li>
					<li><a href="accountAdmin">Người dùng</a></li>
					<li><a href="roleAdmin">Quyền người dùng</a></li>
					<li><a href="functionAdmin">Chức năng</a></li>
					<li><a href="roleFunctionAdmin">Chức năng của quyền</a></li>
						<li><a href="documentAdmin">Tài liệu</a></li>
						<li><a href="majorAdmin">Ngành học</a></li>
						<li><a href="categoryAdmin" >Chuyên ngành</a></li>
							<li><a href="teacherAdmin" >Giảng Viên</a></li>
							<li><a href="subjectAdmin" >Môn học</a></li>
						<li><a href="questionAdmin" >Câu hỏi</a></li>
					<li><a href="newsAdmin" >Tin tức</a></li>
					<li><a href="helpAdmin" class="selected">Trợ giúp</a></li>
				</ul>
			</div>

		</div>

		

		<div class="center_content">

			<div id="right_wrap">
				<div id="right_content">
					<h2>Các phản hồi của người dùng</h2>


					<div class="container-fluid">
						<div class="col-md-12">
							<table id="dataTable9"
								class="table table-bordered"
								cellspacing="0" width="100%">
								<thead>
							<tr>
								<th>Tài Khoản</th>
														
								<th>Nội dung phản hồi</th>
								<th>Thời gian</th>
							</tr>
						</thead>
						<tfoot>
						<tr>
								<th>Tài Khoản</th>
														
								<th>Nội dung phản hồi</th>
								<th>Thời gian</th>
							</tr>
							<tr>
								<td colspan="12">Trang quản lý của Admin!</td>
							</tr>
						</tfoot>
						<tbody>
						<c:forEach items="${listHelp}" var="help">
							<tr class="odd">
								<td>${help.userName }</td>										
								<td>${help.content }</td>
								<td>${help.time }</td>
								
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


</body>
</html>