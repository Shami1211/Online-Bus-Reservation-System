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
 * Servlet implementation class UpdateBusTime
 */
@WebServlet("/UpdateBusTime")
public class UpdateBusTime extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    //Catches the values passed through UpdataBusDetails.jsp page and execute updateBus method in BusUtil.java class
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String busNo = request.getParameter("busNo");
		String start = request.getParameter("start");
		String end = request.getParameter("end");
		String time = request.getParameter("time");
		String noOfSeats = request.getParameter("noOfSeats");
		String price = request.getParameter("price");
		
		
		boolean updtrue;
		
		updtrue = BusUtil.updateBus(busNo, start, end, time, noOfSeats, price);
		
		if(updtrue == true) {
			
			//create List object to retrieve and pass values to BusProfile.jsp
			List<Bus> busDetails = BusUtil.getBusDetails(busNo);
			request.setAttribute("busDetails", busDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("BusProfile.jsp");
			dis.forward(request, response);
			
		}
		else {
			RequestDispatcher dis = request.getRequestDispatcher("Unsuccess.jsp");
			dis.forward(request, response);
		}
		
	}

}
