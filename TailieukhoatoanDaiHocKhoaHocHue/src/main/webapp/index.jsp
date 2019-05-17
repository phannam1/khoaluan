
<!DOCTYPE html>
<html lang="en">

<%@ page isELIgnored="false"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta  charset="utf-8">
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
<link rel="stylesheet" type="text/css" href="css/panigation.css">
<link rel="stylesheet" type="text/css" href="css/panigation2.css">
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
									<a id="show" href="<%=request.getContextPath()%>/Infor"><i
										class="fa fa-cog"></i> Cài Đặt </a> <a id="show1"
										href="<%=request.getContextPath()%>/Logout"><i
										class="fa fa-sign-out" aria-hidden="true"></i>Đăng Xuất</a> <a
										id="showAdmin" href="indexAdmin"><i class="fa fa-user"></i>Quản
										trị viên</a> <a id="hide" href="register.jsp"><i
										class="fa fa-user-plus"></i>Đăng Ký</a> <a id="hide1"
										href="signin.jsp"><i class="fa fa-sign-in"
										aria-hidden="true"></i>Đăng Nhập</a>

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
					<!--  <a class="navbar-brand aa-logo" href="<%=request.getContextPath()%>/index"> Home <span>Property</span></a> -->
					<!-- Image based logo -->
					<!-- <a class="navbar-brand aa-logo-img" href="<%=request.getContextPath()%>/index"><img src="img/logo.png" alt="logo"></a> -->
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<ul id="top-menu" class="nav navbar-nav navbar-right aa-main-nav">
						<li class="active"><a
							href="<%=request.getContextPath()%>/index">TRANG CHỦ</a></li>
						<li><a href="<%=request.getContextPath()%>/introduce">GIỚI
								THIỆU</a></li>
						<li><a href="<%=request.getContextPath()%>/document">TÀI
								LIỆU <!-- <span class="caret"></span> -->
						</a> <!-- <ul class="dropdown-menu" role="menu">                
                <li><a href="properties.html">PROPERTIES</a></li>
                <li><a href="properties-detail.html">PROPERTIES DETAIL</a></li>                                            
              </ul> --></li>
						<li><a href="<%=request.getContextPath()%>/event">SỰ KIỆN</a></li>
						<li><a href="<%=request.getContextPath()%>/forum">DIỄN
								ĐÀN </a> <!-- <ul class="dropdown-menu" role="menu">                
                <li><a href="blog-archive.html">BLOG</a></li>
                <li><a href="blog-single.html">BLOG DETAILS</a></li>                                            
              </ul> --></li>
						<li><a href="<%=request.getContextPath()%>/contact">LIÊN
								HỆ</a></li>
						<li><a href="<%=request.getContextPath()%>/help">PHẢN HỒI</a></li>
						<div class="dropdown1">
							<li class="dropbtn1"><a>TẢI TÀI LIỆU </a>
								<div class="dropdown-content1">
									<a style="color: blue;"
										href="<%=request.getContextPath()%>/uploadDocument">Upload</a>
									<a style="color: blue;" href="yourDocument">Tài liệu của
										bạn</a>
								</div></li>
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
					<img src="img/slider/1.PNG" alt="img">

				</div>

				<div class="aa-top-slider-single">
					<img src="img/slider/2.jpg" alt="img">


				</div>

				<div class="aa-top-slider-single">
					<img src="img/slider/1.jpg" alt="img">

				</div>

				<div class="aa-top-slider-single">
					<img src="img/slider/7.jpg" alt="img">

				</div>

				<div class="aa-top-slider-single">
					<img src="img/slider/8.jpg" alt="img">


				</div>

				<div class="aa-top-slider-single">
					<img src="img/slider/9.jpg" alt="img">

				</div>

			</div>
		</div>
	</section>
	<!-- End slider  -->

	<!-- Advance Search -->
	<section id="aa-advance-search">
		<div class="container">
			<div class="aa-advance-search-area">
				<div class="form">
					<div class="aa-advance-search-top">
						<div class="row">
							<form action="searchDetailDocument" method="post">
								<div class="col-md-4">
									<div class="aa-single-advance-search">
										<input type="text" placeholder="Tên tài liệu" value=""
											name="nameDocument">
									</div>
								</div>
								<div class="col-md-2">
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
								<div class="col-md-2">
									<div class="aa-single-advance-search">
										<input value="${role.idCategory}" 
											class="form_input" name="category" type="text" list="cate"
											onchange="myFunction(this.id)" placeholder="Chuyên ngành" />

										<datalist id="cate">
											<c:forEach items="${listCategory}" var="listCategory">
												<option value="${listCategory.nameCategory}">${listCategory.nameCategory}</option>
											</c:forEach>
										</datalist>
									</div>
								</div>
								<div class="col-md-2">
									<div class="aa-single-advance-search">
										<select name="semester">
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
								
								
								
								

								<div class="col-md-2">
									<div class="aa-single-advance-search">
										<input class="aa-search-btn" type="submit" value="Tìm Kiếm">
									</div>
								</div>
								<div class="col-md-2">
								</div>
								<div class="col-md-2">
								</div>
								<div class="col-md-2" style="margin-top: 15px">
									<div class="aa-single-advance-search">
										<input value="${role.idSubject}" 
											class="form_input" name="subject" type="text" list="sub"
											onchange="myFunction(this.id)" placeholder="Môn học" />

										<datalist id="sub">
											<c:forEach items="${listSubject}" var="listSubject">
												<option value="${listSubject.nameSubject}">${listSubject.nameSubject}</option>
											</c:forEach>
										</datalist>
									</div>
								</div>
								<div class="col-md-2" style="margin-top: 15px">
									<div class="aa-single-advance-search">
										<input value="" 
											class="form_input" name="nameTeacher" type="text" list="teacher"
											onchange="myFunction(this.id)" placeholder="Tên giảng viên" />

										<datalist id="teacher">
											<c:forEach items="${listTeacher}" var="listTeacher">
												<option value="${listTeacher.nameTeacher}">${listTeacher.nameTeacher}</option>
											</c:forEach>
										</datalist>
									</div>
								</div>
								<div class="col-md-2">
									<div class="aa-single-advance-search" style="margin-top: 15px">
										<select name="courseCredit">
											<option value="0" selected>Số tín chỉ</option>
											<option value="2">2 Tín Chỉ</option>
											<option value="3">3 Tín Chỉ</option>
											<option value="4">4 Tín Chỉ</option>

										</select>
									</div>
								</div>
							</form>
						</div>
						
					</div>

				</div>
			</div>
		</div>
	</section>
	<!-- / Advance Search -->

	<!-- About us -->

	<!-- / About us -->
	<section id="aa-latest-property">
		<div class="container">
			<div class="aa-latest-property-area">
				<div class="aa-title">
					<h2>Câu hỏi mới nhất</h2>
					<span></span>

				</div>

				<div class="center_content">

					<div id="right_wrap">

						<div id="right_content">

							<div class="search_Forum"></div>



							<div class="container-fluid">
								<div class="col-md-12">

									<c:forEach items="${listQuestion}" var="listQuestion">

										<div class="list-group-item list-group-item-default">
											<div class="row">
												<div class="col-sm-3">
													<img style="width: 70px; height: 70px"
														src="${listQuestion.avatar }"> <br> <b>${listQuestion.createdUserName }</b>
													<br> ${listQuestion.time }
												</div>
												<div class="col-sm-8">
													<p>${listQuestion.questionName }</p>
												</div>
												<div class="col-sm-1">
													<a
														href="<%=request.getContextPath()%>/clickQuestion?questionId=${listQuestion.questionId }">Xem</a>
												</div>
											</div>



										</div>

									</c:forEach>
									<a href="<%=request.getContextPath()%>/forum" style="color: red;font-size: 20px">Xem đầy đủ</a>
								</div>

							</div>


						</div>
					</div>




				</div>
			</div>
		</div>
	</section>
	<!-- Latest property -->
	<div class="row">
		<div class="col-sm-7">
			<div class="row">
				<section id="aa-latest-property">
					<div>
						<div class="aa-latest-property-area">
							<div class="aa-title">
								<h2 style="">Tài Liệu Nổi Bật</h2>


							</div>

							<div class="aa-latest-properties-content">

								<div>
									<c:forEach items="${listDocument}" var="document">
										<div class="col-sm-6">
											<div id="jar">
												<div class="content">

													<article class="aa-properties-item">
														<a
															href="<%=request.getContextPath()%>/detailDocument?id=${document.id}"
															class="aa-properties-item-img"> <img style="height: 250px;"
															src="${document.linkData}"  alt="img">
														</a>
														<div class="aa-properties-item-content"
															style="height: 151px;">

															<div class="aa-properties-about" style="height: 105px;">

																<h3>
																	<a
																		href="<%=request.getContextPath()%>/detailDocument?id=${document.id}">${document.documentName}</a>
																</h3>

															</div>
															<div class="aa-properties-detial">
																<a
																	href="<%=request.getContextPath()%>/detailDocument?id=${document.id}"><i
																	class="fa fa-info"></i> Xem chi tiết</a> <span
																	class="aa-date-tag">Lượt xem : ${document.views}
																</span>
															</div>

														</div>
													</article>
												</div>
											</div>
										</div>

									</c:forEach>

								</div>


							</div>



						</div>

					</div>
				</section>
				<a style="margin-left: 15px;color: red;font-size: 20px"
					href="<%=request.getContextPath()%>/document" >xem đầy đủ </a>
			</div>
		</div>
		<div class="col-sm-3">


			<!-- Latest blog -->
			<section id="aa-latest-property">
				<div class="container">
					<div class="aa-latest-property-area">
						<div class="aa-title">
							<h2 style="float: left;">Tin Tuyển Dụng-Sự Kiện</h2>
							

						</div>

						<div class="aa-latest-properties-content">
							<div class="row">

								<c:forEach items="${listNews}" var="news">
									<div class="col-sm-12 paged-element">
										<div id="jar1">
											<div class="content1">
												<div class="pagination-example">



													<article class="aa-properties-item">
														<a
															href="<%=request.getContextPath()%>/news?id=${news.newsId}"
															class="aa-properties-item-img"> <img style="width:50%;height:250px"
															src="${news.pictureLink }" alt="img">
														</a>
														<div class="aa-properties-item-content"
															style="height: 151px;">
															<div class="aa-properties-about" style="height: 100px;">
																<h5>
																	<a
																		href="<%=request.getContextPath()%>/news?id=${news.newsId}">${news.title }</a>
																</h5>

															</div>
															<div class="aa-properties-detial">
																<a
																	href="<%=request.getContextPath()%>/news?id=${news.newsId}"><i
																	class="fa fa-info"></i> Xem chi tiết</a> <span
																	class="aa-date-tag">${news.dateTime } </span>
															</div>
														</div>
													</article>
												</div>

											</div>
										</div>
									</div>
								</c:forEach>

							</div>


						</div>

					</div>
				</div>
			</section>
			<a style="margin-left: 15px;color: red;font-size: 20px"
				href="<%=request.getContextPath()%>/event" >xem đầy đủ </a>
		</div>
	</div>

	<!-- / Latest blog -->

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
	<script type="text/javascript" src="js/login.js"></script>

	<!-- Price picker slider -->
	<script type="text/javascript" src="js/nouislider.js"></script>
	<!-- mixit slider -->
	<script type="text/javascript" src="js/jquery.mixitup.js"></script>
	<!-- Add fancyBox -->
	<script type="text/javascript" src="js/jquery.fancybox.pack.js"></script>
	<!-- Custom js -->
	<script src="js/custom.js"></script>
	<script src="js/panigationJquery.js"></script>
	<script src="js/panigationIndexQuestion.js"></script>
	<script src="js/panigationIndexNews.js"></script>

</body>
</html>