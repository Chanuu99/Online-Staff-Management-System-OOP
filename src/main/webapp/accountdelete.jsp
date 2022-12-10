<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page import="com.login.*"%>
<!DOCTYPE html>
<html lang="en">
  <head>
  <%
	String Username = session.getAttribute("username").toString();
  
  	Connection conn = null;
	Statement state = null;
	ResultSet rs = null;
	
	try{
		conn = DBConnect.getConnection();
		state = conn.createStatement();
		String sql = "select * from user where username ='"+Username+"'";
		rs = state.executeQuery(sql);
		rs.next();
		
	}
	catch(Exception e){
		e.printStackTrace();
	}
 %>
  	<title></title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'>

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<link rel="stylesheet" href="css/header.css">
	<link rel="stylesheet" href="css/index.css">
	
	</head>
	<body style = "background:url(images/bg.jpg)">
		
		<div class="container">
			<div class="row justify-content-between">
				<div class="col">
					<a class="navbar-brand" href="index.html">Princeton <span>university</span></a>
				</div>
				<div class="col d-flex justify-content-end">
					<div class="social-media">
		    		<p class="mb-0 d-flex">
		    			<a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-facebook"><i class="sr-only">Facebook</i></span></a>
		    			<a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-twitter"><i class="sr-only">Twitter</i></span></a>
		    			<a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-instagram"><i class="sr-only">Instagram</i></span></a>
		    			<a href="#" class="d-flex align-items-center justify-content-center"><span class="fa fa-dribbble"><i class="sr-only">Dribbble</i></span></a>
		    		</p>
	        </div>
				</div>
			</div>
		</div>
		<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	    <div class="container">
	    
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="fa fa-bars"></span> Menu
	      </button>
				<form action="login" class="searchform order-lg-last">
          <div class="form-group d-flex">
            <input type="text" class="form-control pl-3" placeholder="Search">
            <button type="submit" placeholder="" class="form-control search"><span class="fa fa-search"></span></button>
          </div>
        </form>
	      <div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav mr-auto">
	        	<li class="nav-item active"><a href="#" class="nav-link">Home</a></li>
	        	<li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Page</a>
              <div class="dropdown-menu" aria-labelledby="dropdown04">
              	<a class="dropdown-item" href="#">Notices</a>
                <a class="dropdown-item" href="#">Send Inquiries</a>
                
              </div>
            </li>
	        	<li class="nav-item"><a href="#" class="nav-link">Profile</a></li>
	          <li class="nav-item"><a href="#" class="nav-link">Contact</a></li>
	          <li class="nav-item"><a href="logout.jsp" class="nav-link">LogOut</a></li>
	        </ul>
	      </div>
	    </div>
	  </nav>
    <!-- END nav -->

	</section>

	<script src="js/jquery.min.js"></script>
  <script src="js/popper.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/main.js"></script>

	</body>
<html lang="en">
  <head>
  	<title>Login 05</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<link rel="stylesheet" href="css/login.css">

	</head>
	<body>
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					<h2 class="heading-section"></h2>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-md-7 col-lg-5">
					<div class="wrap" style = " width:700px;margin-left:-100px;background-color:#4dd2ff60">
						<div class="img" style="background-image: url(images/uni.png);"></div>
						<div class="login-wrap p-4 p-md-5">
			      	<div class="d-flex">
			      		<div class="w-100">
			      			<h3 class="mb-4">Do you want to delete your account?</h3>
			      			
			      			<form action = "DeleteServlert" method = "post">
			      			
			      			<div class="form-group">
			      				<input type = "text" name = "id" value = "<%out.print(rs.getInt(1));%>" style = "visibility:hidden;">
								
		            		</div>
		            		<input type = "submit" class="btn btn-danger" style = "width:200px" value = "Yes">
		            		
		            		</form>
		            		<br>
		            		<button class="btn btn-warning" style = "width:200px"><a href = "account.jsp">No</a></button>
	
			      		</div>
								<div class="w-100">
									<p class="social-media d-flex justify-content-end">
										<a href="#" class="social-icon d-flex align-items-center justify-content-center"><span class="fa fa-facebook"></span></a>
										<a href="#" class="social-icon d-flex align-items-center justify-content-center"><span class="fa fa-twitter"></span></a>
									</p>
								</div>
			      	</div>
							
			      		<div class="form-group mt-3">
			      		</div>
		          
		        </div>
		      </div>
				</div>
			</div>
		</div>
	</section>

	<script src="js/jquery.min.js"></script>
  <script src="js/popper.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/main.js"></script>

	</body>
	
<!-- footer -->
	<link href="css/New.css" rel="stylesheet" id="bootstrap-css">
<link href="css/fontfooter.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<footer class="section footer-classic context-dark bg-image" style="background: #2d3246;">
        <div class="container">
          <div class="row row-30">
            <div class="col-md-4 col-xl-5">
              <div class="pr-xl-4"><a class="brand" href="index.html"></a>
                
                <!-- Rights-->
                <p class="rights"><span>©  </span><span class="copyright-year">2022</span><span> </span><span>SLIIT Students</span><span> - </span><span>All Rights Reserved.</span></p>
              </div>
            </div>
            <div class="col-md-4">
              <h5>Contacts</h5>
              <dl class="contact-list">
                <dt>Address:</dt>
                <dd>9 Nassau Hall, Princeton, NJ 08544-5264</dd>
              </dl>
              <dl class="contact-list">
                <dt>email:</dt>
                <dd><a href="mailto:#">princeton@email.com</a></dd>
              </dl>
              <dl class="contact-list">
                <dt>phones:</dt>
                <dd><a href="tel:#">+88713861717</a> <span>or</span> <a href="tel:#">+88718877629</a>
                </dd>
              </dl>
            </div>
            <div class="col-md-4 col-xl-3">
              <h5>Links</h5>
              <ul class="nav-list">
             
                <li><a href="#">Projects</a></li>
                <li><a href="#">Contacts</a></li>
                <li><a href="#">Policies</a></li>
                <li><a href="#">Library</a></li>
                <li><a href="#">Academic Calendar</a></li>
              </ul>
            </div>
          </div>
        </div>
        <div class="row no-gutters social-container">
          <div class="col"><a class="social-inner" href="#"><span class="icon mdi mdi-facebook"></span><span>Facebook</span></a></div>
          <div class="col"><a class="social-inner" href="#"><span class="icon mdi mdi-instagram"></span><span>Instagram</span></a></div>
          <div class="col"><a class="social-inner" href="#"><span class="icon mdi mdi-twitter"></span><span>Twitter</span></a></div>
          <div class="col"><a class="social-inner" href="#"><span class="icon mdi mdi-youtube-play"></span><span>Youtube</span></a></div>
        </div>
      </footer>
</html>