<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
</head>
<body>
	<%@ include file="Header.jsp" %>
	
	<!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex align-items-center">

    <div class="container" data-aos="zoom-out" data-aos-delay="100">
      <div class="row">
        <div class="col-xl-6">
          <h1>Bus Booking Made Easy and Efficient in Sri Lanka</h1>
          <h2>Plan journey, Reserve bus seats, Reach destination.</h2>
          <a href="#about" class="btn-get-started scrollto">Reserve now</a>
        </div>
      </div>
    </div>

  </section><!-- End Hero -->

  <main id="main">
	
	<%@ include file="Footer.jsp" %>
	
	
	<script type="text/javascript">
  	let btnState =  document.getElementById("loginBtn").innerHTML;
  	
  	if(btnState == "null"){
  		document.getElementById("loginBtn").innerHTML = "Sign In";
  		<% session.setAttribute("toBeDone", "Sign In");%>
  	}
  	
	
  
  </script>

</body>
</html>