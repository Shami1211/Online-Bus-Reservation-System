package com.user;


import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    public RegisterServlet() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		String firstName = request.getParameter("firstName");
		String lastName= request.getParameter("lastName");
		String phone= request.getParameter("phone");
		String email= request.getParameter("email");
		String nic= request.getParameter("NIC");
		String username= request.getParameter("username");
		String password= request.getParameter("password");
		String repassword= request.getParameter("repassword");
		
		if(!passwordsMatch(password,repassword)) {
			session.setAttribute("error", "Passwords don't match!");
			response.sendRedirect("Busreg.jsp");
		}
		else {
			String sqlQuery = SqlQueries.insertIntoUser();
			
			//create database connection
			DatabaseConnection connection = new DatabaseConnection();
			Connection con = connection.connect();
			
			if(isEmailExist(email, con)) {
				System.out.println("User exist!");
				session.setAttribute("error", "An account with this email address is already registered!");
				response.sendRedirect("Busreg.jsp");
			}else if(isUserExist(username,con)){
				System.out.println("User exist!");
				session.setAttribute("error", "An account with this username is already registered!");
				response.sendRedirect("Busreg.jsp");
			}
			else {
				try {
					
					PreparedStatement st = con.prepareStatement(sqlQuery);
					
					st.setString(1,firstName);
					st.setString(2,lastName);
					st.setString(3,phone);
					st.setString(4,email);
					st.setString(5,nic);
					st.setString(6,username);
					st.setString(7,password);
					
					st.executeUpdate();
					
					session.setAttribute("error", "");
					session.setAttribute("state", "out");
					session.setAttribute("toBeDone", "Sign In");
					response.sendRedirect("busLogin.jsp");
					
				}
				catch(Exception e){
					System.out.println("Error" + e);
					e.printStackTrace();
				}
			}
		}
		
		
	}
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
	private boolean isEmailExist(String email, Connection connection) {
		System.out.println("Inside user exist function");
		
		String sqlQuery = SqlQueries.selectEmail(email);
		
		try {
			Statement stmt = connection.createStatement();
			
			ResultSet rs = stmt.executeQuery(sqlQuery);
			
			System.out.println(rs.first());
			
			return rs.first();
			
		}
		catch(Exception e){
			System.out.println("Error" + e);
			e.printStackTrace();
		}
		
		return false;
	}
	
	private boolean isUserExist(String username, Connection connection) {
		System.out.println("Inside user exist function");
		
		String sqlQuery = SqlQueries.selectUsername(username);
		
		try {
			Statement stmt = connection.createStatement();
			
			ResultSet rs = stmt.executeQuery(sqlQuery);
			
			System.out.println(rs.first());
			
			return rs.first();
			
		}
		catch(Exception e){
			System.out.println("Error" + e);
			e.printStackTrace();
		}
		
		return false;
	}
	
	private boolean passwordsMatch(String password, String repassword) {
		return (password.equals(repassword));
	}

}
