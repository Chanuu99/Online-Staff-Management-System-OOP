<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
 	<%@ page import="java.util.*"%>
	<%@ page import="com.HRmanager.*"%>
    
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <!-- Title Page-->
    <title>Update Salary</title>

    <!-- Icons font CSS-->
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="css/salary.css" rel="stylesheet" media="all">
</head>

<body>

<%

String pid = request.getParameter("id");

Connection conn = null;
Statement state = null;
ResultSet rs = null;

	try{
	conn = DBConnect.getConnection();
	state = conn.createStatement();
	String sql = "select * from salary where id = '"+pid+"'";
	rs = state.executeQuery(sql);
	
	rs.next();
	
		int id = rs.getInt(1);
		String first_name = rs.getString(2);
		String last_name = rs.getString(3);
		String email = rs.getString(4);
		String basic_sal = rs.getString(5);
		String ot_hours = rs.getString(6);
		String ot_rate = rs.getString(7);
		String salary = rs.getString(8);
	}
	catch(Exception e){
		e.printStackTrace();
	}
		
	%>

    <div class="page-wrapper bg-gra-03 p-t-45 p-b-50">
        <div class="wrapper wrapper--w790">
            <div class="card card-5">
                <div class="card-heading">
                    <h2 class="title">Update Salary Details</h2>
                </div>
                <div class="card-body">
                    <form action="update" method="POST">
                        <div class="form-row m-b-55">
                            <div class="name">Name</div>
                            <div class="value">
                                <div class="row row-space">
                                    <div class="col-2">
                                        <div class="input-group-desc">
                                            <input class="input--style-5" type="text" name="first_name" value="<% out.print(rs.getString(2)); %>" required>
                                            <label class="label--desc">first name</label>
                                        </div>
                                    </div>
                                    <div class="col-2">
                                        <div class="input-group-desc">
                                           <input class="input--style-5" type="text" name="last_name" value="<% out.print(rs.getString(3)); %>" required>
                                            <label class="label--desc">last name</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Email</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="email" name="email" value="<% out.print(rs.getString(4)); %>" required>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Basic Salary</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="text" name="basic_sal" value="<%out.print(rs.getString(5)); %>" required>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">OT hours</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="text" name="ot_hours" value="<%out.print(rs.getString(6)); %>" required>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">OT rate</div>
                            <div class="value">
                                <div class="input-group">
                                    <input class="input--style-5" type="text" name="ot_rate" value="<% out.print(rs.getString(7)); %>" required>
                                </div>
                            </div>
                        </div>
                        <div>
                        	<input type = "text" name = "id" value = "<%out.print(rs.getInt(1));%>" style = "visibility:hidden;">
                            <button class="btn btn--radius-2 btn--red" type="submit">Update & Calculate</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Main JS-->
    <script src="js/salary.js"></script>

</body>

</html>
<!-- end document-->