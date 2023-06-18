package com.user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class UserValidation {

	public static List<Customer> validate(String userName, String password){
		
		ArrayList<Customer> userx = new ArrayList<>();
		
		//create database connection
		
		String url = "jdbc:mysql://localhost:3306/travel";
		String user = "root";
		String password1 = "1234";
		
		
		//validate
		
		// to display the error without terminate the program
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			Connection con = DriverManager.getConnection(url,user,password1);
			Statement stmt = con.createStatement();
			
			String sql = "select * from user where email = '"+userName+"' and password = '"+password+"'";
			
			ResultSet rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				int id =rs.getInt(1);
				String fname = rs.getString(2);
				String lname = rs.getString(3);
				String phone = rs.getString(4);
				String email = rs.getString(5);
				String nic = rs.getString(6);
				String username = rs.getString(2);
				String pass = rs.getString(2);
				
				Customer c = new Customer(id,fname,lname,phone,email,nic,username, pass);
				
				userx.add(c);
				
			}
			
			con.close();
			
			
		}
		catch(Exception e){
			System.out.println("Error" + e);
			e.printStackTrace();
		}
		
		return userx;
		
	}
	public static List<Customer> validate(String userName, String password, String admin){
		ArrayList<Customer> adminDetails = new ArrayList<>();
		
		if(admin.equals("admin")) {
			
			
			//create database connection][
			
			String url = "jdbc:mysql://localhost:3306/travel";
			String user = "root";
			String password1 = "1234";
			
			
			//validate
			
			// to display the error without terminate the program
			try {
				
				Class.forName("com.mysql.jdbc.Driver");
				
				Connection con = DriverManager.getConnection(url,user,password1);
				Statement stmt = con.createStatement();
				
				String sql = "select * from admins where email = '"+userName+"' and PassWord = '"+password+"'";
				
				ResultSet rs = stmt.executeQuery(sql);
				
				if(rs.next()) {
					int adminID =rs.getInt(1);
					String email = rs.getString(2);
					
					
					Customer c = new Customer(adminID,email);
					
					adminDetails.add(c);
					
				}
				
				con.close();
				
				
			}
			catch(Exception e){
				System.out.println("Error" + e);
				e.printStackTrace();
			}
			
			
		}else {
			System.out.println("User is not an admin!");
			adminDetails.add(null);
		}
		
		return adminDetails;
		
		
	}
}

   