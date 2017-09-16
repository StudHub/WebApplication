<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication4.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
<title>StudHub</title> 
<!-- custom-theme -->
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Spa Sublime Responsive, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, SmartPhone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- custom-theme -->
<!-- Custom Theme files -->
<link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all"><!-- bootstrap css -->
<link rel="stylesheet" href="css/jquery-ui.css" /><!-- calender css -->
<link rel="stylesheet" type="text/css" href="css/style11.css" /><!-- menu css -->
<link href="css/style.css" type="text/css" rel="stylesheet" media="all"> <!-- css -->
<link href='css/simplelightbox.min.css' rel='stylesheet' type='text/css'><!-- Light-box css -->
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" property="" /><!-- flexslider css -->
<!-- //Custom Theme files -->
<!-- font-awesome icons -->
<link href="css/font-awesome.css" rel="stylesheet" type="text/css" media="all" /> 
<!-- //font-awesome icons -->

<!-- web-fonts -->  
<link href="//fonts.googleapis.com/css?family=Lora:400,700" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,900" rel="stylesheet">
<link href='//fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>
<!-- //web-fonts -->

</head>
    <body class="bg">
    <form id="form1" runat="server">
        <div>
          
<div class="banner-w3layouts" id="home">
	
		<section class="header-w3ls"> 
			
			<div class="contact-bnr-w3-agile">
				<!--<ul>
					<li><i class="fa fa-envelope" aria-hidden="true"></i>studhub@gmail.com</li>
					<li><i class="fa fa-phone" aria-hidden="true"></i>+91(100)222-0-33</li>	
				</ul>-->
				
		<div class="bottons-agileits-w3layouts">
			<a class="page-scroll" href="#myModal2" data-toggle="modal"><i class="fa fa-sign-in" aria-hidden="true"></i>Login</a>.
			<a class="page-scroll" href="#myModal3" data-toggle="modal"><i class="fa fa-pencil-square-o" aria-hidden="true"></i>Register</a>
		</div>
			</div>
		
            <img src="images/logo1.png" />
		<div class="clearfix"> </div>
		
		</section>
<!-- //menu -->
<!-- modal -->
	<div class="modal about-modal w3-agileits fade" id="myModal2" tabindex="-1" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
				</div> 
				<div class="modal-body login-page "><!-- login-page -->     
									<div class="login-top sign-top">
										<div class="agileits-login">
										<h5>Login</h5>
										<form action="#" method="post" id="form1">
											<input type="email" class="email" name="Email" placeholder="Email" required=""/>
											<input type="password" class="password" name="Password" placeholder="Password" required=""/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<div class="wthree-text"> 
												<ul> 
													<li>
														<label class="anim">
															<input type="checkbox" class="checkbox"/>
															<span> Remember me ?</span> 
														</label> 
													</li>
													<li> <a href="#">Forgot password?</a> </li>
												</ul>
												<div class="clearfix"> </div>
											</div>  
											<div class="w3ls-submit"> 
												<input type="submit" value="LOGIN" onclick="window.open('Home.aspx','_self');"/>  	
											</div>	
										</form>

										</div>  
									</div>
						</div>  
				</div> <!-- //login-page -->
			</div>
		</div>
	<!-- //modal --> 
	<!-- modal -->
	<div class="modal about-modal w3-agileits fade" id="myModal3" tabindex="-1" role="dialog">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
				</div> 
				<div class="modal-body login-page "><!-- login-page -->     
									<div class="login-top sign-top">
										<div class="agileits-login">
										<h5>Register</h5>
										<form action="#" method="post">
                                            <input type="text" name="Name" placeholder="Name" required="required"/>
											<input type="text" name="Username" placeholder="Username" required="required"/>
											<input type="email"  name="Email" placeholder="Email" required="required"/>
											<input type="password" name="Password" placeholder="Password" required="required"/>
                                            Country: <select name="Country">
                                                <option value="India">India</option>
                                                <option value="USA">USA</option>
                                                <option value="UK">UK</option>
                                                <option value="China">China</option>
                                                <option value="Japan">Japan</option>
                                                <option value="Russia">Russia</option>
                                            </select>
                                            <input type="text" name="Contact No." placeholder="Contact No." />
                                            Gender:  <input type="radio" group="G" name="gender" value="Male" checked="checked" /> Male  <input type="radio" name="gender" value="Female" /> Female<br /><br />
                                            Birthday <input type="date" group="G" name="birthday"/><br /><br />
                                            Subjects Of Interest : <br /><br />
                                            C/C++  <input type="checkbox" name="SOI" value="C/C++"/>
                                            Java  <input type="checkbox" name="SOI"  value="Java"/>
											Python  <input type="checkbox" name="SOI"  value="Python"/>
                                            DAA  <input type="checkbox" name="SOI"  value="DAA"/>
                                            TOC  <input type="checkbox" name="SOI"  value="TOC"/><br /><br/>
                                            <div class="wthree-text"> 
												<ul> 
													<li>
														<label class="anim">
															<input type="checkbox" class="checkbox/">
															<span> I accept the terms of use</span> 
														</label> 
													</li>
												</ul>
												<div class="clearfix"> </div>
											</div>  
											<div class="w3ls-submit"> 
												<input type="submit" value="Register" onclick="window.open('Home.aspx','_self');">  	
											</div>	
										</form>

										</div>  
									</div>
						</div>  
				</div> <!-- //login-page -->
			</div>
		</div>
	<!-- //modal --> 
