package com.HRmanager;
	
	import java.io.IOException;

	import javax.servlet.RequestDispatcher;
	import javax.servlet.ServletException;
	import javax.servlet.annotation.WebServlet;
	import javax.servlet.http.HttpServlet;
	import javax.servlet.http.HttpServletRequest;
	import javax.servlet.http.HttpServletResponse;


	@WebServlet("/InsertSalaryServlet")
	public class InsertSalaryServlet extends HttpServlet {
		private static final long serialVersionUID = 1L;


		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			String first_name = request.getParameter("first_name");
			String last_name = request.getParameter("last_name");
			String email = request.getParameter("email");
			String basic_sal = request.getParameter("basic_sal");
			String ot_hours = request.getParameter("ot_hours");
			String ot_rate = request.getParameter("ot_rate");
			String salary = request.getParameter("salary");
			
			
			boolean isTrue;
			
			isTrue = StaffDBUtil.insertsalary(0, first_name, last_name, email, basic_sal, ot_hours, ot_rate, salary );
			
			
			if(isTrue == true) {
				RequestDispatcher dis = request.getRequestDispatcher("HRdashboard.jsp");
				dis.forward(request, response);
			} else {
				RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
				dis2.forward(request, response);
			}
			
			
		}

	}

