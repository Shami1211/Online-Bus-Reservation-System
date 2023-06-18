package com.bus;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.booking.DBConnect;

public class BusUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	
	//validate the inserted bus number
	public static boolean validate(String busNo) {
		
		try {
			con = DBConnect.getConnection();			
			stmt = con.createStatement();
			
			String sql="SELECT * FROM availables WHERE bus_no='"+busNo+"'";
			ResultSet rset = stmt.executeQuery(sql);
			
			if(rset.next()) {
				
				isSuccess= true;
				
			}
			else {
				
				isSuccess=false;
			}
					
			
		}catch(SQLException e) {
			e.printStackTrace();
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
		
	}
	
	
	//Executes the SQL query to insert new bus
	public static boolean insertBus(String busNo, String from, String to, String time, String noOfSeats, String price) {
		
		boolean issuccess = false;
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "insert into availables values('"+busNo+"','"+from+"','"+to+"','"+time+"','"+noOfSeats+"','"+price+"')";
			int result = stmt.executeUpdate(sql);
			
			if(result>0){
				issuccess = true;
			}else {
				issuccess = false;
			}
			
		}catch(SQLException e) {
			e.printStackTrace();
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return issuccess;
	}
	
	
	//Executes the query to update bus time table
	public static boolean updateBus(String busNo, String from, String to, String time, String noOfSeats, String price) {
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "UPDATE availables SET time = '"+time+"', noofseats = '"+noOfSeats+"', price = '"+price+"' WHERE bus_no = '"+busNo+"'";
			int updt = stmt.executeUpdate(sql);
			
			if(updt >0) {
				isSuccess = true;
			}else {
				isSuccess = false;
			}
			
			
		}catch(SQLException e) {
			
			e.printStackTrace();
		
		}catch(Exception e) {
			
			e.printStackTrace();
		
		}
		
		return isSuccess;
		
	}
	
	//Executes and return bus object. USed to retrieve data from database
	public static List<Bus> getBusDetails(String busNo){
		
		ArrayList<Bus> bus = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "SELECT * FROM availables WHERE bus_no = '"+busNo+"'";
			ResultSet slct = stmt.executeQuery(sql);
			
			
			while(slct.next()) {
				
				String busNo1 = slct.getString(1);
				String from = slct.getString(2);
				String to = slct.getString(3);
				String time = slct.getString(4);
				String noOfSeat = slct.getString(5);
				String price = slct.getString(6);
				
				Bus busobj = new Bus(busNo1, from, to, time, noOfSeat, price);
				bus.add(busobj);
			}
		}catch(SQLException e) {
			
			e.printStackTrace();
			
		}catch(Exception e) {
			
			e.printStackTrace();
		
		}
		
		return bus;
		
	}
	
	//Executes the query to Delete a bus from the database
	public static boolean deleteBus(String busNo) {
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "DELETE FROM availables WHERE bus_no = '"+busNo+"'";
			int result = stmt.executeUpdate(sql);
			
			if(result > 0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
			
		}catch(SQLException e) {
			
			e.printStackTrace();
		
		}catch(Exception e) {
			
			e.printStackTrace();
		
		}
		
		return isSuccess;
	}
	
}
