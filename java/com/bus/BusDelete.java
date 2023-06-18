package com.bus;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/BusDelete")
public class BusDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	//method to execute the delete function 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//catches the value entered from DeleteBus.jsp
		String busNo = request.getParameter("busNo");
    	
		Boolean dlt = BusUtil.deleteBus(busNo);
		
		if(dlt == true) {
			
			RequestDispatcher dis = request.getRequestDispatcher("AddBusDetails.jsp");
			dis.forward(request, response);
			
		}else {
			
			
			//List object is used to retrieve bus details from database
			List<Bus> busDetails = BusUtil.getBusDetails(busNo);
			request.setAttribute("busDetails", busDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("BusProfile.jsp");
			dis.forward(request, response);
			
		}
    	    			
	}

}
