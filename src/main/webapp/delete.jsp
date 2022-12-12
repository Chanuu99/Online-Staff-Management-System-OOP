<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
    <%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div>
<form action="delete" method = "post">
                <h2>Do you want to delete <%out.print(rs.getString(2));%> <%out.print(rs.getString(3));%>'s Account?</h2>
                    <input type="text" name = "hiddenID" value = "<%out.print(rs.getInt(1));%>"  style = "visibility:hidden"><br>
                    <button><input type="submit" value="Yes" name = "customer" class = "button"></button>
                </form>
                <button>No</button>
            </div>

</body>
</html>