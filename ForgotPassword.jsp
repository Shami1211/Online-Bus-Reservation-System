<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Forgot Password</title>
<link href="assets/css/login.css" rel="stylesheet" >
</head>
<body>
	<%@ include file="header.html" %>

	<div class="login-container">
        <div class="login-header">
            <div class="signin-title">Forgot Password</div>
        </div>

        <div class="login-body">
            <form class="login-form" action = "<%= request.getContextPath() %>/forgotPassword" method="post">
                <input type="emailp" name="email" class="username" placeholder="Email" required>
                <div>
				    <%
						if ((String) session.getAttribute("error") != null) {
					%>
						<h2 style="color: red; font-size: 15px" class="error"><% out.print( session.getAttribute("error")); %></h2>
					<% } %>
				</div>
				
				<div style="color: black; font-size: 15px; margin: 10px">We will send you an OTP for your email.</div>
				<div style="color: black; font-size: 15px; margin-bottom: 10px">Enter it to change the password</div>
                
                <div class="login">
                <button type="submit" name="loginbtn" class="loginbtn">SEND OTP</button>				
                </div> 
            </form>
        </div>
	</div>
	<%@ include file="footer.html" %>

</body>
</html>