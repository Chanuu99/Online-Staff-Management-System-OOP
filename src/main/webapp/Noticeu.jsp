<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="java.sql.*"%>
 	<%@ page import="java.util.*"%>
	<%@ page import="com.notice.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update</title>
</head>
<body>

<%String id = request.getParameter("id");
Connection conn = null;
Statement stmt = null;
ResultSet rs = null;

try{
conn = DBConnect.getConnection();
stmt = conn.createStatement();
String sql = "select * from notices where noticeID = '" +id+ "'" ;
rs = stmt.executeQuery(sql);
rs.next();
}
catch(Exception e){
e.printStackTrace();
}
%>

<form action="update" method = "post">

<br>
<h3>Notice ID</h3>
<input type="text" name = "noticeID" value = "<%out.print(rs.getInt(1));%>" class = "text" readonly><br><br>

<h3>Date</h3>
<input type="text" name = "type" value = "<%out.print(rs.getString(2)); %>" class = "text"><br><br>

<h3>Description :</h3>
<textarea>name = "Description" value = "<%out.print(rs.getString(3)); %>" class = "text"></textarea><br><br>

<input type="submit" name="submit" value="update">


</form>



</body>
</html>