<!DOCTYPE html>
<html lang="en">
<%@ page isELIgnored="false"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Tài Liệu Khoa Toán DHKH Huế</title>
<script src="js/jquery.min1.js"></script>

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
<link rel="stylesheet" type="text/css" href="css/admin.css" />

<!-- Google Font -->
<link href='https://fonts.googleapis.com/css?family=Vollkorn'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css'>

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
<body class="aa-price-range">
	<!-- Pre Loader -->
	<div id="aa-preloader-area">
		<div class="pulse"></div>
	</div>
	<!-- SCROLL TOP BUTTON -->
	<a class="scrollToTop" href="#"><i class="fa fa-angle-double-up"></i></a>
	<!-- END SCROLL TOP BUTTON -->

	<!-- Start header section -->
	<header id="aa-header">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="aa-header-area">
						<div class="row">
							<div class="col-md-6 col-sm-6 col-xs-6">
								<div class="aa-header-left">
									<div class="aa-telephone-no">
										<span class="fa fa-phone">19001900</span>

									</div>
									<div class="aa-email hidden-xs">
										<span class="fa fa-envelope-o"></span>KhoaToanDHKHHue@gmail.com
									</div>
								</div>
							</div>
							<div class="col-md-6 col-sm-6 col-xs-6">
								<div class="aa-header-right">
									<p id="account">${account.accountId}</p>
									<p id="admin">${account.roleId}</p>
									<p id="show2">Xin Chào: ${account.name}</p>
									<a style="text-decoration: none" id="show" href="<%=request.getContextPath()%>/Infor"><i class="fa fa-cog"></i>
										Cài Đặt </a> <a style="text-decoration: none" id="show1"
										href="<%=request.getContextPath()%>/Logout"><i class="fa fa-sign-out" aria-hidden="true"></i>Đăng Xuất</a>
										<a style="text-decoration: none" id="showAdmin"
										href="indexAdmin"><i class="fa fa-user"></i>Quản trị viên</a> <a
										id="hide" href="register.jsp"><i class="fa fa-user-plus"></i>Đăng Ký</a>
									<a id="hide1" href="signin.jsp"><i class="fa fa-sign-in" aria-hidden="true"></i>Đăng Nhập</a>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	<!-- End header section -->

	<!-- Start menu section -->
	<section id="aa-menu-area">
		<nav class="navbar navbar-default main-navbar" role="navigation">
			<div class="container">
				<div class="navbar-header">
					<!-- FOR MOBILE VIEW COLLAPSED BUTTON -->
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#navbar" aria-expanded="false"
						aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<ul id="top-menu" class="nav navbar-nav navbar-right aa-main-nav">
						<li><a href="<%=request.getContextPath()%>/index">TRANG
								CHỦ</a></li>
						<li><a href="<%=request.getContextPath()%>/introduce">GIỚI
								THIỆU</a></li>
						<li><a href="<%=request.getContextPath()%>/document">TÀI
								LIỆU <!-- <span class="caret"></span> -->
						</a> </li>
						<li><a href="<%=request.getContextPath()%>/event">SỰ KIỆN</a></li>
						<li class="active"><a
							href="<%=request.getContextPath()%>/forum">DIỄN ĐÀN </a> </li>
						<li><a href="<%=request.getContextPath()%>/contact">LIÊN
								HỆ</a></li>
						<li><a href="<%=request.getContextPath()%>/help">PHẢN HỒI</a></li>
						<div class="dropdown1">
						<li class="dropbtn1"><a style="text-decoration: none">TẢI TÀI LIỆU
								 </a>	
								<div class="dropdown-content1">
									<a style="color: blue;text-decoration: none" href="<%=request.getContextPath()%>/uploadDocument">Upload</a> <a style="color: blue;text-decoration: none" href="yourDocument">Tài liệu của bạn</a>
								</div>
							
							</li>
							</div>
					</ul>
				</div>
				<!--/.nav-collapse -->
			</div>
		</nav>
	</section>
	<!-- End menu section -->

	<!-- Start slider  -->
	<section id="aa-slider">
		<div class="aa-slider-area">
			<!-- Top slider -->
			<div class="aa-top-slider">
				<!-- Top slider single slide -->
				<div class="aa-top-slider-single">
					<img src="img/slider/2.PNG" alt="img">
				</div>
			</div>
		</div>
	</section>
	<!-- End Proerty header  -->
	<section id="aa-latest-blog" style="padding-bottom: 0px;"> 
		<div class="container">
		
				
					<div class="aa-latest-blog-area">
						<div class="aa-title">
							<h2>Cộng đồng sinh viên khoa toán DHKH Huế</h2>
							<span></span>
							<div >
								<div id="navbar" class="navbar-collapse collapse"></div>										
								<div style="text-align: right; padding-left: 10px;" >
								
		</div>
	
		<div class=" row" >
		<div class="col-sm-9">
		<div class="col-sm-3"></div>
		<div class="col-sm-9">
		
		<form action="createQuestion" method="post">
		<div class="col-sm-10">					<textarea style="border: 1px solid #ccc !important; width: 100%;height: 80px;"  type="text" value ="" name = "questionName" placeholder="Câu hỏi của bạn"></textarea>
		</div>
					
					<div class="col-sm-1">
					<button  style="border: 1px solid #ccc !important;" class="btn btn-info" type="submit" value="">Gửi</button>
					</div>
					
					</form>
					</div>
					
		</div>
		<div class="col-sm-3">
		
					</div>
							
					</div>
									</div>

						</div>
					</div>
				</div>
				
		
		
	</section>
