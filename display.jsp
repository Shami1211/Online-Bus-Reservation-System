<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>

	<meta charset="UTF-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>seats.lk</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!--Favicons-->
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
  <link rel="stylesheet" href="CSS/dis.css">

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
	
	
	
	<br><br><br><br><br><br><br><br>
	
	<div class="hh">
	<h2 > Why our customers love us?</h2><br>
	<div class="h">
									 
									 <fieldset class="table">
									
									 
									<table class="c">
										<c:forEach var="feed" items="${feedDetails}">
										
										<c:set var="id" value="${feed.id}"/>
										<c:set var="full_name" value="${feed.full_name}"/>
										<c:set var="email" value="${feed.email}"/>
										<c:set var="phone_number" value="${feed.phone_number}"/>
										<c:set var="date" value="${feed.date}"/>
										<c:set var="comment" value="${feed.comment}"/>
										
										
										<tr class="c">
											<td>Customer ID</td>
											<td>${feed.id}</td>
										</tr>
										<tr class="c">
											<td>Customer Full_Name</td>
											<td>${feed.full_name}</td>
										</tr>
										<tr class="c">
											<td>Customer Email</td>
											<td>${feed.email}</td>
										</tr>
										<tr class="c">
											<td>Customer Phone Number</td>
											<td>${feed.phone_number}</td>
										</tr>
										<tr class="c">
											<td>Customer Date</td>
											<td>${feed.date}</td>
										</tr>
										<tr class="c">
											<td>Customer User Comment</td>
											<td>${feed.comment}</td>
										</tr>
									
										</c:forEach>
									
									</table>
									</fieldset>
									</div>
									</div>
									<br><br>
									<c:url  value="UpdateCustomer.jsp" var="feedUpdate">
									  <c:param name="id" value="${id }"/>
									  <c:param name="full_name" value="${full_name}"/>
									  <c:param name="email" value="${email}"/>
									  <c:param name="phone_number" value="${phone_number}"/>
									  <c:param name="date" value="${date}"/>
									  <c:param name="comment" value="${comment}"/>
									  <br>
									</c:url>
									
									                <div class="but"><!--BOUTTON -->
									                    <a href="${feedUpdate}"> 
									                    <button type="submit" class="button-30" id="submit" >
									                    <b> Update Customer Details</b>
									                    </button> 
									                    </a>
									                </div><!--END BOUTTON -->
									
									<br><br>
									       <c:url value="deleteFeedback.jsp" var="feeddelete">
									       
												   <c:param name="id" value="${id }"/>
												  <c:param name="full_name" value="${full_name}"/>
												  <c:param name="email" value="${email}"/>
												  <c:param name="phone_number" value="${phone_number}"/>
												  <c:param name="date" value="${date}"/>
												  <c:param name="comment" value="${comment}"/>
									       
									       </c:url>
													
													<div class="but"><!--BOUTTON -->
									                    <a href="${feeddelete}"> 
									                    <button type="submit" class="button-30" id="submit" >
									                    <b> Delete Customer Details</b>
									                    </button> 
									                    </a>
									                </div><!--END BOUTTON -->   
													   
									</div>
									
									
									<br><br>
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