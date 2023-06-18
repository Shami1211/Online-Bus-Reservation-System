<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link href="assets/css/login.css" rel="stylesheet" >
</head>
<body>
	
	<!-- ======= Header ======= -->
  
  <header id="header" class="fixed-top d-flex align-items-center" style="background-color: #688c96">
    <div class="container d-flex align-items-center">
      <h1 class="logo me-auto"><a href="Home.jsp">Seat <span>. </span>lk</a></h1>
      <!-- Uncomment below if you prefer to use an image logo -->

      <nav id="navbar" class="navbar order-last order-lg-0">
        <ul>
          <li><a class="nav-link scrollto active" href="#hero">Home</a></li>
          <li><a class="nav-link scrollto" href="#about">About</a></li>
          <li><a class="nav-link scrollto" href="#services">Services</a></li>
          
         
          <li><a class="nav-link scrollto" href="#contact">Contact</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->
    </div>
  </header><!-- End Header -->


   

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>
	
	
	
	
	<div class="login-container">
        <div class="login-header">
            <div class="signin-title">Admin Login</div>
        </div>

        <div class="login-body">
            <form class="login-form" action = "<%= request.getContextPath() %>/adminLogin" method="post">
                <input type="email" name="email" class="username" placeholder="Email" required>
                <input type="password" name="password" class="password" placeholder="Password" required>
                <div  class="forgot-password"><a href="forgotPassword.java">Forgot password?</a></div>
                <div class="login">
                    <!--input type="checkbox" class="remember-me" value="Remember me">
                    <label for="remember-me">Remember me</label> -->
    
    
                    <button type="submit" name="loginbtn" class="loginbtn">LOG IN</button>				
                </div>
                
    
                
            </form>
        </div>
		
		
	</div>
	<%@ include file="footer.html" %>
 
 
</body>
</html>