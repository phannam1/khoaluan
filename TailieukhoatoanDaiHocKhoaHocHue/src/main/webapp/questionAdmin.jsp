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

<script type="text/javascript" src="js/actionQuestionAdmin.js"></script>
<script type="text/javascript" src="js/panigatonQuestion.js"></script>

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
					<li><a href="roleAdmin" >Quyền người dùng</a></li>
					<li><a href="functionAdmin">Chức năng</a></li>
					<li><a href="roleFunctionAdmin">Chức năng của quyền</a></li>
					<li><a href="documentAdmin" >Tài liệu</a></li>
					
					<li><a href="majorAdmin" >Ngành học</a></li>
					<li><a href="categoryAdmin" >Chuyên ngành</a></li>
						<li><a href="teacherAdmin" >Giảng Viên</a></li>
						<li><a href="subjectAdmin" >Môn học</a></li>
						<li><a href="questionAdmin" class="selected" >Câu hỏi</a></li>
					<li><a href="newsAdmin">Tin tức</a></li>
					<li><a href="helpAdmin">Trợ giúp</a></li>
				</ul>
			</div>

		</div>

		<ul class="tabsmenu">
			<li class="active">
				
			</li>
			<li class="active"><a>Thông tin câu hỏi</a></li>

		</ul>
		<div class="tabcontent">
			<form name="acctionQuestionDelete" method="post"
				action="deleteQuestion">
				<div class="form" >
				 <input id = 'questionId' style="width: 500px;display: none" type="text" class="form_input" name="questionId" value="" />
				
			</form>

			<div class="clear"></div>
		</div>


		<div class="center_content">

			<div id="right_wrap">
				<div id="right_content">
					<h2>Bảng câu hỏi</h2>


					<div class="container-fluid">
						<div class="col-md-12">
							<table id="dataTable20"
								class="table table-bordered"
								cellspacing="0" width="100%">
								<thead>
							<tr>
							<th>ID(<i class="fa fa-user"></i>)</th>
							<th>Người tạo(<i class="fa fa-user"></i>)</th>
								<th>Câu Hỏi(<i class="fa fa-question"></i>)</th>
								
								
										<th>Ngày tạo(<i class="fa fa-clock-o"></i>)</th>				
								
								<th>Ngày sửa cuối cùng(<i class="fa fa-clock-o"></i>)</th>
								<th>Xóa  (<i class="fa fa-question"></i>) </th>
							</tr>
						</thead>
						
						<tbody>
						<c:forEach items="${listQuestion}" var="listQuestion">
							<tr class="odd">
							<td>${listQuestion.questionId }<br>
							<td>${listQuestion.createdUserName }<br>
								<td><a href="<%=request.getContextPath()%>/clickQuestion?questionId=${listQuestion.questionId }">${listQuestion.questionName }</a></td>							
									<td>${listQuestion.time }</td>
								</td>														
								<td>${listQuestion.lastModifiedDate }</td>
									<td><div class="duyetan" ><button onclick="ClickOpenModel(${listQuestion.questionId })"  id="btnKhoa" class="btnLock btn btn-danger" name = "123">
							<a class="123123" style="color:#fff;text-decoration: none ">Xóa</a></button></div></td>
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
									<input onclick="clickClose()" type="button" id="btnConfirmPopup" value="Xác Nhận"
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