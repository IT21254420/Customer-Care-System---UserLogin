<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>User Profile</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" type="image/x-icon" href="assets/img/intro.ico">

   <!-- CSS here -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
        <link rel="stylesheet" href="assets/css/slicknav.css">
        <link rel="stylesheet" href="assets/css/animate.min.css">
        <link rel="stylesheet" href="assets/css/magnific-popup.css">
        <link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
        <link rel="stylesheet" href="assets/css/themify-icons.css">
        <link rel="stylesheet" href="assets/css/themify-icons.css">
        <link rel="stylesheet" href="assets/css/slick.css">
        <link rel="stylesheet" href="assets/css/nice-select.css">
        <link rel="stylesheet" href="assets/css/style.css">
        
   <style>
   
        body{
		    margin-top:20px;
		    color: #1a202c;
		    text-align: left;
		    background-color: #e2e8f0;    
		}
		.main-body {
		    padding: 15px;
		}
		.card {
		    box-shadow: 0 1px 3px 0 rgba(0,0,0,.1), 0 1px 2px 0 rgba(0,0,0,.06);
		}
		
		.card {
		    position: relative;
		    display: flex;
		    flex-direction: column;
		    min-width: 0;
		    word-wrap: break-word;
		    background-color: #fff;
		    background-clip: border-box;
		    border: 0 solid rgba(0,0,0,.125);
		    border-radius: .25rem;
		}
		
		.card-body {
		    flex: 1 1 auto;
		    min-height: 1px;
		    padding: 1rem;
		}
		
		.gutters-sm {
		    margin-right: -8px;
		    margin-left: -8px;
		}
		
		.gutters-sm>.col, .gutters-sm>[class*=col-] {
		    padding-right: 8px;
		    padding-left: 8px;
		}
		.mb-3, .my-3 {
		    margin-bottom: 1rem!important;
		}
		
		.bg-gray-300 {
		    background-color: #e2e8f0;
		}
		.h-100 {
		    height: 100%!important;
		}
		.shadow-none {
		    box-shadow: none!important;
		}
   
   </style>
