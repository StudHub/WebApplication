<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login2.aspx.cs" Inherits="WebApplication4.Login2" %>

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
    <asp:ScriptManager ID="ScriptManager1" runat="server" EnablePartialRendering="true" EnablePageMethods="true"></asp:ScriptManager>
        <div>
          
<div class="banner-w3layouts" id="home">
	
		<section class="header-w3ls"> 
			
			<div class="contact-bnr-w3-agile">
				<!--<ul>
					<li><i class="fa fa-envelope" aria-hidden="true"></i>studhub@gmail.com</li>
					<li><i class="fa fa-phone" aria-hidden="true"></i>+91(100)222-0-33</li>	
				</ul>-->
				
		<div class="bottons-agileits-w3layouts">
			<a href="Home.aspx">Login</a>
			<a class="page-scroll" href="#myModal3" data-toggle="modal"><i class="fa fa-pencil-square-o" aria-hidden="true"></i>Register</a>
		</div>
			</div>
		
            <img src="images/logo1.png" />
		<div class="clearfix"> </div>
		
		</section>
<!-- //menu -->
<!-- modal -->
	<div class="modal about-modal w3-agileits fade" >
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
										
				</div>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
    	<div class="modal-body login-page ">
           
        <!-- login-page -->     
									<div class="login-top sign-top">
										<div class="agileits-login">
										<h5>Login</h5>
											<asp:TextBox ID="emailid"  runat="server" placeholder="Email id"></asp:TextBox>
											<asp:TextBox ID="password" placeholder="Password" runat="server" TextMode="Password"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											<asp:Label ID="error" runat="server" Text="Email id or Password not match" ForeColor="Red" Visible="false"></asp:Label>
											<div class="w3ls-submit">
                                            <asp:Button ID="submit" runat="server" Text="Login" OnClick="submit_Click"  />
												
											</div>	

										</div>  
									</div>
						</div>
            </ContentTemplate>
        </asp:UpdatePanel>
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
                                            
                                           <asp:TextBox ID="name" placeholder="Name" runat="server"></asp:TextBox>
                            
											<asp:TextBox ID="remailid" placeholder="Email ID" runat="server"></asp:TextBox>
                            
                            
											<asp:TextBox ID="rpassword" placeholder="Password" runat="server"></asp:TextBox>
                            
                                            <br />
                                            Country:&nbsp
                                           <asp:DropDownList ID="country" runat="server">
                                               <asp:ListItem>India</asp:ListItem>
                                               <asp:ListItem>USA</asp:ListItem>
                                               <asp:ListItem>China</asp:ListItem>
                                               <asp:ListItem>Japan</asp:ListItem>

                                               <asp:ListItem>Russia</asp:ListItem>
                                           </asp:DropDownList>

                                           <asp:TextBox ID="contactno"  placeholder="ContactNo" runat="server"></asp:TextBox>
                                           
                                           
                                            <asp:RadioButton ID="male"  Checked="true" GroupName="gender" runat="server" />&nbsp Male

                                            <asp:RadioButton ID="female" GroupName="gender" runat="server" />&nbsp Female
                                            
                                            <asp:TextBox ID="dob" runat="server" placeholder="Date of Birth - dd/mm/yy"></asp:TextBox>
                                           
                                            <br />
                                            Subjects Of Interest : <br /><br />
                                            <asp:CheckBoxList ID="cl" runat="server">
                                                <asp:ListItem  Selected="True" >DATA STRUCTURE</asp:ListItem>
                                                <asp:ListItem>DBMS</asp:ListItem>
                                                <asp:ListItem>TOC</asp:ListItem>
                                                <asp:ListItem>OS</asp:ListItem>
                                                <asp:ListItem>NETWORK</asp:ListItem>
                                            </asp:CheckBoxList>
                                           
                                            Upload your Photo:
                                            <asp:FileUpload ID="userimage" runat="server" />
                                           
                                            <div class="wthree-text"> 
												<ul> 
													<li>
														<label class="anim">
															
														</label> 
													&nbsp;</li>
												</ul>
												<div class="clearfix"> </div>
											</div>  
											<div class="w3ls-submit"> 
												<asp:Button ID="register" runat="server" Text="Register"  OnClick="reg_Click"/>
											</div>	
									

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
