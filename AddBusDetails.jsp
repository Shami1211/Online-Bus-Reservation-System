<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Add New Bus</title>
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




<br><br><br><br>

<div style="margin: auto;
  width: 50%;
  border: 3px solid green;
  padding: 10px;">
	<h2>Add New Bus</h2>
	<form action="BusIn" method = "post" >
		Bus Number: <input type="text" name="busNo" size = "7" maxlength="7" placeholder ="NZ-1234" pattern = "[A-Z]{2}-[0-9]{4}" autofocus required><br><br>
		<label for = "start">From: </label>
			<select id="from" name ="from" required>
				<option value="null">(Choose)</option>
				<option value="Ampara">Ampara</option>
				<option value="Colombo">Colombo</option>
				<option value="Galle">Galle</option>
				<option value="Kandy">Kandy</option>
				<option value="Jaffna">Jaffna</option>
			</select><br><br>
		<label for = "end">To: </label>
			<select id="to" name= "to" required>
				<option value="null">(Choose)</option>
				<option value="Ampara">Ampara</option>
				<option value="Colombo">Colombo</option>
				<option value="Galle">Galle</option>
				<option value="Kandy">Kandy</option>
				<option value="Jaffna">Jaffna</option>
			</select><br><br>
		Time: <input type ="time" name = "time" required><br><br>
		Number of seats: <input type = "text" name = "noOfSeats" required><br><br>
		Price(Per person): <input type = "text" name = "price" required><br><br>
		
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
	</form>
	</div>
	<br><br><br><br><br>
	<%@ include file="footer.html" %>
</body>
</html>