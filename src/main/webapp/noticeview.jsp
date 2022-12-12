<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page import="com.notice.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
        			Connection conn = null;
        			Statement state = null;
        			ResultSet rs = null;
                	
        			try{
                		conn = DBConnect.getConnection();
                		state = conn.createStatement();
                		String sql = "select * from notices";
                		rs = state.executeQuery(sql);
        			
						while(rs.next())
						{
							int noticeID = rs.getInt(1);
							String date = rs.getString(2);
							String description = rs.getString(3);
							%><div class = "item-box emp-list-box">
							<p><%out.print(rs.getInt(1)); %> - <%out.print(rs.getString(2)); %> <%out.print(rs.getString(3)); %></p>
							<br>
							
							<button><a href = "delete.jsp?id=<%out.print(rs.getInt(1)); %>">Delete Employee</a></button>

							
							</div><%
						}
        			}
        			catch(Exception e){
        				e.printStackTrace();
        			}
        			
        			%>



</body>
</html>