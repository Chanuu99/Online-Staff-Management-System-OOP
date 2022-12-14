package com.HRmanager;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateSalaryServlet")
public class UpdateSalaryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String first_name = request.getParameter("first_name");
		String last_name = request.getParameter("last_name");
		String email = request.getParameter("email");
		String basic_sal = request.getParameter("basic_sal");
		String ot_hours = request.getParameter("ot_hours");
		String ot_rate = request.getParameter("ot_rate");
		
		System.out.println(id);
		System.out.println(first_name);
		System.out.println(last_name);
		System.out.println(email);
		System.out.println(basic_sal);
		System.out.println(ot_hours);
		System.out.println(ot_rate);
		
		boolean isTrue;
		
		isTrue = StaffDBUtil.updatesalary(id, first_name, last_name, email, basic_sal, ot_hours, ot_rate);
		System.out.println(isTrue);
		if(isTrue == true) {
			
			//List<Salary> salDetails = StaffDBUtil.getSalaryDetails(id);
			//request.setAttribute("salDetails", salDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("HRdashboard.jsp");
			dis.forward(request, response);
		}
		else {
			//List<Salary> salDetails = StaffDBUtil.getSalaryDetails(id);
			//request.setAttribute("salDetails", salDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("HRdashboard.jsp");//
			dis.forward(request, response);
		}
	}

}
