package com.user;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/forgotPassword")
public class ForgotPasswordServlet extends HttpServlet {
	private String host = "mail.smtp2go.com";
    private String port = "2525";
    private String user = "seatlanka@gmail.com";
    private String pass = "#Seatlanka123";
    
	private static final long serialVersionUID = 1L;
	
    public ForgotPasswordServlet() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		
		
		try {
			String email = request.getParameter("email");
			
			DatabaseConnection connection = new DatabaseConnection();
			Connection con = connection.connect();
			
			Statement stmt = con.createStatement();
			
			String sql = SqlQueries.selectEmail(email);
			
			ResultSet rs = stmt.executeQuery(sql);
			
			if(rs.first()) {
				
				String numbers = "0123456789";
				
		        Random rndm_method = new Random();
		  
		        char[] otp = new char[6];
		  
		        for (int i = 0; i < 6; i++)
		        {
		            otp[i] = numbers.charAt(rndm_method.nextInt(numbers.length()));
		        }
		        
		        String oneTimePW = new String(otp);
		        System.out.println(oneTimePW);
		        
		        //ManageOTP storeOTP = new ManageOTP();
				
		        session.setAttribute("otp", oneTimePW);
		        session.setAttribute("email", email);
		        //storeOTP.setOTP(oneTimePW);
		        //storeOTP.setEmail(email);
		        
		        
		        
		        String recipient = email;
		        String subject = "Seats.lk password reset OTP";
		        String content = "Enter this OTP on reset password form to create a new password: " + oneTimePW;
		 
		        String resultMessage = "";
		 
		        try {
		            EmailUtility.sendEmail(host, port, user, pass, recipient, subject,
		                    content);
		            resultMessage = "The e-mail was sent successfully";
		            System.out.print(resultMessage);
		        } catch (Exception ex) {
		            ex.printStackTrace();
		            resultMessage = "There was an error: " + ex.getMessage();
		            System.out.print(resultMessage);
		        } finally {
		            session.setAttribute("Message", resultMessage);
		            //response.sendRedirect("ChangePassword.jsp");
		        }
				
				response.sendRedirect("ChangePassword.jsp");
			}else {
				System.out.print("Invalid email");
				session.setAttribute("error", "Invalid Email");
				response.sendRedirect("ForgotPassword.jsp");
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
