<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>seats.lk</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">
	
			

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<br><br><br><br><br><br>


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
          
         
          <li><a class="nav-link scrollto" href="customer_feedback.jsp">Feedback</a></li>
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





<%

String id=request.getParameter("id");
String full_name=request.getParameter("full_name");
String email=request.getParameter("email");
String phone_number=request.getParameter("phone_number");
String date=request.getParameter("date");
String comment=request.getParameter("comment");

%>
         <div class="n">
         
			<form method="post" action="update" class="p" >
			                    
			                  <label class="topic2">ID</label><br> 
				            <input type="text" name="id" class="input" value="<%=id %>" readonly><br><br> 
			                       
				             <label class="topic2">Full Name</label><br> 
				            <input type="text" name="full_name" class="input" value="<%=full_name %>"><br><br>
				
				            <label class="topic2">Email Address</label><br> 
				            <input type="email" name="email"  class="input" value="<%=email%>"><br><br>
				                                
				            <label class="topic2">Phone Number</label><br>
				            <input type="text" name="phone_number"  class="input" value="<%=phone_number %>"><br><br>
				                                
				            <label class="topic2">Date</label><br>
				            <input type="date" name="date"  class="date" value="<%=date%>"><br>
				
				            <label class="topic2">Describe your feedback</label><br>
				            <textarea class="addres" name="comment" value="<%=comment %>" rows="3" cols="40" placeholder="Write Something Here......!"></textarea><br><br><br>
				                                           
					<div class="but">
	                 <!--BOUTTON -->
			              <button type="submit" class="button-31" >
		                       <b>Update</b>
		                  </button>
				   </div>
			                
			   </form> <!--END FORM--> 
             </div>
<br><br><br><br>
</body>

<!-- ======= Footer ======= -->
  <footer id="footer">

    <div class="footer-top">
      <div class="container">
        <div class="row">

          <div class="col-lg-3 col-md-6 footer-contact">
            <h3>seats.lk<span>.</span></h3>
            <p>
              355/A maliban street <br>
              Sri Lanka <br><br>
              <strong>Phone:</strong> 0112 555 0755<br>
              <strong>Email:</strong> seatlk@gmail.com<br>
            </p>
          </div>

          <div class="col-lg-2 col-md-6 footer-links">
            <h4>Useful Links</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Home</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">About us</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Services</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Terms of service</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Privacy policy</a></li>
            </ul>
          </div>

          <div class="col-lg-3 col-md-6 footer-links">
           
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Sign In</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Feedback</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Reserve</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Routes</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">prices</a></li>
            </ul>
          </div>

          <div class="col-lg-4 col-md-6 footer-newsletter">
            <h4>Join our facebook page</h4>
            <p>search and book through facebook</p>
            <form action="" method="post">
              <input type="email" name="information"><input type="submit" value="Search">
            </form>
          </div>

        </div>
      </div>
    </div>

    <div class="container d-md-flex py-4">

      
      <div class="social-links text-center text-md-end pt-3 pt-md-0">
        <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
        <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
        <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
        <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
        <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
      </div>
    </div>
  </footer><!-- End Footer -->

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
</html>