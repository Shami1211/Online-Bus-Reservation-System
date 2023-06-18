package com.user;

import java.sql.Connection;
import java.sql.DriverManager;

public class DatabaseConnection {
	
	private String url = "jdbc:mysql://localhost:3306/travel";
	private String user = "root";
	private String password1 = "1234";
	private Connection connection;
	
	
	public Connection connect() {
		Connection con= null;
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(url,user,password1);
			
		}
		catch(Exception e){
			System.out.println("Error" + e);
			e.printStackTrace();
		}
		
		return con;
	}
	
	public Connection getConnectionObject() {
		return connection;
	}
	
	

}
