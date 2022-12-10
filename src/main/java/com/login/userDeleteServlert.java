package com.login;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class userDeleteServlert
 */
@WebServlet("/userDeleteServlert")
public class userDeleteServlert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public userDeleteServlert() {
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
		boolean isTrue = false;
		
		isTrue = UserDBUtil.deleteUser(id);
		if (isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
			dispatcher.forward(request, response);
		}
		else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("account.jsp");
			dispatcher.forward(request, response);
		}
	}

}
