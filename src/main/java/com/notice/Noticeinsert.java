package com.notice;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "NoticeinsertServlet", urlPatterns = { "/NoticeinsertServlet" })
public class Noticeinsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public Noticeinsert() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String date =request.getParameter("date");
		String description =request.getParameter("description");
		
		boolean isTrue;
		isTrue = NoticeUtil.insertNotice(date, description);
		if (isTrue==true) {
			RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
			dis.forward(request, response);
			
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
			
			
		}
		
	}

}
