<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Payment Portal</title>
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
		//String noOfSeats = request.getParameter("noOfSeats");
		String price = request.getParameter("price");
		//String date = request.getParameter("bookingday");
	
	%>
	
	<form action="payment" method="post">
		<fieldset>
		<legend>Trip Details</legend>
			Bus Number: <input type="text" name="busNo" value = "<%= busNo %>" readonly><br><br>
			From: 
				<input type = "text" name ="start" value = "<%= from %>" readonly><br><br>
					
			To: 
				<input type ="text" name= "end" value = "<%= to %>" readonly><br><br>
	
			Time: <input type="time" name = "bookingtime" value = "<%= time %>" readonly><br><br>
			
			Date: <input type="date" name = "bookingday" required><br><br>
		</fieldset>
		
		<br><br>
	
		<fieldset>
			<legend >Passenger Details</legend>
				<label>Passenger Name:</label>
		       	<input type="text" name="pname" id="pname" class="full-width" placeholder="Nimal Perera" required><br><br>
		        <label>Mobile Phone No.:</label>
		        <input type="text" name="pmobile" class="full-width" placeholder="07xxxxxxxx" required><br><br>
		        <label>NIC/Passport No.:</label>
		        <input type="text" name="pnic" class="full-width" placeholder="123456789101" required><br><br>
		        <label>Email Address:</label>
		        <input type="text" name="pemail" class="full-width" placeholder="example@email.com" required><br><br>
		</fieldset>
		<br><br>
		<fieldset>
			<legend >Payment Details</legend>
			
				<label for="amount">Amount To Be Paid:</label>
				<input type = "text" name = "price" value = "<%= price %>" readonly><br>
				<label for="fname">Accepted Cards</label>
                
                <div class="icon-container">
                  <i class="fa fa-cc-visa" style="color:navy;"></i>
                  <i class="fa fa-cc-amex" style="color:blue;"></i>
                  <i class="fa fa-cc-mastercard" style="color:red;"></i>
                  <i class="fa fa-cc-discover" style="color:orange;"></i>
                </div>
                
                <label for="cname">Name on Card</label>
                <input type="text" id="cname" name="cardname" placeholder="K S M Senarathne" required><br><br>
                <label for="ccnum">Credit card number</label>
                <input type="text" id="ccnum" name="cardnumber" placeholder="1111-2222-3333-4444" pattern = "[0-9]{4}-[0-9]{4}-[0-9]{4}-[0-9]{4}" required><br><br>
                <label for="expmonth">Exp. Month</label>
                <input type="text" id="expmonth" name="expmonth" placeholder="03" required><br><br>
          		<label for="expyear">Exp Year</label>
                <input type="text" id="expyear" name="expyear" placeholder="2025" required><br><br>
                <label for="cvv">CVV</label>
                <input type="text" id="cvv" name="cvv" placeholder="999" pattern="[0-9]{3}" required><br><br>
                
              	<input type="checkbox" id="checkbox" class="inputstyle" onclick="enableButton()"> Agree to Terms and Conditions<br><br>
              	
              	<script>
              	function enableButton()
              	{
              	    if(document.getElementById("checkbox").checked)
              	    {
              	        document.getElementById("submitBtn").disabled = false;
              	    }
              	    else
              	    {
              	        document.getElementById("submitBtn").disabled = true;
              	    }
              	}
              	</script>
            	
              	<input type="submit" value="Pay Now" id="submitBtn" class="btn" style = "background-color: #ba2f43; /* Green */
																						  border: none;
																						  color: white;
																						  padding: 15px 32px;
																						  text-align: center;
																						  text-decoration: none;
																						  display: inline-block;
																						  font-size: 16px;" disabled>
		</fieldset>
		<br><br>
	</form>
	</div>
	<br><br><br><br><br>
	<%@ include file="footer.html" %>
	
</body>
</html>