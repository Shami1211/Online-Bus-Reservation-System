package com.booking;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	
	//Database credentials
	private static String url = "jdbc:mysql://localhost:3306/travel";
	private static String username = "root";
	private static String password = "1234";
	private static Connection con;
	
	
	//method is used to declare connection for the database
	public static Connection getConnection() {
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(url, username, password);
		
			
		}catch(Exception e) {
			System.out.println("Database Connection Unsuccesful!");
		}
		
		return con;
		
	}

}
