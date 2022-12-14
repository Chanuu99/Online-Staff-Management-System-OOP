package com.HRmanager;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/DeleteCustomerServlet")
public class DeleteSalaryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		boolean isTrue;
		
		isTrue = StaffDBUtil.deleteSalary(id);
		
		if (isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("HRdashboard.jsp");
			dispatcher.forward(request, response);
		}
		else {
			
			//List<Salary> salDetails = StaffDBUtil.getSalaryDetails(id);
			//request.setAttribute("cusDetails", salDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("deleteSalary.jsp");
			dispatcher.forward(request, response);
		}
		
		
		
	}

}
