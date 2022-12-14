<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page import="com.HRmanager.*"%>

<!doctype html>
<html lang="en">
  <head>
  	<title>Salary Details Table</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'>

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<link rel="stylesheet" href="css/HRdashboard.css">

	</head>
	<body>
	<jsp:include page="header.jsp"/>
	
	<div class="bg-gra-03">
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<h2 class="heading-section">HR Manager Dashboard</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<h4 class="text-center mb-4">Staff Salary Details</h4>
					<div class="table-wrap">
					
						<table class="table">
	
					    <thead class="thead-primary">
					      <tr>
					        <th>Name</th>
					        <th>Email</th>
					        <th>Salary (LKR)</th>
					        <th></th>
					        <th><a href="salary.jsp">+Add</a></th>
					      </tr>
					    </thead>
					    

					     
	
	<%
        			Connection conn = null;
        			Statement state = null;
        			ResultSet rs = null;
                	
        			try{
                		conn = DBConnect.getConnection();
                		state = conn.createStatement();
                		String sql = "select * from salary";
                		rs = state.executeQuery(sql);
                		
                		while(rs.next())
						{
							int id = rs.getInt(1);
							String first_name = rs.getString(2);
							String last_name = rs.getString(3);
							String email = rs.getString(4);
							String basic_sal = rs.getString(5);
							String ot_hours = rs.getString(6);
							String ot_rate = rs.getString(7);
							String salary = rs.getString(8);
        			%>
					<tbody>
	 					<tr>
					        <th scope="row" class="scope" ><%out.print(rs.getString(2)); %> <%out.print(rs.getString(3)); %></th>
					        <td><%out.print(rs.getString(4)); %></td>
					        <td><%out.print(rs.getString(8)); %></td>
					        <td><a href="updateSalary.jsp?id=<%out.print(rs.getInt(1)); %>" class="btn btn-primary">Edit</a></td>
					        <td><a href="deleteSalary.jsp?id=<%out.print(rs.getInt(1)); %>" class="btn btn-primary">Delete</a></td>
					      </tr>

				<%
					}
        		}
        		catch(Exception e){
        			e.printStackTrace();
        		}
        			
        		%>
        		</tbody>
					  </table>
					</div>
				</div>
			</div>
		</div>
	</section>
	</div>

  <script src="js/HRdashboard.js"></script>
	<jsp:include page="footer.jsp"/>
	
	</body>
</html>

    