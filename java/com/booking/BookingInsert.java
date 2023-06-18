package com.booking;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BookingInsert
 */
@WebServlet("/BookingInsert")
public class BookingInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
	//Catches the values passed through PaymentPage.jsp page and execute insertBooking method in BookingUtil.java class
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
    	
    	String busNo = request.getParameter("busNo");
    	String from = request.getParameter("start");
    	String to = request.getParameter("end");
    	String time = request.getParameter("bookingtime");
    	String date = request.getParameter("bookingday");
    	String name = request.getParameter("pname");
    	String mobile = request.getParameter("pmobile");
    	String nic = request.getParameter("pnic");
    	String email = request.getParameter("pemail");
    	String amount = request.getParameter("price");
    	String cardNo = request.getParameter("cardnumber");
    	
    	
    	Boolean isTrue;
    	
    	isTrue = BookingUtil.insertBooking(busNo, from, to, time, date, name, nic, mobile, email, cardNo, amount);
    	
    	
    	
    	if(isTrue == true) {
    		
    		RequestDispatcher dis5 = request.getRequestDispatcher("BookingPage.jsp");
    		dis5.forward(request, response);
    		
    	}else {
    		
    		RequestDispatcher dis6 = request.getRequestDispatcher("Unsuccess.jsp");
    		dis6.forward(request, response);
    		
    	}
    	
	}

}
