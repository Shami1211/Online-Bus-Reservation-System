package com.user;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/changePassword")
public class ChangePassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public ChangePassword() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String newPassword = request.getParameter("password");
		String rePassword = request.getParameter("repassword");
		String userOTP = request.getParameter("otp");
		
		
		
		//create database connection
		DatabaseConnection connection = new DatabaseConnection();
		Connection con = connection.connect();
		
		//ManageOTP getOTP = new ManageOTP();
		//String otp = getOTP.getOtp();
		//String email = getOTP.getEmail();
		
		String otp = (String) session.getAttribute("otp");
		String email = (String) session.getAttribute("email");
		
		System.out.println(otp);
		System.out.println(email);
		
		System.out.println(newPassword);
		System.out.println(rePassword);
		
		
		
		
		
		if(otp.equals(userOTP)) {
			if(newPassword.equals(rePassword)) {
				 
				try {
					//String sqlQuery2 = "UPDATE user SET password = '"+newPassword+"' WHERE email = '"+email+"'";
					String sqlQuery = SqlQueries.updatePassword(email,newPassword);
					
					PreparedStatement st = con.prepareStatement(sqlQuery);
		            //st.setString(1, email);
		            //st.setString(2, newPassword);
		            st.executeUpdate();
					System.out.println("executed");
					
					session.setAttribute("error", "");
					session.setAttribute("Message", "");
					
					response.sendRedirect("busLogin.jsp");
					
				}
				catch(Exception e){
					System.out.println("Error" + e);
					e.printStackTrace();
				}
			}else {
				session.setAttribute("error", "Passwords dont match!");
				response.sendRedirect("ChangePassword.jsp");
			}
		}else {
			session.setAttribute("error", "Invalid OTP! Check your email");
			response.sendRedirect("ChangePassword.jsp");
			
		}
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	

}
