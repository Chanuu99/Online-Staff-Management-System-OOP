package com.login;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class userInsertServlet
 */
@WebServlet("/userInsertServlet")
public class userInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public userInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		String fname = request.getParameter("fName");
		String lname = request.getParameter("lName");
		String email = request.getParameter("email");
		String gender = request.getParameter("gender");
		String city = request.getParameter("city");
		String phone = request.getParameter("phone");
		String dob = request.getParameter("dob");
		String status = request.getParameter("status");
		String salary = request.getParameter("salary");
		String username = request.getParameter("uname");
		String password = request.getParameter("pass");
		
		boolean isTrue = false;
		
		isTrue = UserDBUtil.insertUser(fname, lname, email, gender, city, phone, dob, status, salary, username, password);
		
		if(isTrue==true) {
			RequestDispatcher dis = request.getRequestDispatcher("login.jsp");
			dis.forward(request, response);
		}else {
			RequestDispatcher dis = request.getRequestDispatcher("accountregister.jsp");
			dis.forward(request, response);
		}
	}

}
