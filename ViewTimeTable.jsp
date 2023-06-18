<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Available Buses</title>
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
	<table border="1" style="width:100%;">
			<tr>
				<th>Bus Number</th>
				<th>From</th>
				<th>To</th>
				<th>Time</th>
				<th>Price (Per Person)</th>
			</tr>
	
		<c:forEach var="booking" items = "${busTimes}">
		
			<c:set var = "busNo" value="${booking.busNo}"/>
			<c:set var = "from" value="${booking.from}"/>
			<c:set var = "to" value="${booking.to}"/>
			<c:set var = "time" value="${booking.time}"/>
			<c:set var = "price" value="${booking.price}"/>
			
			<!-- <tr>
				<th>Bus Number></th>
				<th>From</th>
				<th>To</th>
				<th>Time</th>
				<th>Price</th>
			</tr>-->
			
			<tr>
				<td>${booking.busNo}</td>
				<td>${booking.from}</td>
				<td>${booking.to}</td>
				<td>${booking.time}</td>
				<td>${booking.price}</td>
				<td>
					<c:url value="PaymentPage.jsp" var = "bookingPayment">
						<c:param name="busNo" value="${busNo}"/>
						<c:param name="from" value="${from}"/>
						<c:param name="to" value="${to}"/>
						<c:param name="time" value="${time}"/>
						<c:param name="price" value="${price}"/>
						<c:param name="date" value = "${date}"/>
					</c:url>
					<a href="${bookingPayment}">
					<input type="button" name= "paymentdir" value = "Proceed To Payment" style = "background-color: #ba2f43; /* Green */
																		  border: none;
																		  color: white;
																		  padding: 15px 32px;
																		  text-align: center;
																		  text-decoration: none;
																		  display: inline-block;
																		  font-size: 16px;">
				</a>
				</td>
				
				<td>
					<a href="BookingPage.jsp">
						<input type="button" name= "bookingdir" value = "Back To Booking" style = "background-color: #ba2f43; /* Green */
																		  border: none;
																		  color: white;
																		  padding: 15px 32px;
																		  text-align: center;
																		  text-decoration: none;
																		  display: inline-block;
																		  font-size: 16px;">
					</a>
				</td>
					
			</tr>
			
			
		</c:forEach>
	</table>
	
	<br><br><br><br><br>
	<%@ include file="footer.html" %>
	
</body>
</html>