package com.feedback;

import java.io.IOException;

import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Display") 

public class Display extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String full_name=request.getParameter("names");
		
		try {
		List<Feedback> feedDetails= customerDBUtil.Validate(full_name);
		request.setAttribute("feedDetails", feedDetails);
		}
		catch(Exception e)     
		{
		e.printStackTrace();	
		}
		
		
		RequestDispatcher dis=request.getRequestDispatcher("display.jsp");
		dis.forward(request, response);
		
		
		
	}

}
