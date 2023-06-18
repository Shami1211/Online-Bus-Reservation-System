package com.feedback;

import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateFeedback")

public class UpdateFeedback extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String id=request.getParameter("id");
		String full_name=request.getParameter("full_name");
		String email=request.getParameter("email");
		String phone_number=request.getParameter("phone_number");
		String date=request.getParameter("date");
		String comment=request.getParameter("comment");
		
		
	      boolean isTrue;
	      
	      isTrue=customerDBUtil.updatefeedback(id, full_name, email, phone_number, date, comment);
	      
	      if(isTrue == true)
	    {
	    	  List<Feedback> feedDetails =customerDBUtil.getFeedbackDetails(id);
	    	  request.setAttribute("feedDetails",feedDetails );
	    	  
	    	  RequestDispatcher dis=request.getRequestDispatcher("display.jsp");
	    	  dis.forward(request, response);
	      }
	      else
	      {
	    	  List<Feedback> feedDetails =customerDBUtil.getFeedbackDetails(id);
	    	  request.setAttribute("feedDetails",feedDetails );
	    	  
	    	  RequestDispatcher dis=request.getRequestDispatcher("uns.jsp");
	    	  dis.forward(request, response); 
	      }
	}

}
