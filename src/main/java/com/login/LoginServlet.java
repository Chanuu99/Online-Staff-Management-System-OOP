package com.login;



import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;



import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;




@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
private static final long serialVersionUID = 1L;



protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

PrintWriter out = response.getWriter();
response.setContentType("text/html");

String userName = request.getParameter("username");
String password = request.getParameter("password");
boolean isTrue;
System.out.println("Servlet");
System.out.println(userName);
System.out.println(password);

HttpSession session = request.getSession(true);


isTrue = UserDBUtil.validate(userName, password);

if (isTrue == true) {
//List<Customer> cusDetails = UserDBUtil.getUser(userName);
//request.setAttribute("cusDetails", cusDetails);
	
	session.setAttribute("username", userName);

RequestDispatcher dis = request.getRequestDispatcher("account.jsp");
dis.forward(request, response);
} else {
out.println("<script type='text/javascript'>");
out.println("alert('Your username or password is incorrect');");
out.println("location='login.jsp'");
out.println("</script>");
}

}



}