</head>
<body>
    
    <!-- Preloader Start -->
    <div id="preloader-active">
        <div class="preloader d-flex align-items-center justify-content-center">
            <div class="preloader-inner position-relative">
                <div class="preloader-circle"></div>
                <div class="preloader-img pere-text">
                    <img src="assets/img/logo/logo1.jpg" alt="">
                </div>
            </div>
        </div>
    </div>
    <!-- Preloader Start -->
    
    <header>
        <!-- Header Start -->
        <div class="header-area header-transparent">
            <div class="main-header header-sticky">
                <div class="container-fluid">
                    <div class="menu-wrapper d-flex align-items-center justify-content-between">
                        <!-- Logo -->
                        <div class="logo">
                            <a href="index.html"><img src="assets/img/logo/logo2.png" alt=""></a>
                        </div>
                        <!-- Main-menu -->
                        <div class="main-menu f-right d-none d-lg-block">
                            <nav>
                                <ul id="navigation">
                                    <li><a href="home2.jsp">Home</a></li>
									<li><a href="contact.html">Help Desk</a></li>
									<li><a href="about.html">About</a></li>
									<li><a href="services.html">Services</a></li>
									<li><a href="Agents.html">Agents</a></li>
                                </ul>
                            </nav>
                        </div>          
                        
                        <!-- Mobile Menu -->
                        <div class="col-12">
                            <div class="mobile_menu d-block d-lg-none"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Header End -->
    </header>
    
        <!--? Hero Start -->
        <div class="slider-area2">
            <div class="slider-height2 hero-overly d-flex align-items-center">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-12">
                            <div class="hero-cap hero-cap2 text-center pt-80">
                                <h2>User Profile</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Hero End -->
        

   	<div class="container">
	   <div class="main-body">
	      <div class="row gutters-sm">
	          
	          <div class="col-md-4 mb-3">
	             <div class="card">
	                <div class="card-body">
	                  <div class="d-flex flex-column align-items-center text-center">
	                     <img src="https://bootdey.com/img/Content/avatar/avatar7.png" alt="Admin" class="rounded-circle" width="150">
	                     <div class="mt-3">
	                        
	                        <c:url value="deleteUser.jsp" var="userdelete">
	                               <c:param name="id" value="${id}"></c:param>
			                       <c:param name="name" value="${name}"></c:param>
			                       <c:param name="email" value="${email}"></c:param>
			                       <c:param name="phoneNumber" value="${phoneNumber}"></c:param>
			                       <c:param name="address" value="${address}"></c:param>
			                       <c:param name="userName" value="${userName}"></c:param>
			                       <c:param name="password" value="${password}"></c:param>
	                        </c:url>
	                        <a href="${userdelete}">
	                        <button class="btn btn-light">Delete Account</button>
	                        </a>
	                        
	                     </div>
	                  </div>
	                </div>
	             </div>
	           </div>
	            
               <div class="col-md-8">
	              <div class="card mb-3">
	                <div class="card-body">
	                
	                    <c:forEach var="user" items="${userDetails}">
    
					    <c:set var="id" value="${user.id}"/>
						<c:set var="name" value="${user.name}"/>
						<c:set var="email" value="${user.email}"/>
						<c:set var="phoneNumber" value="${user.phoneNumber}"/>
						<c:set var="address" value="${user.address}"/>
						<c:set var="userName" value="${user.userName}"/>
						<c:set var="password" value="${user.password}"/>
		                  
		                  <div class="row">
		                    <div class="col-sm-3">
		                      <h6 class="mb-0" style = "color:black;">User Identification Number</h6>
		                    </div>
		                    <div class="col-sm-9 text-secondary" style = "color:black;">
		                      ${user.id}
		                    </div>
		                  </div>
		                  <hr>
						  <div class="row">
		                    <div class="col-sm-3">
		                      <h6 class="mb-0" style = "color:black;">Full Name</h6>
		                    </div>
		                    <div class="col-sm-9 text-secondary" style = "color:black;">
		                      ${user.name}
		                    </div>
		                  </div>
		                  <hr>
		                  <div class="row">
		                    <div class="col-sm-3">
		                      <h6 class="mb-0" style = "color:black;">Email</h6>
		                    </div>
		                    <div class="col-sm-9 text-secondary" style = "color:black;">
		                      ${user.email}
		                    </div>
		                  </div>
		                  <hr>
		                  <div class="row">
		                    <div class="col-sm-3">
		                      <h6 class="mb-0" style = "color:black;">Phone Number</h6>
		                    </div>
		                    <div class="col-sm-9 text-secondary" style = "color:black;">
		                      ${user.phoneNumber}
		                    </div>
		                  </div>
		                  <hr>
		                  <div class="row">
		                    <div class="col-sm-3">
		                      <h6 class="mb-0" style = "color:black;">Address</h6>
		                    </div>
		                    <div class="col-sm-9 text-secondary" style = "color:black;">
		                      ${user.address}
		                    </div>
		                  </div>
		                  <hr>
		                  <div class="row">
		                    <div class="col-sm-3">
		                      <h6 class="mb-0" style = "color:black;">Username</h6>
		                    </div>
		                    <div class="col-sm-9 text-secondary" style = "color:black;">
		                      ${user.userName}
		                    </div>
		                  </div>
		                  <hr>
		                  <div class="row">
		                    <div class="col-sm-3">
		                      <h6 class="mb-0" style = "color:black;">Password</h6>
		                    </div>
		                    <div class="col-sm-9 text-secondary" style = "color:black;">
		                      ${user.password}
		                    </div>
		                  </div>
		                  
		                  </c:forEach>
		                  <c:url value="updateUser.jsp" var="usUpdate">
		                       <c:param name="id" value="${id}"></c:param>
		                       <c:param name="name" value="${name}"></c:param>
		                       <c:param name="email" value="${email}"></c:param>
		                       <c:param name="phoneNumber" value="${phoneNumber}"></c:param>
		                       <c:param name="address" value="${address}"></c:param>
		                       <c:param name="userName" value="${userName}"></c:param>
		                       <c:param name="password" value="${password}"></c:param>
		                       
		                  </c:url>
		                  
		                  <hr>
		                  <div class="row">
		                    <div class="col-sm-12">
		                      <a href="${usUpdate}">
		                      <button class="btn btn-light">Edit Profile</button>
		                      </a>
		                    </div>
		                  </div>
		                 
		                 
     
	                </div>
	              </div>
               </div>
               
	    </div>
      </div>
    </div>

	
	<footer>
        <!--? Footer Start-->
        <div class="footer-area footer-bg">
           <div class="container">
                <div class="footer-top footer-padding">
                    <div class="row d-flex justify-content-between">
                        <div class="col-xl-3 col-lg-4 col-md-5 col-sm-8">
                            <div class="single-footer-caption mb-50">
                                <!-- logo -->
                                <div class="footer-logo">
                                    <a href="index.html"><img src="assets/img/logo/logo3.png" alt=""></a>
                                </div>
                                <div class="footer-tittle">
                                    <div class="footer-pera">
                                        <p class="info1">Grabbing the concsumer’s attention isn’t enough you have to keep that attention for at least a.</p>
                                    </div>
                                </div>
                                <div class="footer-number">
                                    <h4><span>+564 </span>7885 3222</h4>
                                    <p>youremail@gmail.com</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-2 col-md-5 col-sm-6">
                            <div class="single-footer-caption mb-50">
                                <div class="footer-tittle">
                                    <h4>Useful Links</h4>
                                </div>
                                <div class="footer-cap">
                                    <span>New York</span>
                                    <p>123 East 26th Street, Fifth Floor, New York, NY 10011</p>
                                </div>
                                <div class="footer-cap">
                                    <span>Japan</span>
                                    <p>123 East 26th Street, Fifth Floor, New York, NY 10011</p>
                                </div>
                            </div>
                        </div>
                        <!-- Instagram -->
                        <div class="col-xl-4 col-lg-4 col-md-5 col-sm-7">
                            <div class="single-footer-caption mb-50">
                                <div class="footer-tittle">
                                    <h4>Instagram Feed</h4>
                                </div>
                                <div class="instagram-gellay">
                                    <ul class="insta-feed">
                                        <li><a href="#"><img src="assets/img/gallery/insta1.png" alt=""></a></li>
	                                    <li><a href="#"><img src="assets/img/gallery/insta2.png" alt=""></a></li>
	                                    <li><a href="#"><img src="assets/img/gallery/insta3.png" alt=""></a></li>
	                                    <li><a href="#"><img src="assets/img/gallery/insta4.png" alt=""></a></li>
	                                    <li><a href="#"><img src="assets/img/gallery/insta5.png" alt=""></a></li>
	                                    <li><a href="#"><img src="assets/img/gallery/insta6.png" alt=""></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="footer-bottom">
                    <div class="row d-flex justify-content-between align-items-center">
                        <div class="col-xl-9 col-lg-8">
                            <div class="footer-copy-right">
                                <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-4">
                            <!-- Footer Social -->
                            <div class="footer-social f-right">
                                <span>Follow Us</span>
                                <a href="#"><i class="fab fa-twitter"></i></a>
                                <a href="https://www.facebook.com/sai4ull"><i class="fab fa-facebook-f"></i></a>
                                <a href="#"><i class="fas fa-globe"></i></a>
                                <a href="#"><i class="fab fa-instagram"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
           </div>
        </div>
        <!-- Footer End-->
    </footer>
    <!-- Scroll Up -->
    <div id="back-top" >
        <a title="Go to Top" href="#"> <i class="fas fa-level-up-alt"></i></a>
    </div>
   
   <!-- JS here -->
	
		<!-- All JS Custom Plugins Link Here here -->
        <script src="./assets/js/vendor/modernizr-3.5.0.min.js"></script>
		<!-- Jquery, Popper, Bootstrap -->
		<script src="./assets/js/vendor/jquery-1.12.4.min.js"></script>
        <script src="./assets/js/popper.min.js"></script>
        <script src="./assets/js/bootstrap.min.js"></script>
	    <!-- Jquery Mobile Menu -->
        <script src="./assets/js/jquery.slicknav.min.js"></script>

		<!-- Jquery Slick , Owl-Carousel Plugins -->
        <script src="./assets/js/owl.carousel.min.js"></script>
        <script src="./assets/js/slick.min.js"></script>
		<!-- One Page, Animated-HeadLin -->
        <script src="./assets/js/wow.min.js"></script>
		<script src="./assets/js/animated.headline.js"></script>
		
		<!-- Nice-select, sticky -->
        <script src="./assets/js/jquery.nice-select.min.js"></script>
		<script src="./assets/js/jquery.sticky.js"></script>
        <script src="./assets/js/jquery.magnific-popup.js"></script>

        <!-- contact js -->
        <script src="./assets/js/contact.js"></script>
        <script src="./assets/js/jquery.form.js"></script>
        <script src="./assets/js/jquery.validate.min.js"></script>
        <script src="./assets/js/mail-script.js"></script>
        <script src="./assets/js/jquery.ajaxchimp.min.js"></script>
        
		<!-- Jquery Plugins, main Jquery -->	
        <script src="./assets/js/plugins.js"></script>
        <script src="./assets/js/main.js"></script>

</body>
</html>