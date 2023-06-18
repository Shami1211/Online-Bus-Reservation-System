package com.booking;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TimeValidate
 */
@WebServlet("/TimeValidate")
public class TimeValidate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	//used to pass Start location and destination to check whether there are any busses available
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
    	String from = request.getParameter("start");
    	String to = request.getParameter("end");
    	String noofseats = request.getParameter("noofSeats");
    	
    	boolean isTrue;
    	
    	isTrue = BookingUtil.validate(from, to, noofseats);
    	
    	if(isTrue == true) {
    		
    		//Create List Object to retrive and pass necessary data to the ViewTimeTable.jsp page
    		List<Booking> timeInfo = BookingUtil.getTimeTable(from, to, noofseats);
    		request.setAttribute("busTimes", timeInfo);
    		
    		RequestDispatcher dis3 = request.getRequestDispatcher("ViewTimeTable.jsp");
    		dis3.forward(request, response);
    		
    	}else {
    		
    		RequestDispatcher dis3 = request.getRequestDispatcher("Unsuccess.jsp");
    		dis3.forward(request, response);
    		
    	}
    	
	}

}
