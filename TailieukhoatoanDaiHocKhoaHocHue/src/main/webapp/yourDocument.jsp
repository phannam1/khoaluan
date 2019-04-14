<!DOCTYPE html >
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ page isELIgnored="false"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>Adminnitrator</title>
<link rel="stylesheet" type="text/css" href="css/admin.css" />
<link href='http://fonts.googleapis.com/css?family=Belgrano' rel='stylesheet' type='text/css'>
<!-- jQuery file -->
<script src="js/jquery.min1.js"></script>
<script src="js/onclickDocumentAdmin.js"></script>
<script src="js/panigationYourDocument.js"></script>
<script src="js/jquery.tabify.js" type="text/javascript" charset="utf-8"></script>
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
    
    
    <div class="header_right">Xin Chào : ${account.name},  <a href="<%=request.getContextPath()%>/index" class="logout"><i class="fa fa-sign-out" aria-hidden="true"></i>Thoát</a> </div>
    
    <div class="menu">
    <ul>
    <li><a href="" class="selected">Tài liệu của bạn</a></li>
    
    </ul>
    </div>
    
    </div>
<div class="tabcontent">
			<form name="acctionDocumentUpdate" method="post"
				action="updateYourDocument">
				<div class="form">
				 <input id = 'documentId' style="width: 500px;display: none" type="text" class="form_input" name="documentId" value="" />
				 <h4 id="thongbao" style="color: red; text-align: center;display: none; ">Tài liệu của bạn đã được phê duyệt , bạn không thể chỉnh sửa</h4>
					 <div class="row">
						<div class="col-sm-6" >
							<div class="col-sm-4" ><label>Tên tài liệu:</label> </div>
							<div class="col-sm-8" >
								<input id="nameDocument" type="text" class="form_input" name="nameDocument"  value="" />
							</div>
						</div>
						<div class="col-sm-6" >
							<div class="col-sm-4" ><label>Ngành học:</label> </div>
							<div class="col-sm-8" >
							<input id="major" value="${role.idMajor}" required="required"
									class="form_input" name="major" type="text" list="ide"
									onchange="myFunction(this.id)" placeholder="Ngành học" />

								<datalist id="ide">
									<c:forEach items="${listMajor}" var="listMajor">
										<option value="${listMajor.nameMajor}">${listMajor.nameMajor}</option>
									</c:forEach>
								</datalist>
							</div>
						</div>
					</div>
					<div class="row">
					<div class="col-sm-6" >
					<div class="col-sm-4" >
						<label>Kỳ học:</label></div> <div class="col-sm-8" ><select class="form_input" name="semester" id="semester">
											<option value="" selected>Kỳ học</option>
											<option value="Kỳ 1">Kỳ 1</option>
											<option value="Kỳ 2">Kỳ 2</option>
											<option value="Kỳ 3">Kỳ 3</option>
											<option value="Kỳ 4">Kỳ 4</option>
											<option value="Kỳ 5">Kỳ 5</option>
											<option value="Kỳ 6">Kỳ 6</option>
											<option value="Kỳ 7">Kỳ 7</option>
											<option value="Kỳ 8">Kỳ 8</option>
										</select></div>
					</div>
					<div class="col-sm-6" >
					<div class="col-sm-4" >
						<label>Chuyên ngành:</label></div><div class="col-sm-8" > <input id="category" value="${role.idCategory}"
									required="required" class="form_input" name="category"
									type="text" list="cate" onchange="myFunction(this.id)"
									placeholder="Nhập chuyên ngành" />

								<datalist id="cate">
									<c:forEach items="${listCategory}" var="listCategory">
										<option value="${listCategory.nameCategory}">${listCategory.nameCategory}</option>
									</c:forEach>
								</datalist></div>
					</div>
					</div>
						<div class="row">
					<div class="col-sm-6" >
						<div class="col-sm-4" ><label>Tên giáo viên :</label></div><div class="col-sm-8" > <input id="nameTeacher" value="" required="required"
									class="form_input" name="nameTeacher" type="text"
									list="teacher" onchange="myFunction(this.id)"
									placeholder="NameTeacher" />

								<datalist id="teacher">
									<c:forEach items="${listTeacher}" var="listTeacher">
										<option value="${listTeacher.nameTeacher}">${listTeacher.nameTeacher}</option>
									</c:forEach>
								</datalist></div>
					</div>
					<div class="col-sm-6" >				
						<div class="col-sm-4" ><label>Môn học:</label></div><div  class="col-sm-8" > <input id="subject" value="${role.idSubject}"
									required="required" class="form_input" name="subject"
									type="text" list="sub" onchange="myFunction(this.id)"
									placeholder="Nhập môn học" />

								<datalist id="sub">
									<c:forEach items="${listSubject}" var="listSubject">
										<option value="${listSubject.nameSubject}">${listSubject.nameSubject}</option>
									</c:forEach>
								</datalist></div>
					</div>
					</div>
					<div class="row">
					<div class="col-sm-6" >
						
					</div>
					<div class="col-sm-6" >				
						<div class="col-sm-4" ><label>Đã phê duyệt:</label></div><div  class="col-sm-8" > <input id="isShow" class="isActive"
							style="width: 30px; height: 30px;" type="checkbox"
							class="form_input" name="isActive" value="" disabled="disabled"/></div>
					</div>
					</div>
					
				<div class="row">
				<div class="col-sm-6" >
						<div class="col-sm-4" ><label>Số tín chỉ :</label></div><div class="col-sm-8" > <select class="form_input" name="courseCredit" id="courseCredit" >
											<option value="1">1</option>
											<option value="2">2</option>
											<option value="3">3</option>
											<option value="4">4</option>
										</select></div>
					</div>
					<div class="col-sm-6"id="clickhien1" style="display: none">
						<div class="col-sm-4" ><label>Người sửa cuối cùng :</label></div>
						
							<div class="col-sm-8" ><label ><div id="lasUserName" style="font-weight: normal;"></div></label>
					</div>
					</div>
					

					
				</div>
				<div class="row" id="clickhien" style="display:none ">
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
	
				<div class="row" id="btnUpdate"style="display: none;">
					<div class="col-sm-6" ></div>
					<div class="col-sm-6">
					<div class="col-sm-4" ></div>
						<div class="col-sm-8"><input   type="button" id="btnDisplayPopup" class="form_input" style="width:100px;"
						value="Chỉnh Sửa"  /></div>
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
							<table id="dataTable6"
								class="table table-bordered"
								cellspacing="0" width="100%">
								<thead>
							<tr>
								<th>Tên tài liệu</th>
								<th>Ngành học</th>
								<th>Kỳ học</th>
								<th>Chuyên ngành</th>
								<th>Môn học</th>
								<th>Số tín chỉ</th>
								<th>Tên giáo viên phụ trách</th>							
								<th>Đã phê duyệt</th>
								<th>Người sửa cuối cùng</th>
								<th>Ngày tạo</th>
								<th>Ngày sửa cuối cùng </th>
							</tr>
						</thead>
						<tfoot>
						<tr>
								<th>Tên tài liệu</th>
								<th>Ngành học</th>
								<th>Kỳ học</th>
								<th>Chuyên ngành</th>
								<th>Môn học</th>
								<th>Số tín chỉ</th>
								<th>Tên giáo viên phụ trách</th>							
								<th>Đã phê duyệt</th>
								<th>Người sửa cuối cùng</th>
								<th>Ngày tạo</th>
								<th>Ngày sửa cuối cùng </th>
							</tr>
							<tr>
								<td colspan="12">Trang tài liệu của người dùng</td>
							</tr>
						</tfoot>
						<tbody>
					
							<c:forEach items="${listDocument}" var="document">
								<tr class="odd" onclick="getValueDocument('${document.id}','${document.documentName}','${document.major}','${document.semester}','${document.category}','${document.subject}','${document.courseCredit}','${document.nameTeacher}','${document.isShow }','${document.lastModifiedUserName}','${document.creationDate}','${document.lastModifiedDate}')">
							
									<td><a >${document.documentName}</a></td>
									<td>${document.major}</td>
									<td>${document.semester}</td>
									<td>${document.category}</td>
									<td>${document.subject}</td>
									<td>${document.courseCredit}</td>
									<td>${document.nameTeacher}</td>									
										<td ><input class="isActive" type="checkbox" onchange="myFunction(this.name)"
											name="${document.isShow }" value="${document.isShow } "
											 id="${document.isShow }" disabled />
										</td>
										<td>${document.lastModifiedUserName}</td>
										<td>${document.creationDate}</td>	
										<td>${document.lastModifiedDate}</td>	
									
									
									
																		
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
    
    
   
    <div class="footer">
	Designed by <a href="https://www.facebook.com/PhanNam2433" target="_blank">PTN</a>
</div>
    </div> <!--end of center_content-->
    
    

<!-- bang thu nhat:id, cac fields, createdbyid, bang thu 2:id, lastmodifiedbyid -->
    	
</body>
</html>