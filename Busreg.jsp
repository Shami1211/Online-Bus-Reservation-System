<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<link href="assets/css/signup.css" rel="stylesheet">
</head>
<body>




	<!-- ======= Header ======= -->
  
  <header id="header" class="fixed-top d-flex align-items-center">
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

      <a href="busLogin.jsp" class="get-started-btn scrollto" id="loginBtn">Login</a>

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
  
  
  
	<div class ="signup-container">
		<div class="register-container">
            <div class="signup-card-header">Sign Up</div>

            <div class="signup-card-body">
                <form class="login-form" action = "<%= request.getContextPath() %>/register" method="post">
                
                    <div class="input-container">
                        <div class="label">Name</div>
                        <div class="names-container">
                            <input type="text" name="firstName" class="name" placeholder="First Name" required>
                            <input type="text" name="lastName" class="name" placeholder="Last Name" required>
                        </div>
                    </div>
                    
                    <div class="input-container">
                        <div class="label">Username</div>
                        <input type="text" name="username" class="reg-input" placeholder="Username" required>
                    </div>
                    
                    <div class="input-container">
                        <div class="label">Email</div>
                        <input type="email" name="email" class="reg-input" placeholder="Email" required>
                    </div>
                    
                    <div class="input-container">
                        <div class="label">Password</div>
                        <input type="password" name="password" class="reg-input" placeholder="Password" required>
                    </div>
                    
                    <div class="input-container">
                        <div class="label">Re-Password</div>
                        <input type="password" name="repassword" class="reg-input" placeholder="Retype Password" required>
                    </div>
        
                    <div class="input-container">
                        <div class="label">Phone</div>
                        <input type="text" name="phone" class="reg-input" placeholder="Phone" required>
                    </div>
        
                    <div class="input-container">
                        <div class="label">NIC</div>
                        <input type="text" name="NIC" class="reg-input" placeholder="NIC" required>
                    </div>
                    <div>
                    	<%
							if ((String) session.getAttribute("error") != null) {
						%>
						<h2 style="color: red; font-size: 15px" class="error"><% out.print( session.getAttribute("error")); %></h2>
						<% } %>
						<% session.setAttribute("error",""); %>
                    </div>
                    <button type="submit" name="registerbutton" class="registerbutton">REGISTER</button>
                    
        
                    
                </form>
            </div>
            
	</div>  
	
		
		
	</div>
	<%@ include file="footer.html" %>
	

</body>
</html>