
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ page isELIgnored="false"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Upload File</title>

<!-- Favicon -->
<link rel="shortcut icon" href="img/T.PNG" type="image/x-icon">


<!-- Font awesome -->
<link href="css/font-awesome.css" rel="stylesheet">
<!-- Bootstrap -->
<link href="css/bootstrap.css" rel="stylesheet">
<!-- slick slider -->
<link rel="stylesheet" type="text/css" href="css/slick.css">
<!-- price picker slider -->
<link rel="stylesheet" type="text/css" href="css/nouislider.css">
<!-- Fancybox slider -->
<link rel="stylesheet" href="css/jquery.fancybox.css" type="text/css"
	media="screen" />
<!-- Theme color -->
<link id="switcher" href="css/theme-color/default-theme.css"
	rel="stylesheet">

<!-- Main style sheet -->
<link href="css/style.css" rel="stylesheet">


<!-- Google Font -->
<link href='https://fonts.googleapis.com/css?family=Vollkorn'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css'>

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->


<link href='http://fonts.googleapis.com/css?family=Belgrano'
	rel='stylesheet' type='text/css' />
<!-- jQuery file -->




<!-- Font awesome -->
<link href="css/font-awesome.css" rel="stylesheet" />
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
<script src="js/jquery.tabify.js" type="text/javascript" charset="utf-8"></script>

</head>
<body>
	<section id="aa-signin">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="aa-signin-area">
						<a style="float: right; font-size: 30px"
							href="<%=request.getContextPath()%>/index"><i
							class="fa fa-times" aria-hidden="true"></i></a>
						<div class="aa-signin-form">
							<div class="aa-signin-form-title">
								<h4>UPLOAD TÀI LIỆU CỦA BẠN</h4>
							</div>
							<form class="contactform" method="post"	name="uploadDocument" enctype="multipart/form-data" action="upload">
							<div class="row">
								<div class="col-sm-6">
								<div class="aa-single-field">
									<label for="name" >Tên tài liệu: <span class="required">*</span></label>
									<input id="name" type="text" 
										  name="nameDocument"
										placeholder="NameDocument" required
										>
									
								</div>
								</div>
								<div class="col-sm-6">
								<div class="aa-single-field">
									<label> Ngành Học: <span class="required"></span></label>
									<div class="aa-single-advance-search">
										<input value="${role.idMajor}" 
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
								</div>
								<div class="row">
								<div class="col-sm-6">
								<div class="aa-single-field">
									<label>Kỳ Học: <span class="required">*</span></label>
									<div class="aa-single-advance-search">
										<select name="semester" style="width: 100%; height: 35px;">
											<option value="Kỳ 1" >Kỳ 1</option>
											<option value="Kỳ 2">Kỳ 2</option>
											<option value="Kỳ 3">Kỳ 3</option>
											<option value="Kỳ 4">Kỳ 4</option>
											<option value="Kỳ 5">Kỳ 5</option>
											<option value="Kỳ 6">Kỳ 6</option>
											<option value="Kỳ 7">Kỳ 7</option>

										</select>
									</div>
								</div>
								</div>
							<div class="col-sm-6">
								<div class="aa-single-field">
									<label>Chuyên Ngành: <span class="required"></span></label>
									<div class="aa-single-advance-search">
										<input value="${role.idCategory}" 
											class="form_input" name="category" type="text" list="cate"
											onchange="myFunction(this.id)" placeholder="Nhập chuyên ngành" />
										<datalist id="cate">
											<c:forEach items="${listCategory}" var="listCategory">
												<option value="${listCategory.nameCategory}">${listCategory.nameCategory}</option>
											</c:forEach>
										</datalist>
									</div>
								</div>
								</div>
								</div>
								<div class="row">
								<div class="col-sm-6">
								<div class="aa-single-field">
									<label>Số Tín Chỉ: <span class="required">*</span></label>
									<div class="aa-single-advance-search">
										<select name="courseCredit" style="width: 100%; height: 35px;">
										<option value="2" selected>2 Tín Chỉ</option>
										<option value="3">3 Tín Chỉ</option>
										<option value="4">4 Tín Chỉ</option>

										</select>
									</div>
								</div>
								</div>
								<div class="col-sm-6">
								<div class="aa-single-field">
									<label>Môn học: <span class="required"></span></label>
									<div class="aa-single-advance-search">
										<input value="${role.idSubject}" 
											class="form_input" name="subject" type="text" list="sub"
											onchange="myFunction(this.id)" placeholder="Nhập môn học" />

										<datalist id="sub">
											<c:forEach items="${listSubject}" var="listSubject">
												<option value="${listSubject.nameSubject}">${listSubject.nameSubject}</option>
											</c:forEach>
										</datalist>
									</div>
								</div>
								</div>
								</div>
								<div class="aa-single-field">
									<label for="name">Tên Giảng Viên : <span class="required"></span></label>
									<div class="aa-single-advance-search">
										<input value="" 
											class="form_input" name="nameTeacher" type="text" list="teacher"
											onchange="myFunction(this.id)" placeholder="Tên giáo viên" />

										<datalist id="teacher">
											<c:forEach items="${listTeacher}" var="listTeacher">
												<option value="${listTeacher.nameTeacher}">${listTeacher.nameTeacher}</option>
											</c:forEach>
										</datalist>
									</div>
									
								</div>
								
									
										
										<div class="aa-single-field">
									<label for="name">Lựa chọn tài liệu của bạn: <span class="required">*</span></label>
										 <input required="required"   type="file" name="file"
											multiple >
									
									
								</div>
								<div class="aa-single-submit">
									<button style="width: 30%;margin-top: 10px"  id="btnUpload"  value="UPLOAD"  class="btn btn-info"
										>UPLOAD</button>
								</div>
							</form>
							<form action="#">
							
								
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- jQuery library -->
	<!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script> -->
	<script src="js/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="js/bootstrap.js"></script>
	<!-- slick slider -->
	<script type="text/javascript" src="js/slick.js"></script>

	<!-- Price picker slider -->
	<script type="text/javascript" src="js/nouislider.js"></script>
	<!-- mixit slider -->
	<script type="text/javascript" src="js/jquery.mixitup.js"></script>
	<!-- Add fancyBox -->
	<script type="text/javascript" src="js/jquery.fancybox.pack.js"></script>
	<!-- Custom js -->
	<script src="js/custom.js"></script>
	

</body>
</html>