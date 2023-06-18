package com.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class ManageState extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
    public ManageState() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		if(session.getAttribute("toBeDone")== null) {
			session.setAttribute("toBeDone", "Sign In");
			response.sendRedirect("Home.jsp");
		}
		else if(session.getAttribute("toBeDone") == "Sign In") {
			session.setAttribute("state", "out");
			response.sendRedirect("busLogin.jsp");
		}else if(session.getAttribute("toBeDone")== "Sign Out") {
			RequestDispatcher r = request.getRequestDispatcher("login");
			r.forward(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
