package com.notice;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Noticedelete")
public class Noticedelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public Noticedelete() {
        super();
        
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String noticeID = request.getParameter("noticeID");
		
		boolean isTrue;
		isTrue = NoticeUtil.deleteNotice(noticeID);
		if (isTrue==true) {
			RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
			dis.forward(request, response);
			
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
	}
	}

}
