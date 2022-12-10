package com.login;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class userUpdateServlet
 */
@WebServlet("/userUpdateServlet")
public class userUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public userUpdateServlet() {
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
		
		String id = request.getParameter("id");
		String fname = request.getParameter("fName");
		String lname = request.getParameter("lname");
		String email = request.getParameter("email");
		String city = request.getParameter("city");
		String phone = request.getParameter("phone");
		String status = request.getParameter("status");
		String salary = request.getParameter("salary");
		String username = request.getParameter("uname");
		String password = request.getParameter("pass");
		
		boolean isTrue = false;
		System.out.println(id);
		System.out.println(lname);//
		
		isTrue = UserDBUtil.updateUser(id, fname, lname, email, city, phone, status, salary, username, password);
		System.out.println(isTrue);//
		
		if(isTrue==true) {
			RequestDispatcher dis = request.getRequestDispatcher("account.jsp");
			dis.forward(request, response);
		}else {
			RequestDispatcher dis = request.getRequestDispatcher("accountdelete.jsp");
			dis.forward(request, response);
		}
	}

}
