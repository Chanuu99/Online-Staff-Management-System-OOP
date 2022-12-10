<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <!doctype html>
    <!-- header -->
   
<html lang="en">
  <head>
  	<title></title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'>

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<link rel="stylesheet" href="css/header.css">
	<link rel="stylesheet" href="css/index.css">
	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	
	<style>
	.button-set{
		width:100%;
		height:250px;
		background-color:#ffffff60;
		margin-top:100px;
		border-radius:20px;
		}
		
	.cards{
		width:300px;
		height:100%;
		background-color:#00FF0040;
		position:relative;
		float:left;
		left:200px;
		border-radius:40px;
		margin-left:60px;
	}
	.cards:first-child{
		margin-left:0px;
	}
	.cards h3{
		color:white;
		text-align:center;
	}
	.btn{
		margin-left:100px;
	}
	
	</style>
	
	</head>
	<body style = "background:url(images/bg.jpg)">
	<section class="ftco-section" style = "height:0px">
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
	          <li class="nav-item"><a href="#" class="nav-link">Login</a></li>
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
		<div class="container" style = "height:1000px;">
		<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
  <ol class="carousel-indicators">
    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
  </ol>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block w-100" src="images/caro/uni1.jpg" alt="First slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="images/caro/uni2.jpg" alt="Second slide">
    </div>
    <div class="carousel-item">
      <img class="d-block w-100" src="images/caro/uni3.jpg" alt="Third slide">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

<div class = "button-set" style = "">

	<div class = "cards">
		<br>
		<h3>New User?</h3>
		<br><br>
		<h3>Click Here</h3>
		<a href = "accountregister.jsp"><button type="button" class="btn btn-primary">To Register</button></a>
	</div>
	
	<div class = "cards">
		<br>
		<h3>Already Registered?</h3>
		<br><br>
		<h3>Click Here</h3>
		<a href = "login.jsp"><button type="button" class="btn btn-primary">To Login</button></a>
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

    