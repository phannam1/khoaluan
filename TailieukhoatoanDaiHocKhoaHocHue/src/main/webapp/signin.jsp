<!DOCTYPE html>
<html lang="en">
<%@ page isELIgnored="false"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
  <head>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">    
    <title>Signin</title>

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
    <link rel="stylesheet" href="css/jquery.fancybox.css" type="text/css" media="screen" /> 
    <!-- Theme color -->
    <link id="switcher" href="css/theme-color/default-theme.css" rel="stylesheet">     

    <!-- Main style sheet -->
    <link href="css/style.css" rel="stylesheet">    

   
    <!-- Google Font -->
    <link href='https://fonts.googleapis.com/css?family=Vollkorn' rel='stylesheet' type='text/css'>    
    <link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
    


  

  </head>
  <body>
  <section id="aa-signin">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="aa-signin-area">
          <a style="float: right;font-size: 30px" href="<%=request.getContextPath()%>/index"><i class="fa fa-times" aria-hidden="true"></i></a>
            <div class="aa-signin-form">
              <div class="aa-signin-form-title"> 
                <h4 >Điền Thông Tin Đăng Nhập </h4>
                
              </div>
               <p style="color: red" id="error" >${error}</p>
               <c:remove var="error" scope="session" /> 
               <p style="color: red" id="isActive" >${isActive}</p>
               <c:remove var="isActive" scope="session" /> 
              <form class="contactform" method="post" action="login">
                                                           
                <div class="aa-single-field">
                  <label >Tài Khoản <span class="required">*</span></label>
                  <input id="taikhoan" type="text" required="required" aria-required="true" value="" name="userName" placeholder="UserName" onmousemove="checkValudation(this.id) ">
                    <p id="checkNulltk"> Tài khoản không được trống</p>
                </div>
               
                <div class="aa-single-field">
                  <label >Mật Khẩu <span class="required">*</span></label>
                  <input minlength="6" id="matkhau" type="password" name="password" value="" placeholder="password" onmousemove="checkValudation(this.id)" >  
                  
                  <p id="checkMore6">Mật khẩu phải từ 6 ký tự trở lên</p>
                </div> 
                
                <div class="aa-single-submit">
                  <input  type="submit" value="Đăng Nhập" class="aa-browse-btn" name="submit">             
                </div>
              </form>
              <a href="forgotPassword.jsp"style="padding-left: 245px;">Quên Mật Khẩu </a>
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
<script type="text/javascript" src="js/error.js"></script>
  <!-- Price picker slider -->
  <script type="text/javascript" src="js/nouislider.js"></script>
   <!-- mixit slider -->
  <script type="text/javascript" src="js/jquery.mixitup.js"></script>
  <!-- Add fancyBox -->        
  <script type="text/javascript" src="js/jquery.fancybox.pack.js"></script>
  <!-- Custom js -->
  <script src="js/custom.js"></script> 
<script type="text/javascript" src="js/validationInput.js"></script>
  </body>
</html>