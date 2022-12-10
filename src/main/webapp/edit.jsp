<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    <!DOCTYPE html>
<html>
	<head>
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

<!------ Include the above in your HEAD tag ---------->
	
	<link rel="stylesheet" href="css/signup.css">
	<script src="signup.js"></script>
		
	</head>
	
	   
<html lang="en">
  <head>
  	<title></title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'>

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<link rel="stylesheet" href="css/header.css">

	</head>
	<body>
	<section class="ftco-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-6 text-center mb-5">
					
				</div>
			</div>
		</div>
		
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
				<form action="#" class="searchform order-lg-last">
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
	        	
	          <li class="nav-item"><a href="#" class="nav-link">Contact</a></li>
	          
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

	<body>

<div class="container">
            <form class="form-horizontal" role="form">
                <h2>EDIT PROFILE</h2>
                <div class="form-group">
                    <label for="firstName" class="col-sm-3 control-label">First Name</label>
                    <div class="col-sm-9">
                        <input type="text" id="firstName" placeholder="First Name" class="form-control" autofocus value="" required>
                    </div>
                </div>
                <div class="form-group">
                    <label for="lastName" class="col-sm-3 control-label">Last Name</label>
                    <div class="col-sm-9">
                        <input type="text" id="lastName" placeholder="Last Name" class="form-control" autofocus value="" required>
                    </div>
                </div>
                <div class="form-group">
                    <label for="username" class="col-sm-3 control-label">User Name </label>
                    <div class="col-sm-9">
                        <input type="text" id="username" placeholder="User Name" class="form-control" name= "username" value="" required>
                    </div>
                    </div>
                <div class="form-group">
                    <label for="email" class="col-sm-3 control-label">Email </label>
                    <div class="col-sm-9">
                        <input type="email" id="email" placeholder="Email" class="form-control" name= "email" value="" required>
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="birthDate" class="col-sm-3 control-label">Date of Birth</label>
                    <div class="col-sm-9">
                        <input type="date" id="birthDate" class="form-control" value="" required>
                    </div>
                </div>
                <div class="form-group">
                    <label for="phoneNumber" class="col-sm-3 control-label">Phone number </label>
                    <div class="col-sm-9">
                        <input type="phoneNumber" id="phoneNumber" placeholder="Phone number" class="form-control" value="" required>
                        <span class="help-block">Your phone number won't be disclosed anywhere </span>
                    </div>
                </div>
                <div class="form-group">
                        <label for="Height" class="col-sm-3 control-label">City </label>
                    <div class="col-sm-9">
                        <input type="text" id="height" placeholder="City" class="form-control" value="" required>
                    </div>
                </div>
                 <div class="form-group">
                        <label for="weight" class="col-sm-3 control-label">Status</label>
                    <div class="col-sm-9">
                        <input type="text" id="weight" placeholder="Status" class="form-control" value="" required>
                    </div>
                </div>
                
                     <div class="form-group">
                     <label for="qualification" class="col-sm-3 control-label">Qualifications</label>
                    <div class="col-sm-9">
            <textarea id="txtName" class="form-control" name="text" placeholder="" rows="4" cols="35" value=""></textarea><br>
         </div>
         </div>
                <div class="form-group">
                    <label class="control-label col-sm-3">Gender</label>
                    <div class="col-sm-6">
                        <div class="row">
                            <div class="col-sm-4">
                                <label class="radio-inline">
                                    <input type="radio" name="radio" id="femaleRadio" value="Female">Female
                                </label>
                            </div>
                            <div class="col-sm-4">
                                <label class="radio-inline">
                                    <input type="radio" name="radio" id="maleRadio" value="Male">Male
                                </label>
                            </div>
                        </div>
                    </div>
                </div> <!-- /.form-group -->
                <div class="form-group">
                    <div class="col-sm-9 col-sm-offset-3">
                        
                    </div>
                </div>
                <button type="submit" class="btn btn-primary btn-block">Save Changes</button>
            </form> <!-- /form -->
        </div> <!-- ./container -->
         </div> 
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