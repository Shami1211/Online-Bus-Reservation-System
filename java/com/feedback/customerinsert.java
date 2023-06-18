package com.feedback;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/customerinsert")

public class customerinsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
      protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    	  {
    	      
    	      String full_name=request.getParameter("name");
    		  String email=request.getParameter("email");
    		  String phone_number =request.getParameter("number");
    		  String date=request.getParameter("date");
    		  String comment=request.getParameter("comment");
    		  
    		  boolean isTrue;
    		    
    		  isTrue=customerDBUtil.insertcustomer(full_name, email, phone_number, date, comment);
    		  
    		  if(isTrue == true)
    		  {
    			 
    			  //Navigate to success.jsp page 
    			 RequestDispatcher dis=request.getRequestDispatcher("customer_feedback.jsp"); 
    			 dis.forward(request, response);
    		  }
    		  else
    		  {
    			//Navigate to unsuccess.jsp page 
    			  RequestDispatcher dis2=request.getRequestDispatcher("uns.jsp"); 
    			  dis2.forward(request, response);
    		  }
    		  
    	  }

}
