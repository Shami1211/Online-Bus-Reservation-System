package com.bus;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BusInsert
 */
@WebServlet("/BusInsert")
public class BusInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
    	
    	//catches the data entered from AddBusDetails.jsp
    	String busNo = request.getParameter("busNo");
    	String from = request.getParameter("from");
    	String to = request.getParameter("to");
    	String time = request.getParameter("time");
    	String noOfSeats = request.getParameter("noOfSeats");
    	String price = request.getParameter("price");
    	
    	//catch the information passed by Form and call insertBus method in BusUtil.java class
    	Boolean caught = BusUtil.insertBus(busNo, from, to, time, noOfSeats, price);
    	
    	if(caught == true) {
    		
    		//create List object to retrieve and pass values to BusProfile.jsp
    		List<Bus> busDetails = BusUtil.getBusDetails(busNo);
			request.setAttribute("busDetails", busDetails);
    		RequestDispatcher dis3 = request.getRequestDispatcher("BusProfile.jsp");
    		dis3.forward(request, response);
    	}else {
    		RequestDispatcher dis4 = request.getRequestDispatcher("Unsuccess.jsp");
    		dis4.forward(request, response);
    	}
	}

}