<!-- banner -->
<div class="container">
	<div class="callbacks_container">
				<ul class="rslides callbacks callbacks1" id="slider4">
					<li>
						<div class="w3layouts-banner-top">
								<div class="agileits-banner-info">
									<h3><span>S</span>tudy <span>A</span>nd <span>T</span>est</h3>
									<p>Dedicated to improve the skills of students.</p>
								</div>	
						</div>
					</li>
					<li>
						<div class="w3layouts-banner-top w3layouts-banner-top1">
								<div class="agileits-banner-info">
									<h3><span>S</span>urf <span>A</span>nd <span>E</span>xplore</h3>
									<p>Copious info available from many sources.</p>
								</div>	
						</div>
					</li>
					<li>
						<div class="w3layouts-banner-top w3layouts-banner-top2">
								<div class="agileits-banner-info">
									<h3><span>A</span>sk <span>A</span>nd <span>A</span>nswer</h3>
									<p>A turf for all conundrums and their resolution.</p>
								</div>
						</div>
					</li>
					<li>
						<div class="w3layouts-banner-top w3layouts-banner-top3">
								<div class="agileits-banner-info">
									<h3><span>C</span>onnect <span>A</span>nd <span>T</span>hrive</h3>
									<p>Expand your contacts and widen your ken.</p>
								</div>
						</div>
					</li>
				</ul>
			</div>
			
			<div class="clearfix"> </div>
      </div>
</div>
<!-- //banner -->
<!-- about -->
<div class="about" id="about">
	<div class="container">
		<div class="about-top-agileits-w3layouts">
			<div class="col-md-4 about-left-w3-agileits">
				<div class="title-main-w3ls">
					<h3 class="title-w3-agile"><span>A</span>bout <span>U</span>s</h3>
				</div>
			</div>
			<div class="col-md-8 about-right-w3-agileits">
				<h3>We offer a medium to channelize and harness your subjects of interest.</h3>
				<p class="w3_agileits_para">We provide access to our variety of forums and networks of savants to sharpen, scrutinize and ponder what you have never asked before. We work constantly to provide you smooth, faster and efficient working environment. With constant effort from our side, and mutual uderstanding and positive feedback from the user side, we assure to provide the most favorable experience one can ask for.</p>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
		
		
		<div class="clearfix"> </div>
	
</div>

<!-- Gallery -->
<div id="gallery" class="gallery">  
		<div class="container">
			<div class="title-main-w3ls">
				<h3 class="title-w3-agile"><span>F</span>orums & <span>S</span>ervices</h3>
			</div>
		</div>
		<div class="agileinfo-gallery-row">
			<div class="col-md-3 col-sm-3 col-xs-6 w3gallery-grids">
				<a href="images/01.png" class="imghvr-hinge-right figure">
					<img src="images/01.png" alt="" title="Create your network."/> 
					<div class="agile-figcaption">
					<h4>Student Network</h4>
					    <p>Connections just a click away.</p>
					</div>
				</a> 
			</div> 
			<div class="col-md-3 col-sm-3 col-xs-6 w3gallery-grids">
				<a href="images/02.jpg" class="imghvr-hinge-right figure">
					<img src="images/02.jpg" alt="" title="Get your doubts solved."/> 
					<div class="agile-figcaption">
					<h4>Dubious?</h4>
					   <p>Ask your query here.</p>
					</div>
				</a> 
			</div>
			<div class="col-md-3 col-sm-3 col-xs-6 w3gallery-grids">
				<a href="images/03.jpg" class="imghvr-hinge-right figure">
					<img src="images/03.jpg" alt="" title=""/> 
					<div class="agile-figcaption">
					<h4>Synced yet?</h4>
					   <p>Remain up-to-date on all your interests.</p>
					</div>
				</a> 
			</div>
			<div class="col-md-3 col-sm-3 col-xs-6 w3gallery-grids">
				<a href="images/04.jpg" class="imghvr-hinge-right figure">
					<img src="images/04.jpg" alt=""/> 
					<div class="agile-figcaption">
					<h4>Stud indeed huh?</h4>
					   <p>Test your cognizance here.</p>
					</div>
				</a> 
			</div>
			<div class="clearfix"> </div>
			
		</div> 
	</div>