<div class="center_content">
<div class="menu">
				<ul>
					
					
					<li ><a href="question">Câu hỏi của bạn</a></li>
					
				</ul>
			</div>
			<div id="right_wrap">
			
				<div id="right_content">
				
					<div class="search_Forum">
					
					</div>
					<h2 >Các câu hỏi gần đây</h2>
				
					
					<div class="container-fluid">
						<div class="col-md-12">
							
						<c:forEach items="${listQuestion}" var="listQuestion">
						<div  id="jar">
								<div class=" mx-auto content">
						<div class="list-group-item list-group-item-default">
						<div class="row">
								<div class="col-sm-3">
  							
  							<img style="width:70px;height: 70px " src="${listQuestion.avatar }">
									<br><b>${listQuestion.createdUserName }</b>
									<br> ${listQuestion.time }</div>
								<div class="col-sm-8">
								<p>${listQuestion.questionName }</p>
								</div>
							<div class="col-sm-1"><a href="<%=request.getContextPath()%>/clickQuestion?questionId=${listQuestion.questionId }">Xem</a></div>
						</div>
					
									
								
  							</div>
  							</div>
  							</div>
							</c:forEach>
					</div>
					</div>
			<div class="clear"></div>
			<nav style="margin-top: 20px; margin-left: 20px;">
							<ul class="pagination justify-content-center pagination-sm">
						
							</ul>
							
						</nav>
		</div>
		</div>
		
										
											
										
									</div>
								<footer id="aa-footer">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="aa-footer-area">
						<div class="row">
							<div class="col-md-3 col-sm-6 col-xs-12">
								<div class="aa-footer-left">
									<p>
										Designed by <a rel="nofollow"
											href="https://www.facebook.com/PhanNam2433">PTN</a>
									</p>
								</div>
							</div>
							<div class="col-md-3 col-sm-6 col-xs-12">
								<div class="aa-footer-middle">
									<a href="https://www.facebook.com/PhanNam2433"><i
										class="fa fa-facebook"></i></a> <a
										href="https://twitter.com/Phantha27859524"><i
										class="fa fa-twitter"></i></a>
								</div>
							</div>
							<div class="col-md-6 col-sm-12 col-xs-12">
								<div class="aa-footer-right">
									<a href="<%=request.getContextPath()%>/index">Trang Chủ</a> <a
										href="<%=request.getContextPath()%>/contact">Liên Hệ</a> <a
										href="<%=request.getContextPath()%>/forum">Diễn Đàn</a> <a
										href="<%=request.getContextPath()%>/document">Tài Liệu</a>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- Start Blog  -->
          
    

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
	
	<!-- add pagination js -->
	<script type="text/javascript" src="js/login.js"></script>
	<script src="js/panigationJquery.js"></script>
</body>
</html>