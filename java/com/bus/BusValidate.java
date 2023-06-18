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
 * Servlet implementation class BusValidate
 */
@WebServlet("/BusValidate")
public class BusValidate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	//take the inputs from SearchBUs.jsp 
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String busNumber = request.getParameter("busNo");
		
		boolean isTrue;
		
		isTrue = BusUtil.validate(busNumber);
		
		if(isTrue == true) {
			
			//create List object to retrieve and pass values to BusProfile.jsp
			List<Bus> busInfo = BusUtil.getBusDetails(busNumber);
			request.setAttribute("busDetails", busInfo);
			
			RequestDispatcher dis = request.getRequestDispatcher("BusProfile.jsp");
			dis.forward(request, response);
			
		}else {
			
			RequestDispatcher dis = request.getRequestDispatcher("Unsuccess.jsp");
			dis.forward(request, response);
			
		}
		
	}

}