<!-- //Gallery -->
<!-- testimonials -->
	<div class="testimonials">
		<div class="container">
		<div class="title-main-w3ls">
				<h3 class="title-w3-agile"><span>U</span><font color="white">ser</font> <span>R</span><font color="white">eviews</font></h3>
			</div>
			<div class="w3_agileits_testimonial_grids">
				<section class="slider">
					<div class="flexslider">
						<ul class="slides">
							<li>
								<div class="w3_agileits_testimonial_grid">
									<div class="test-bg-w3ls">

										<h4><font color=#fd0006>Rutvik Shah </font> </h4>
										
                                        <p><font color="white">"The network build over this platform is very productive and object-oriented indeed."</font></p>
									</div>
									<img src="images/u1.jpg" alt=" " class="img-responsive" />
									
								</div>
							</li>
							<li>
								<div class="w3_agileits_testimonial_grid">
									<div class="test-bg-w3ls">
										<h4><font color=#fd0006>Manish Prajapati </font> </h4>
										<p><font color="white">"I can always get new ideas and implement them that i find over here."</font></p>
									</div>
									<img src="images/u2.jpg" alt=" " class="img-responsive" />
								</div>
							</li>
							<li>
								<div class="w3_agileits_testimonial_grid">
									<div class="test-bg-w3ls">
										<h4><font color=#fd0006>Shivang Mistry </font> </h4>
										<p><font color="white">"I find the QnA section very useful as all of my doubts are answered in the most comprehensible manner."</font></p>
									</div>
									<img src="images/u3.jpg" alt=" " class="img-responsive" />
									
								</div>
							</li>
						</ul>
					</div>
				</section>
			</div>
		</div>
	</div>
<!--Contact -->
    	<div id="contact" class="contact">
		<div class="container">
			<div class="title-main-w3ls">
				<h3 class="title-w3-agile"><span>C</span>ontact <span>U</span>s</h3>
			</div>
			<div class="contact-info">
				<ul>
					<li><i class="fa fa-location-arrow" aria-hidden="true"></i><h5>Address<span>Aegertweg 4, 8305, India</span></h5></li>
					<li><i class="fa fa-phone" aria-hidden="true"></i><h5>Call Us<span>+91 1122334455</span></h5></li>
					<li><i class="fa fa-envelope-o" aria-hidden="true"></i><h5>Mail Us<span>studhub@gmail.com</span></h5></li>
				</ul>
			</div>
			<div class="contact-w3ls-row">
				<form action="#" method="post">
					<div class="col-md-5 col-sm-5 contact-right agileits-w3layouts">
						<textarea name="Message" placeholder="Message" required=""></textarea>
					</div>
					<div class="col-md-7 col-sm-7 contact-left agileits-w3layouts">
						<input type="text" name="First Name" placeholder="First Name" required="">
						<input class="email" name="Last Name" type="text" placeholder="Last Name" required="">
						<input type="text" name="Number" placeholder="Mobile Number" required="">
						<input class="email" name="Email" type="email" placeholder="Email" required="">
						<input type="submit" value="SUBMIT">
					</div> 
					<div class="clearfix"> </div> 
				</form>
			</div>  
		</div>
	</div>
<!-- js -->
<script type='text/javascript' src='js/jquery-2.2.3.min.js'></script>
<!-- //js -->
<!-- Calendar -->
				<script src="js/jquery-ui.js"></script>
				  <script>
						  $(function() {
							$( "#datepicker,#datepicker1,#datepicker2,#datepicker3" ).datepicker();
						  });
				  </script>
			<!-- //Calendar -->
<script type="text/javascript" src="js/simple-lightbox.min.js"></script>
			<script>
				$(function(){
					var gallery = $('.agileinfo-gallery-row a').simpleLightbox({navText:		['&lsaquo;','&rsaquo;']});
				});
			</script>  

<script src="js/jquery.nicescroll.js"></script>
<script src="js/scripts.js"></script>
<!--search-bar-->
		<script src="js/main.js"></script>	
<!--//search-bar-->

<!--responsiveslides js-->
<script src="js/responsiveslides.min.js"></script>
			<script>
						// You can also use "$(window).load(function() {"
						$(function () {
						  // Slideshow 4
						  $("#slider4").responsiveSlides({
							auto: true,
							pager:true,
							nav:false,
							speed: 500,
							namespace: "callbacks",
							before: function () {
							  $('.events').append("<li>before event fired.</li>");
							},
							after: function () {
							  $('.events').append("<li>after event fired.</li>");
							}
						  });
					
						});
			</script>
<!--responsiveslides js-->
<!-- flexSlider -->
					<script defer src="js/jquery.flexslider.js"></script>
					<script type="text/javascript">
					$(window).load(function(){
					  $('.flexslider').flexslider({
						animation: "slide",
						start: function(slider){
						  $('body').removeClass('loading');
						}
					  });
					});
				  </script>
				<!-- //flexSlider -->
<!--menu script-->
<script type="text/javascript" src="js/modernizr-2.6.2.min.js"></script>
<script src="js/classie.js"></script>
<script src="js/demo1.js"></script>
<!--//menu script-->
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- start-smoth-scrolling -->
<!-- smooth scrolling -->
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
	<a href="#home" class="scroll" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
<!-- //smooth scrolling -->

<!--js for bootstrap working-->
	<script src="js/bootstrap.js"></script>
<!-- //for bootstrap working -->

        </div>
    </form>

</body>
</html>
