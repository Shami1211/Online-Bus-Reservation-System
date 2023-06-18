<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Change Password</title>
<link href="assets/css/login.css" rel="stylesheet" >
</head>
<body>
	<%@ include file="header.html" %>
	<div class="login-container">
        <div class="login-header">
            <div class="signin-title">Sign In</div>
        </div>

        <div class="login-body">
            <form class="login-form" action = "<%= request.getContextPath() %>/changePassword" method="post">
            <div>
				    <%
						if ((String) session.getAttribute("Message") != null) {
					%>
						<h2 style="color: red; font-size: 15px" class="error"><% out.print( session.getAttribute("Message")); %></h2>
					<% } %>
				</div>
            	<input type="text" name="otp" class="password" placeholder="OTP" required>
            	<div>
				    <%
						if ((String) session.getAttribute("error") != null) {
					%>
						<h2 style="color: red; font-size: 15px" class="error"><% out.print( session.getAttribute("error")); %></h2>
					<% } %>
				</div>
            	<br>
                <input type="password" name="password" class="password" placeholder="Password" required>
                <input type="password" name="repassword" class="password" placeholder="Retype Password" required>
                
                
                <div class="login">
                    <button type="submit" name="loginbtn" class="loginbtn">SUBMIT</button>				
                </div>
    
                
            </form>
        </div>
        

		
	</div>
	
	
	<%@ include file="footer.html" %>

</body>
</html>