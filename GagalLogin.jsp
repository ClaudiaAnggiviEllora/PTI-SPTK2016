<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
<title>CV.Putra Harapan Baru Edi Daya Group</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Legalized Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href='//fonts.googleapis.com/css?family=Open+Sans:700,700italic,800,300,300italic,400italic,400,600,600italic' rel='stylesheet' type='text/css'>
<!--Custom-Theme-files-->
   <link href="css/owl.carousel.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css/style.css" rel='stylesheet' type='text/css' />	
	<script src="js/jquery.min.js"> </script>
<!--/script-->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},900);
				});
			});
</script>

<style type="text/css" >
            BODY, P,TD{ font-family: Arial,Verdana,Helvetica, sans-serif; font-size: 10pt }
            A{font-family: Arial,Verdana,Helvetica, sans-serif;}
            B {	font-family : Arial, Helvetica, sans-serif;	font-size : 12px;	font-weight : bold;}
            .error_strings{ font-family:Verdana; font-size:14px; color:#660000;}
        </style><script language="JavaScript" src="gen_validatorv4.js"
        type="text/javascript" ></script>

</head>
<body>
	<!--start-home-->
	<div id="home" class="header">
		<div class="header-top">
			<div class="container">
				<span class="menu"></span>
				<div class="top-menu">
				<ul class="cl-effect-16">
                            <li><a  href="Home.jsp" data-hover="HOME">HOME</a></li> 
                            <li><a  data-hover="REGISTER">REGISTER
                                   <ul><a href="FormSignUpApp.jsp" value="applicant"> Applicant (Tenaga Kerja)</a> </ul>
                                    <ul><a href="FormSignUpCust" value="customer">Customer (Pengguna Jasa)</a></ul>
                             </a></li>
                            <li><a  href="DataLowongan.jsp" data-hover="INFORMASI LOWONGAN KERJA">INFORMASI LOWONGAN KERJA </a></li>
                            <li><a  href="About.jsp" data-hover="About">Tentang Perusahaan</a></li>
                            <li><a  href="FormLoginUser.jsp" data-hover="LOGIN">LOGIN</a></li>
                        </ul>
				</div>
            <!-- script-for-menu -->
				<script>
				$( "span.menu" ).click(function() {
				  $( ".top-menu" ).slideToggle( "slow", function() {
				    // Animation complete.
				  });
				});
			</script>
			<div class="clearfix"></div>
	<!--End-top-nav-script-->
			</div>
		</div>
		 <div class="header-middle">
		 			<div class="container">
				<div class="logo">
					<a href="Home.jsp"><h1>CV. Putra Harapan Baru Edi Daya Group</h1></a>
                                        <h2> Jasa Penyalur Tenaga Kerja</h2>
                                        <p> Jl. Kedawung No.170, Nologaten, Catur Tunggal, Depok, Sleman, Yogyakarta</p>
				</div>
				
				
			</div>
			</div>
       </div>
	  
<!--/contact-->
	 <div class="section-contact">
	    <div class="container">
		<h2 class="second-head">Login</h2>
             
				<div class="contact-main">
					
					<div class="col-md-6 contact-grid">
                                            <h3 style="color:red">Password atau username yang anda masukan salah !</h3>
						<form action="ServletLogin" name="myform" id="myform" method="GET">
							<p class="your-para">UserName :</p>
							<input type="text" name="userName" value="" onfocus="this.value='';" onblur="if (this.value == '') {this.value ='';}">
							<p class="your-para">Password :</p>
							<input type="password" name="passwordUser" value="" onfocus="this.value='';" onblur="if (this.value == '') {this.value ='';}">
							<div class="send">
								<input type="submit" value="Login" >
							</div>
                                                       
						</form>
                                            
                                            <script language="JavaScript" type="text/javascript">//<![CDATA[
//You should create the validator only after the definition of the HTML form
                            var frmvalidator = new Validator("myform");
                             frmvalidator.addValidation("userName", "req", "masukkan username anda");
                             frmvalidator.addValidation("passwordUser", "req", "masukkan password anda");
                             </script>
					</div>
						<div class="clearfix"> </div>
			      </div>
	       </div>
     </div>

	
	<!--/footer-->
	     <div class="footer">
		    <div class="container">
				 <div class="footer-top">
				    <div class="col-md-4 footer-grid">
					     <h4>Get Free Consultation</h4>
				          <ul class="bottom">
							 <li>(888) 123-456-7890</li>
							 <li>Available 24/7</li>
						 </ul>
				    </div>
					  <div class="col-md-4 footer-grid">
					     <h4>Message Us Now</h4>
				            <ul class="bottom">
						     <li><i class="glyphicon glyphicon-home"></i>Available 24/7 </li>
							 <li><i class="glyphicon glyphicon-envelope"></i><a href="mailto:info@example.com">mail@example.com</a></li>
						   </ul>
				    </div>
					<div class="col-md-4 footer-grid">
					     <h4>Address Location</h4>
				           <ul class="bottom">
						     <li><i class="glyphicon glyphicon-map-marker"></i>2901 Glassgow Road, WA 98122-1090 </li>
							 <li><i class="glyphicon glyphicon-earphone"></i>phone: (888) 123-456-7899 </li>
						   </ul>
				    </div>
					<div class="clearfix"> </div>
				 </div>
			</div>
	     </div>
		<div class="copy">
		     <p>&copy; 2016 Legalized. All Rights Reserved | Design By <a href="http://w3layouts.com/">W3layouts</a></p>
		</div>
		<!--//footer-->
			<!--start-smoth-scrolling-->
						<script type="text/javascript">
									$(document).ready(function() {
										/*
										var defaults = {
								  			containerID: 'toTop', // fading element id
											containerHoverID: 'toTopHover', // fading element hover id
											scrollSpeed: 1200,
											easingType: 'linear' 
								 		};
										*/
										
										$().UItoTop({ easingType: 'easeOutQuart' });
										
									});
								</script>
		<a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>


</body>
</html>