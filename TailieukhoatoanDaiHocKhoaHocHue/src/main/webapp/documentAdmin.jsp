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
<script type="text/javascript" src="js/documentAdmin.js"></script>
<script type="text/javascript" src="js/actionFormDocument.js"></script>
<script type="text/javascript" src="js/panigationDocument.js"></script>

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
					<li><a href="roleFunctionAdmin">Chức năng của quyền</a></li>
					<li><a href="documentAdmin" class="selected">Tài liệu</a></li>
					<li><a href="majorAdmin">Ngành học</a></li>
					<li><a href="categoryAdmin" >Chuyên ngành</a></li>
						<li><a href="teacherAdmin" >Giảng Viên</a></li>
						<li><a href="subjectAdmin" >Môn học</a></li>
					<li><a href="questionAdmin">Câu hỏi</a></li>
					<li><a href="newsAdmin">Tin tức</a></li>
					<li><a href="helpAdmin">Trợ giúp</a></li>
				</ul>
			</div>

		</div>

		<ul class="tabsmenu">
			<li class="active"></li>
			<li class="active"><a>Thông tin tài liệu</a></li>

		</ul>
		<div class="tabcontent">
			<form name="acctionDocumentUpdate" method="post"
				action="updateIsShowDocument">
				<div class="form">
					<input id='documentId' style="width: 500px; display: none"
						type="text" class="form_input" name="documentId" value="" />
					<h4 id="thongbao"
						style="color: red; text-align: center; display: none;">Tài
						liệu đã được phê duyệt , Nếu muốn chỉnh sửa tài liệu này vui lòng
						khóa tài liệu</h4>
					<div class="row">
						<div class="col-sm-6">
							<div class="col-sm-4">
								<label>Tên tài liệu:</label>
							</div>
							<div class="col-sm-8">
								<input id="nameDocument" type="text" class="form_input"
									name="nameDocument" value="" />
							</div>
						</div>
						<div class="col-sm-6">
							<div class="col-sm-4">
								<label>Ngành học:</label>
							</div>
							<div class="col-sm-8">
								<select class="form_input" name="major" id="major">
									<option value="" selected>Ngành học</option>
									<option value="Toán Học">Toán Học</option>
									<option value="Toán Ứng Dụng">Toán Ứng Dụng</option>

								</select>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-6">
							<div class="col-sm-4">
								<label>Kỳ học:</label>
							</div>
							<div class="col-sm-8">
								<select class="form_input" name="semester" id="semester">
									<option value="" selected>Kỳ học</option>
									<option value="Kỳ 1">Kỳ 1</option>
									<option value="Kỳ 2">Kỳ 2</option>
									<option value="Kỳ 3">Kỳ 3</option>
									<option value="Kỳ 4">Kỳ 4</option>
									<option value="Kỳ 5">Kỳ 5</option>
									<option value="Kỳ 6">Kỳ 6</option>
									<option value="Kỳ 7">Kỳ 7</option>
									<option value="Kỳ 8">Kỳ 8</option>
								</select>
							</div>
						</div>
						<div class="col-sm-6">
							<div class="col-sm-4">
								<label>Chuyên ngành:</label>
							</div>
							<div class="col-sm-8">
								<select class="form_input" name="subject" id="subject">
									<option value="" selected>Chuyên ngành</option>
									<option value="Xác Suất Thống Kê">Xác Suất Thống Kê</option>
									<option value="Tối Ưu">Tối Ưu</option>
									<option value="Ứng Dụng">Ứng Dụng</option>

								</select>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-6">
							<div class="col-sm-4">
								<label>Tên giáo viên :</label>
							</div>
							<div class="col-sm-8">
								<input id="nameTeacher" type="text" class="form_input"
									name="nameTeacher" value="" />
							</div>
						</div>
						<div class="col-sm-6">
							<div class="col-sm-4">
								<label>Đã phê duyệt:</label>
							</div>
							<div class="col-sm-8">
								<input id="isShow" class="isActive"
									style="width: 30px; height: 30px;" type="checkbox"
									class="form_input" name="isActive" value="" disabled="disabled" />
							</div>
						</div>
					</div>

					<div class="row">
						<div class="col-sm-6">
							<div class="col-sm-4">
								<label>Số tín chỉ :</label>
							</div>
							<div class="col-sm-8">
								<select class="form_input" name="courseCredit" id="courseCredit">
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
								</select>
							</div>
						</div>
						<div class="col-sm-6" id="viewsDo" style="display: none">
							<div class="col-sm-4">
								<label>Xem tài liệu :</label>
							</div>
							<div class="col-sm-8">
								<label><a id="viewDocument"
									style="font-weight: normal;" target="_blank">Xem</a></label>
							</div>
						</div>
					</div>
					<div class="row" id="row1" style="display: none;">
						<div class="col-sm-6">
							<div class="col-sm-4">
								<label>Ngày tạo:</label>
							</div>

							<div class="col-sm-8">
								<label><div id="createDate"
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
					<div class="row" id="row2" style="display: none;">
						<div class="col-sm-6">
							<div class="col-sm-4">
								<label>Người tạo:</label>
							</div>
							<div class="col-sm-8">
								<label><div id="createUserName"
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
						<div class="row">
							<div class="col-sm-6"></div>

							<div class="col-sm-6">
								<div class="col-sm-4" id="btnUpdate" style="display: none;">
									<button style="margin-right: 1%;" type="button"
										id="btnDisplayPopup" class="btn btn-info" value="" >Chỉnh sửa</button>
								</div>
								<div class="col-sm-4" id="btnDelete" style="display: none;">
									<button style="float: left;" type="button" id="btnShowPopup"
										class="btn btn-danger" value=" " >Xóa </button>
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
					<h2>Bảng tài liệu</h2>


					<div class="container-fluid">
						<div class="col-md-12">
							<table id="dataTable0" class="table table-bordered"
								cellspacing="0" width="100%">
								<thead>
									<tr>

										<th>Tài liệu</th>
										<th>Ngành học</th>
										<th>Kỳ học</th>
										<th>Chuyên ngành</th>
										<th>Số tín chỉ</th>
										<th>Giảng viên</th>
										<th>Đã phê duyệt</th>
										<th>Người tạo</th>
										<th>Người sửa cuối cùng</th>
										<th>Ngày tạo</th>
										<th>Ngày sửa cuối cùng</th>
										<th>Chỉnh sửa</th>
									</tr>
								</thead>
								<tfoot>
									<tr>

										<th>Tài liệu</th>
										<th>Ngành học</th>
										<th>Kỳ học</th>
										<th>Chuyên ngành</th>
										<th>Số tín chỉ</th>
										<th>Giảng viên</th>
										<th>Đã phê duyệt</th>
										<th>Người tạo</th>
										<th>Người sửa cuối cùng</th>
										<th>Ngày tạo</th>
										<th>Ngày sửa cuối cùng</th>
										<th>Chỉnh sửa</th>
									</tr>
									<tr>
										<td colspan="12">Trang quản lý của Admin!</td>
									</tr>
								</tfoot>
								<tbody>
									<c:forEach items="${listDocument}" var="document">
										<tr class="odd"
											onclick="getValueDocument('${document.id}','${document.documentName}','${document.major}','${document.semester}','${document.subject}','${document.courseCredit}','${document.nameTeacher}','${document.isShow }','${document.createdUserName}','${document.lastModifiedUserName}','${document.creationDate}','${document.lastModifiedDate}','${document.linkData}')">

											<td><a>${document.documentName}</a></td>
											<td>${document.major}</td>
											<td>${document.semester}</td>
											<td>${document.subject}</td>
											<td>${document.courseCredit}</td>
											<td>${document.nameTeacher}</td>
											<td><input class="isActive" type="checkbox"
												onchange="myFunction(this.name)" name="${document.isShow }"
												value="${document.isShow } " id="${document.isShow }"
												disabled /></td>

											<td>${document.createdUserName}</td>
											<td>${document.lastModifiedUserName}</td>
											<td>${document.creationDate}</td>
											<td>${document.lastModifiedDate}</td>
											<td>
												<div class="duyethien">
													<button style="display: none; width: 102px;"
														value="${document.isShow }" id="btnduyet"
														class="btnOpen btn btn-primary">
														<a
															href="<%=request.getContextPath()%>/approvedDocument?documentId=${document.id}"
															style="color: #fff; text-decoration: none">Phê duyệt</a>
													</button>
												</div>
												<div class="duyetan">
													<button style="display: none" value="${document.isShow}"
														id="btnKhoa" class="btnLock btn btn-danger" name="">
														<a
															href="<%=request.getContextPath()%>/lockDocument?documentId=${document.id}"
															style="color: #fff; text-decoration: none">Khóa tài
															liệu</a>
													</button>
												</div>
											</td>
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
										id="btnClosePopup1" value="Close" class=" btn btn-danger" />
								</div>
							</div>
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