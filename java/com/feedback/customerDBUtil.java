package com.feedback;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.List;
import java.util.ArrayList;


public class customerDBUtil  {
	
	private static Connection con=null;
	private static Statement stmt=null;
	private static ResultSet rs=null;
	
	
	//Method-Insert data into Database
  public static boolean insertcustomer(String full_name,String email,String phone_number,String date,String comment)
		{
			boolean isSuccess = false;
			
			
			
			//Try Block
			try {
				
		         con=DBConnection.getConnection();
		         stmt=con.createStatement();
		         String sql="insert into customer_feedback values (0,'"+full_name+"','"+email+"','"+phone_number+"','"+date+"','"+comment+"')";
				int rs = stmt.executeUpdate(sql);
				
				if(rs > 0) // Data insert Successful
				{
					isSuccess=true;
				}
				else // Data insert Unsuccessful
				{
					isSuccess=false; 
				}
				
			}
			
			//Catch Block
			catch(Exception e)     
			{
			e.printStackTrace();	
			}
			
			
			return isSuccess;
		}
  
    //Validate the name
    public static List<Feedback> Validate(String name)
    {
    	ArrayList< Feedback> feed=new ArrayList<>();
    	
    	
		
		//Try Block
		try {
			con=DBConnection.getConnection();
	        stmt=con.createStatement();
			String sql="select * from customer_feedback where full_name='"+name+"'";
			rs = stmt.executeQuery(sql);
			
			if(rs.next())
			{
				int id=rs.getInt(1);
				String full_name=rs.getString(2);
				String email=rs.getString(3);
				String phone_number=rs.getString(4);
				String date=rs.getString(5);
				String comment=rs.getString(6);
				
				Feedback f=new Feedback(id,full_name,email,phone_number,date,comment);
				feed.add(f);
				
			}
			
		}
		//Catch Block
		catch(Exception e)     
		{
		e.printStackTrace();	
		}
    	
    	
    	
    	return feed;
    	
    	
    }
    
    //Update Customer Details
    public static boolean updatefeedback (String id,String full_name,String email,String phone_number,String date,String comment)
    {
    	
    	boolean isSuccess = false; 
    	
    	
    	try
    	{
    	
    		con=DBConnection.getConnection();
	         stmt=con.createStatement();
			 String sql="update customer_feedback set full_name='"+full_name+"',email='"+email+"',phone_number='"+phone_number+"',date='"+date+"',comment='"+comment+"' "
					+  "where id='"+id+"' ";
			int rs = stmt.executeUpdate(sql);
			
    		if(rs > 0)
    		{
    			isSuccess=true;
    		}
    		else
    		{
    			isSuccess=false;
    		}
    	}
    	
    	catch(Exception e)
    	{
    		e.printStackTrace();
    	}
    	
    	return isSuccess;
    	
    }
    
    //Retrieve Data
    public static List<Feedback> getFeedbackDetails(String Id)
    {
    	int convertedID=Integer.parseInt(Id);
    	ArrayList<Feedback> feed=new ArrayList<> ();
    
    	
    	
    	
    	try
    	{
    		con=DBConnection.getConnection();
	         stmt=con.createStatement();
  			String sql="select * from customer_feedback where id='"+convertedID+"' ";
  			 rs = stmt.executeQuery(sql);
  			
  			while(rs.next())
  			{
  				int id=rs.getInt(1);
  				String full_name=rs.getString(2);
				String email=rs.getString(3);
				String phone_number=rs.getString(4);
				String date=rs.getString(5);
				String comment=rs.getString(6);
				
				Feedback f=new Feedback(id,full_name,email,phone_number,date,comment);
				feed.add(f);
  			}
    		
    	}
    	catch(Exception e)
    	{
    		e.printStackTrace();
    	}
    	
    	return feed;
    	
    }
    
    //Delete Feedback
    public static boolean deleteFeedback(String id)
    {
    	boolean isSuccess = false; 
    	
    	
    	int convId=Integer.parseInt(id);
    			
    			try
    			{
    				con=DBConnection.getConnection();
   		         stmt=con.createStatement();
    	  			String sql="delete from customer_feedback where id='"+convId+"' ";
    	  			int rs = stmt.executeUpdate(sql);
    				
    	  			if(rs > 0)
    	    		{
    	    			isSuccess=true;
    	    		}
    	    		else
    	    		{
    	    			isSuccess=false;
    	    		}
    	  			
    			}
    			catch(Exception e)
    	    	{
    	    		e.printStackTrace();
    	    	}
    			
    			return isSuccess;
    }
 
}
