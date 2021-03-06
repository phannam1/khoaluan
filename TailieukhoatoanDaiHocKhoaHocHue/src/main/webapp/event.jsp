<!DOCTYPE html>
<html lang="en">
<%@ page isELIgnored="false"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Tài Liệu Khoa Toán DHKH Huế</title>

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





</head>
<body>

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
									<a id="show" href="<%=request.getContextPath()%>/Infor"><i class="fa fa-cog"></i>
										Cài Đặt </a> 
										<a id="showAdmin"
										href="indexAdmin"><i class="fa fa-user"></i>Quản trị viên</a><a id="show1"
										href="<%=request.getContextPath()%>/Logout"><i class="fa fa-sign-out" aria-hidden="true"></i>Đăng Xuất</a> <a
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
					<!-- LOGO -->
					<!-- Text based logo -->
					<!--   <a class="navbar-brand aa-logo" href="<%=request.getContextPath()%>/index"> Home <span>Property</span></a> -->
					<!-- Image based logo -->
					<!-- <a class="navbar-brand aa-logo-img" href="<%=request.getContextPath()%>/index"><img src="img/logo.png" alt="logo"></a> -->
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<ul id="top-menu" class="nav navbar-nav navbar-right aa-main-nav">
						<li><a href="<%=request.getContextPath()%>/index">TRANG CHỦ</a></li>
						<li><a href="<%=request.getContextPath()%>/introduce">GIỚI THIỆU</a></li>
						<li><a href="<%=request.getContextPath()%>/document">TÀI LIỆU <!-- <span class="caret"></span> --></a>
							<!-- <ul class="dropdown-menu" role="menu">                
                <li><a href="properties.html">PROPERTIES</a></li>
                <li><a href="properties-detail.html">PROPERTIES DETAIL</a></li>                                            
              </ul> --></li>
						<li  class="active"><a href="<%=request.getContextPath()%>/event">SỰ KIỆN</a></li>
						<li><a href="<%=request.getContextPath()%>/forum">DIỄN ĐÀN </a> <!-- <ul class="dropdown-menu" role="menu">                
                <li><a href="blog-archive.html">BLOG</a></li>
                <li><a href="blog-single.html">BLOG DETAILS</a></li>                                            
              </ul> --></li>
						<li><a href="<%=request.getContextPath()%>/contact">LIÊN HỆ</a></li>
						<li><a href="<%=request.getContextPath()%>/help">PHẢN HỒI</a></li>
						<div class="dropdown1">
						<li class="dropbtn1"><a>TẢI TÀI LIỆU
								 </a>	
								<div class="dropdown-content1">
									<a style="color: blue;" href="<%=request.getContextPath()%>/uploadDocument">Upload</a> <a style="color: blue;" href="yourDocument">Tài liệu của bạn</a>
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
	<!-- End menu section -->

	<!-- Start Proerty header  -->

	
<section id="aa-properties">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="aa-properties-content">
					<div class="aa-title">
										<h2>TIN TỨC - SỰ KIỆN</h2>
										<span></span>
									</div>
						<!-- start properties content head -->
						<div class="aa-properties-content-head">
							<div class="aa-properties-content-head-left">
								<form action="" class="aa-sort-form">
									<label for="">TIN TỨC MỚI NHẤT</label>
								</form>
								
							</div>
							<div class="aa-properties-content-head-right">
								<a id="aa-grid-properties" href="#"><span class="fa fa-th"></span></a>
								<a id="aa-list-properties" href="#"><span class="fa fa-list"></span></a>
							</div>
						</div>
						<!-- Start properties content body -->
						<div class="aa-properties-content-body">
							<ul class="aa-properties-nav">	
						
							<form name = "downloadDocument" method="post">
							<c:forEach items="${listNews}" var="news">
								<li>
									<div  id="jar">
								<div class=" mx-auto content">
									<article class="aa-properties-item">
									
										<a href="<%=request.getContextPath()%>/news?id=${news.newsId}"
											class="aa-properties-item-img"> <img style="width: 539px;height: 220px;"
											src="${news.pictureLink }" alt="img">
										</a>

										<div class="aa-properties-item-content" style="height: 181px;">

											<div class="aa-properties-about" style="height: 130px;">
												<h5>
													<a href="<%=request.getContextPath()%>/news?id=${news.newsId}">${news.title }</a>
												</h5>
												
											</div>
											<div class="aa-properties-detial">
												<a href="<%=request.getContextPath()%>/news?id=${news.newsId}"><i class="fa fa-info"></i> Xem chi tiết</a>

											</div>
										</div>
									</article>
									</div>
									</div>
								</li>
								</c:forEach>
								</form>
								
								
								
							</ul>
							
							 <div><p style="color: red" id="error" >${error}</p>
               <c:remove var="error" scope="session" /> </div>
						</div>
						<!-- Start properties content bottom -->
						
					</div>
					<nav style="margin-top: 20px; margin-left: 20px;">
							<ul class="pagination justify-content-center pagination-sm">
						
							</ul>
							
						</nav>
				</div>
				<!-- Start properties sidebar -->
				
			</div>
		</div>
	</section>

	<!-- Footer -->
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
	<!-- / Footer -->

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