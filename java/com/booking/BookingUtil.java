package com.booking;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class BookingUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	
	//Execute SQL query and checks for the available buses on given route
	public static boolean validate(String from, String to, String noofseats) {
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "SELECT * FROM availables WHERE start = '"+from+"' AND end = '"+to+"'";
			ResultSet rset2 = stmt.executeQuery(sql);
			
			if(rset2.next()) {
				
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
	
	// returns the List Of Available busses according to the given route by executing query
	
	public static List<Booking> getTimeTable(String from, String to, String noofseats){
		
		ArrayList<Booking> timeTable = new ArrayList<>();
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "SELECT * FROM availables WHERE start = '"+from+"' AND end = '"+to+"'";
			ResultSet rset3 = stmt.executeQuery(sql);
			
			while(rset3.next()) {
				String busNo = rset3.getString(1);
				String start = rset3.getString(2);
				String end = rset3.getString(3);
				String time = rset3.getString(4);
				//String noOfSeats = rset3.getString(5);
				String price = rset3.getString(6);
				//String date1 = date;
				int amount = Integer.parseInt(price);
				int seatNo = Integer.parseInt(noofseats);
				
				if(seatNo == 2) {
					
					amount = amount * 2;
									
				}else if(seatNo == 3) {
					
					amount = amount * 3;
				}
				else
				{
					amount = amount * 1;
				}
				
				price = String.valueOf(amount);
				
				Booking bookingobj = new Booking(busNo, start, end, time, noofseats, price /*,date1*/);
				timeTable.add(bookingobj);
			}
			
		}catch(SQLException e) {
			
			e.printStackTrace();
		
		}catch(Exception e) {
			
			e.printStackTrace();
		
		}
		
		return timeTable;
	}
	
	//Executes SQL query to insert the values passed through PaymentPage.jsp
	public static boolean insertBooking(String busNo, String start, String end, String time, String date, String name, String nic, String mobile, String email, String cardNo, String amount) {
			
		
		try {
			
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "insert into bookinginfo values(0, '"+busNo+"','"+start+"','"+end+"', '"+time+"', '"+date+"', '"+name+"', '"+nic+"','"+mobile+"','"+email+"','"+cardNo+"','"+amount+"', curdate())";
			int result = stmt.executeUpdate(sql);
			
			if(result > 0) {
				
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

	
}
