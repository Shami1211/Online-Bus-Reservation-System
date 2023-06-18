package com.user;

public class SqlQueries {
	public static String selectEmailAndPassword(String email, String password) {
		return "select * from user where email = '"+email+"' and password = '"+password+"'";
	}
	
	public static String insertIntoUser() {
		return "INSERT INTO `user`(`firstName`, `lastName`, `phone`, `email`, `NIC`, `userName`, `password`) VALUES (?,?,?,?,?,?,?)";
	}
	
	public static String selectEmail(String email) {
		return "select * from user where email = '"+email+"'";
	}
	
	public static String selectUsername(String username) {
		return "select * from user where email = '"+username+"'";
	}
	
	public static String updatePassword(String email, String newPassword) {
		return "UPDATE user SET password = '"+newPassword+"' WHERE email = '"+email+"'";
	}
	
	
	

}
