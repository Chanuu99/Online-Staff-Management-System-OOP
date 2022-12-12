package com.notice;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/NoticeupdateServlet")
public class Noticeupdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String noticeID = request.getParameter("noticeID"); 
		String date = request.getParameter("date");
		String description = request.getParameter("description");
		
		boolean isTrue;
		
		isTrue = NoticeUtil.updateNotice(noticeID,date,description);
		
		if(isTrue == true) {
		RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
		dis.forward(request, response);
		
		}else {
			RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
			dis.forward(request, response);
			
		}
	}

}
