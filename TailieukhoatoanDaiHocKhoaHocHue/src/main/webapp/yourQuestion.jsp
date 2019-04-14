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
<script type="text/javascript" src="js/onclickQuestionAccount.js"></script>
<script type="text/javascript" src="js/actionYourQuestion.js"></script>
<script type="text/javascript" src="js/panigationYourQuestion.js"></script>

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
			<div class="title">Trang quản lý câu hỏi của bạn</div>

			<div class="header_right">
				Xin Chào : ${account.name}, <a
					href="<%=request.getContextPath()%>/forum" class="logout"><i
					class="fa fa-sign-out" aria-hidden="true"></i>Thoát</a>
			</div>

			<div class="menu">
				<ul>
					<li><a href="forum">Các câu hỏi khác</a></li>
					
				</ul>
			</div>

		</div>

		<ul class="tabsmenu">
			<li class="active">
				
			</li>
			<li class="active"><a>Thông tin các câu hỏi của bạn</a></li>

		</ul>
		<div  class="tabcontent">
											<h2>Thêm câu hỏi của bạn</h2>
											<form method="post" action="" name="actionYourQuestion">
												<div class="form">
												<input id="quesId" name="questionId" value="" style="display: none">
												<div class="row">
					<div class="col-sm-6" >
						<div class="col-sm-4" ><label>Nội dung:</label></div>
							<div class="col-sm-8" > <textarea style="width: 400px;height: 100px ;margin-bottom: 8px" id="content" name="content" type="text"
															 name="" value="" required="required" onchange="myFunction()"></textarea>
															 
					</div>
					<p style="color: red" id="error" >${error}</p>
               <c:remove var="error" scope="session" /> 
					</div>
						<div class="col-sm-6" id="an2" style="display: none" >
						<div class="col-sm-4" ><label>Ngày tạo:</label></div>
							<div class="col-sm-8" ><label ><div id="createDate" style="font-weight: normal;"></div></label>
					</div>
					</div> 
					</div>
													

													<div class="row" id="an3" style="display: none">
					<div class="col-sm-6" >
						<div class="col-sm-4" ><label>Số câu trả lời:</label></div>
							
							<div class="col-sm-8" ><label ><div id="number" style="font-weight: normal;"></div></label>
					</div>
					</div>
					
						<div class="col-sm-6"  >
						<div class="col-sm-4" ><label>Ngày sửa cuối cùng:</label></div>
							<div class="col-sm-8" ><label ><div id="lasDate" style="font-weight: normal;"></div></label>
					</div>
					</div>
						 
					</div>
						<div class="row">
						<div class="col-sm-6">
						<div class="col-sm-4"></div>
							<div class="col-sm-8">
						<div class="col-sm-3">
								<button id="btnRegister" type="button" class="btn btn-success"
									value="" >Thêm Mới</button>
							</div>

							<div class="col-sm-3" id="an4" style="display: none">
								<button type="button" id="btnDisplayPopup" class="btn btn-info"
									value="" >Chỉnh Sửa</button>
							</div>
							<div class="col-sm-3" id="an5" style="display: none">
								<button style="margin-right: 5px" id="btnShowPopup" type="button"
									class="btn btn-danger" value="" " >Xóa</button>
							</div>
							</div>
						</div>
						<div class="col-sm-6">
							

						</div>
					</div>							
													
													
													

												</div>
											</form>
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
											
											<div class="clear"></div>
										</div>


		<div class="center_content">

										<div id="right_wrap">
											<div id="right_content">

												
												<h2>Các câu hỏi của bạn</h2>

												<div class="container-fluid">
						<div class="col-md-12">
							<table id="dataTable12" class="table"
								cellspacing="0" width="100%">
						
								
								 <thead>
														<tr>
															
															<th>Tên câu hỏi(<i class="fa fa-question"></i>)
															</th>
															<th>Số câu trả lời(<i class="fa fa-reply "></i>)
															</th>
															<th>Ngày tạo(<i class="fa fa-clock-o"></i>)
															</th>
															<th>Ngày sửa cuối cùng(<i class="fa fa-clock-o"></i>)
															</th>
														</tr>
													</thead>
													
													<tbody>
													<c:forEach items="${listQuestion}" var="listQuestion">
														<tr class="odd" onclick="clickQuestion('${listQuestion.questionId }','${listQuestion.questionName }','${listQuestion.numberQuestion }','${listQuestion.time }','${listQuestion.lastModifiedDate }')">															
															<td>${listQuestion.questionName }</td>
															<td>${listQuestion.numberQuestion }<a href="<%=request.getContextPath()%>/clickQuestion?questionId=${listQuestion.questionId }"> (Xem)</a></td>
															<td>${listQuestion.time }</td>
															<td>${listQuestion.lastModifiedDate }</td>
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
