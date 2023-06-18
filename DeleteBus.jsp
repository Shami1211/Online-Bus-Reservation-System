<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Bus</title>
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
	
	
	
	
	
	<br><br><br><br>

	<div style="margin: auto;
  width: 50%;
  border: 3px solid green;
  padding: 10px;">
  
	<%
	
		String busNo= request.getParameter("busNo");
		String from = request.getParameter("from");
		String to = request.getParameter("to");
		String time = request.getParameter("time");
		String noOfSeats = request.getParameter("noOfSeats");
		String price = request.getParameter("price");
	
	%>


	<form action="delete" method = "post">
		Bus Number: <input type="text" name="busNo" value = "<%= busNo %>" readonly><br><br>
		From: 
			<input type = "text" name ="start" value = "<%= from %>" readonly><br><br>
				
		To: 
			<input type ="text" name= "end" value = "<%= to %>" readonly><br><br>

		Time: <input type="time" name = "time" value = "<%= time %>" readonly><br><br>
		Number of seats: <input type = "text" name = "noOfSeats" value = "<%= noOfSeats %>" readonly><br><br>
		Price(Per person): <input type = "text" name = "price" value = "<%= price %>" readonly><br><br>
		
		<input type= "submit" name = "submit" value= "Delete Data"  style = "background-color: #ba2f43; /* Green */
																			border: none;
																			color: white;
																			padding: 15px 32px;
																			text-align: center;
																			text-decoration: none;
																			display: inline-block;
																			font-size: 16px;">
	</form>
	</div>
	
	<br><br><br><br><br>
	<%@ include file="footer.html" %>
</body>
</html>