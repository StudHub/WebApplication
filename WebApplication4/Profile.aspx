﻿<!DOCTYPE html>
<html>
<title>StudHub</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-blue-grey.css">
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
html,body,h1,h2,h3,h4,h5 {font-family: "Open Sans", sans-serif}
body {
    background-size:cover;
    background-image:url("images/bg.jpg");
}
</style>
<body class="w3-theme-l5">

<!-- Navbar -->
<div class="w3-top">
 <div class="w3-bar w3-theme-d2 w3-left-align w3-large">
    <a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-white w3-large w3-theme-d2" href="javascript:void(0);" onclick="openNav()"><i class="fa fa-bars"></i></a>
  <a href="Home.aspx" class="w3-bar-item w3-button w3-padding-large w3-theme-d4"><img src="images/logo2.png" title="Home" width="95" height="35" /></a>
  <a href="#" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white" title="Post"><i class="fa fa-globe"></i></a>
  <a href="Profile.aspx" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white" title="My Profile"><i class="fa fa-user"></i></a>
  <a href="#" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white" title="Tests"><i class="fa fa-calendar"></i></a>   
  <!--<a href="#" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white" title="Messages"><i class="fa fa-envelope"></i></a>-->
  <div class="w3-dropdown-hover w3-hide-small">
    <button class="w3-button w3-padding-large" ><i class="fa fa-bell"></i><span class="w3-badge w3-right w3-small w3-green">3</span></button>     
    <div class="w3-dropdown-content w3-card-4 w3-bar-block" style="width:300px">
      <a href="#" class="w3-bar-item w3-button">One new friend request</a>
      <a href="#" class="w3-bar-item w3-button">John Doe posted on your wall</a>
      <a href="#" class="w3-bar-item w3-button">Jane likes your post</a>
    </div>
  </div>
  <a href="Login.aspx" class="w3-bar-item w3-button w3-hide-small w3-right w3-padding-large w3-hover-white" title="Log Out"><i class="fa fa-circle-o-notch"></i></a>
 </div>
</div>

<!-- Navbar on small screens -->
<div id="navDemo" class="w3-bar-block w3-theme-d2 w3-hide w3-hide-large w3-hide-medium w3-large">
  <a href="#" class="w3-bar-item w3-button w3-padding-large">Link 1</a>
  <a href="#" class="w3-bar-item w3-button w3-padding-large">Link 2</a>
  <a href="#" class="w3-bar-item w3-button w3-padding-large">Link 3</a>
  <a href="#" class="w3-bar-item w3-button w3-padding-large">My Profile</a>
</div>

<!-- Page Container -->
<div class="w3-container w3-content" style="max-width:1400px;margin-top:80px">    
  <!-- The Grid -->
  <div class="w3-row">
    <!-- Left Column -->
    <div class="w3-col m3">
      <!-- Profile -->
      <div class="w3-card-2 w3-round w3-white">
        <div class="w3-container">
          <span class="w3-left"><img src="images/u3.jpg" class="w3-circle" style="height:106px;width:106px" alt="Avatar"></span>   
         <h4 >Username</h4>
            <span class="w3-right"><button  onclick="document.getElementById('setting').style.display='block'" class="w3-button w3-green w3-large" title="Settings"><i class="fa fa-gears"></i></button></span><br /><br />
<!--Settings Modal-->
              <div id="setting" class="w3-modal">
    <div class="w3-modal-content w3-card-4 w3-animate-zoom" style="max-width:600px">

      <div class="w3-center"><br>
        <span onclick="document.getElementById('setting').style.display='none'" class="w3-button w3-xlarge w3-hover-red w3-display-topright" title="Close Modal">&times;</span>
        <img src="images/u3.jpg" alt="Avatar" style="width:30%" class="w3-circle w3-margin-top">
      </div>

      <form class="w3-container" action="/action_page.php">
        <div class="w3-section">
          <!--Username:<input class="w3-input w3-border w3-margin-bottom" type="text" placeholder="Enter Username" name="usrname" required>-->
            <div class="w3-half">
            <label>Name:</label><input type="text" name="Name" placeholder="Name" required="required"/><br /><br />
                </div>
            <div class="w3-half">
			<label>Username:</label><input type="text" name="Username" placeholder="Username" required="required"/><br /><br />
                </div>
            <div class="w3-half">
            <label>Email:</label><input type="email"  name="Email" placeholder="Email" required="required"/><br /><br />
                </div>
            <div class="w3-half">
            <label>Password:</label><input type="password" name="Password" placeholder="Password" required="required"/><br /><br />
                </div>
            Country: <select name="Country">
            <option value="India">India</option>
            <option value="USA">USA</option>
            <option value="UK">UK</option>
            <option value="China">China</option>
            <option value="Japan">Japan</option>
            <option value="Russia">Russia</option>
            </select><br /><br />
            Contact No:<input type="text" name="Contact No." placeholder="Contact No." /><br /><br />
            Gender:  <input type="radio" group="G" name="gender" value="Male" checked /> Male  <input type="radio" name="gender" value="Female" /> Female<br /><br />
                                            Birthday <input type="date" group="G" name="birthday"/><br /><br />
                                            Subjects Of Interest : <br /><br />
                                            C/C++  <input type="checkbox" name="SOI" value="C/C++"/>
                                            Java  <input type="checkbox" name="SOI"  value="Java"/>
											Python  <input type="checkbox" name="SOI"  value="Python"/>
                                            DAA  <input type="checkbox" name="SOI"  value="DAA"/>
                                            TOC  <input type="checkbox" name="SOI"  value="TOC"/><br /><br/>
                                            <div class="wthree-text"> 
												<ul> 
												
												</ul>
												<div class="clearfix"> </div>
											</div>  
        </div>
        <div class="w3-container w3-border-top w3-padding-16 w3-light-grey">
        <button onclick="document.getElementById('setting').style.display='none'" type="button" class="w3-button w3-red">Save</button>
      </div>
          </form>
    </div>
  </div>

<!--End Settings Modal-->            
         <hr>
         <p><i class="fa fa-pencil fa-fw w3-margin-right w3-text-theme"></i> Name</p>
         <p><i class="fa fa-home fa-fw w3-margin-right w3-text-theme"></i> Country</p>
         <p><i class="fa fa-birthday-cake fa-fw w3-margin-right w3-text-theme"></i> Birthday</p>
        </div>
      </div>
      <br>
      
      <!-- Accordion -->
      <div class="w3-card-2 w3-round">
        <div class="w3-white">
          <button class="w3-button w3-block w3-theme-l1 w3-left-align" onclick="document.getElementById('following').style.display='block'"><i class="fa fa-address-book w3-margin-right"></i>Following</></button>
          <div id="following" class="w3-modal">
            <div class="w3-modal-content w3-card-4 w3-animate-zoom" style="max-width:600px">
                <div class="w3-center"><br>
                    <span onclick="document.getElementById('following').style.display='none'" class="w3-button w3-xlarge w3-hover-red w3-display-topright" title="Close Modal">&times;</span>
                </div>
              <div class="w3-center"><br>
                <span onclick="document.getElementById('following').style.display='none'" class="w3-button w3-xlarge w3-hover-red w3-display-topright" title="Close Modal">&times;</span>
              </div>
                <div>
                    <ul class="w3-ul w3-card-4">
                    <li class="w3-display-container"><span class="w3-left"><img src="images/u1.jpg" class="w3-circle" alt="Norway" width="50" height="50"></span><h4>Raj </h4><span onclick="this.parentElement.style.display='none'" class="w3-button w3-transparent w3-display-right">&times;</span></li>
                    <li class="w3-display-container"><span class="w3-left"><img src="images/u2.jpg" class="w3-circle" alt="Norway" width="50" height="50"></span><h4>Red </h4><span onclick="this.parentElement.style.display='none'" class="w3-button w3-transparent w3-display-right">&times;</span></li>
                    <li class="w3-display-container"><span class="w3-left"><img src="images/u3.jpg" class="w3-circle" alt="Norway" width="50" height="50"></span><h4>Sam </h4><span onclick="this.parentElement.style.display='none'" class="w3-button w3-transparent w3-display-right">&times;</span></li>
                    </ul>
                </div>

            </div>
        </div>
          <button class="w3-button w3-block w3-theme-l1 w3-left-align" onclick="document.getElementById('follower').style.display='block'"><i class="fa fa-address-book w3-margin-right"></i>Followers</></button>
          <div id="follower" class="w3-modal">
            <div class="w3-modal-content w3-card-4 w3-animate-zoom" style="max-width:600px">
                <div class="w3-center"><br>
                    <span onclick="document.getElementById('follower').style.display='none'" class="w3-button w3-xlarge w3-hover-red w3-display-topright" title="Close Modal">&times;</span>
                </div>
              <div class="w3-center"><br>
                <span onclick="document.getElementById('follower').style.display='none'" class="w3-button w3-xlarge w3-hover-red w3-display-topright" title="Close Modal">&times;</span>
              </div>
                <div>
                    <ul class="w3-ul w3-card-4">
                    <li class="w3-display-container"><span class="w3-left"><img src="images/u3.jpg" class="w3-circle" alt="Norway" width="50" height="50"></span><h4>Jil</h4></li>
                    <li class="w3-display-container"><span class="w3-left"><img src="images/u2.jpg" class="w3-circle" alt="Norway" width="50" height="50"></span><h4>Filll</h4></li>
                        <li class="w3-display-container"><span class="w3-left"><img src="images/u1.jpg" class="w3-circle" alt="Norway" width="50" height="50"></span><h4>Giil</h4></li>
                    </ul>
                </div>
            </div>
        </div>
            
          <button class="w3-button w3-block w3-theme-l1 w3-left-align" onclick="document.getElementById('scores').style.display='block'"><i class="fa fa-calendar w3-margin-right"></i>Test Scores</></button>
            <div id="scores" class="w3-modal">
            <div class="w3-modal-content w3-card-4 w3-animate-zoom" style="max-width:600px">
                <div class="w3-center"><br>
                    <span onclick="document.getElementById('scores').style.display='none'" class="w3-button w3-xlarge w3-hover-red w3-display-topright" title="Close Modal">&times;</span>
                </div>
              <div class="w3-center"><br>
                <span onclick="document.getElementById('scores').style.display='none'" class="w3-button w3-xlarge w3-hover-red w3-display-topright" title="Close Modal">&times;</span>
              </div>
                <div>
                    <div class="w3-light-grey w3-round">
                    <div class="w3-container w3-blue w3-round" style="width:80%">Test 1 - 80%</div>
                    </div><br>
                    <div class="w3-light-grey w3-round-large">
                    <div class="w3-container w3-blue w3-round" style="width:75%">Test 2 - 75%</div>
                    </div><br>
                    <div class="w3-light-grey w3-round-xlarge">
                    <div class="w3-container w3-blue w3-round" style="width:95%">Test 3 - 95%</div>
                </div>
                    
                </div>
            </div>
        </div>
        </div>      
      </div>
      <br>
      
      <!-- Interests --> 
      <div class="w3-card-2 w3-round w3-white w3-hide-small">
        <div class="w3-container">
          <p>Interests</p>
          <p>
            <span class="w3-tag w3-small w3-theme-d5">News</span>
            <span class="w3-tag w3-small w3-theme-d4">W3Schools</span>
            <span class="w3-tag w3-small w3-theme-d3">Labels</span>
            <span class="w3-tag w3-small w3-theme-d2">Games</span>
            <span class="w3-tag w3-small w3-theme-d1">Friends</span>
          
          </p>
        </div>
      </div>
      <br>
    
    <!-- End Left Column -->
    </div>
    
    <!-- Middle Column -->
    <div class="w3-col m9">      
      <div class="w3-container w3-card-2 w3-white w3-round w3-margin"><br>
        <img src="/w3images/avatar2.png" alt="Avatar" class="w3-left w3-circle w3-margin-right" style="width:60px">
        <span class="w3-right w3-opacity">1 min</span>
        <h4>John Doe</h4><br>
        <hr class="w3-clear">
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
          <div class="w3-row-padding" style="margin:0 -16px">
            <div class="w3-half">
              <img src="/w3images/lights.jpg" style="width:100%" alt="Northern Lights" class="w3-margin-bottom">
            </div>
            <div class="w3-half">
              <img src="/w3images/nature.jpg" style="width:100%" alt="Nature" class="w3-margin-bottom">
          </div>
        </div>
        <button type="button" class="w3-button w3-theme-d1 w3-margin-bottom"><i class="fa fa-thumbs-up"></i>  Like</button> 
        <button type="button" class="w3-button w3-theme-d2 w3-margin-bottom"><i class="fa fa-comment"></i>  Comment</button> 
      </div>
      
      <div class="w3-container w3-card-2 w3-white w3-round w3-margin"><br>
        <img src="/w3images/avatar5.png" alt="Avatar" class="w3-left w3-circle w3-margin-right" style="width:60px">
        <span class="w3-right w3-opacity">16 min</span>
        <h4>Jane Doe</h4><br>
        <hr class="w3-clear">
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
        <button type="button" class="w3-button w3-theme-d1 w3-margin-bottom"><i class="fa fa-thumbs-up"></i>  Like</button> 
        <button type="button" class="w3-button w3-theme-d2 w3-margin-bottom"><i class="fa fa-comment"></i>  Comment</button> 
      </div>  

      <div class="w3-container w3-card-2 w3-white w3-round w3-margin"><br>
        <img src="/w3images/avatar6.png" alt="Avatar" class="w3-left w3-circle w3-margin-right" style="width:60px">
        <span class="w3-right w3-opacity">32 min</span>
        <h4>Angie Jane</h4><br>
        <hr class="w3-clear">
        <p>Have you seen this?</p>
        <img src="/w3images/nature.jpg" style="width:100%" class="w3-margin-bottom">
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
        <button type="button" class="w3-button w3-theme-d1 w3-margin-bottom"><i class="fa fa-thumbs-up"></i>  Like</button> 
        <button type="button" class="w3-button w3-theme-d2 w3-margin-bottom"><i class="fa fa-comment"></i>  Comment</button> 
      </div> 
      
    <!-- End Middle Column -->
    </div>
    
    
  <!-- End Grid -->
  </div>
  
<!-- End Page Container -->
</div>
<br>

<!-- Footer -->
<footer class="w3-container w3-theme-d3 w3-padding-16">
  <h5>Footer</h5>
</footer>

<footer class="w3-container w3-theme-d5">
  <p>Powered by <a href="https://www.w3schools.com/w3css/default.asp" target="_blank">w3.css</a></p>
</footer>
 
<script>
    // Accordion
    function myFunction(id) {
        var x = document.getElementById(id);
        if (x.className.indexOf("w3-show") == -1) {
            x.className += " w3-show";
            x.previousElementSibling.className += " w3-theme-d1";
        } else {
            x.className = x.className.replace("w3-show", "");
            x.previousElementSibling.className =
                x.previousElementSibling.className.replace(" w3-theme-d1", "");
        }
    }

    // Used to toggle the menu on smaller screens when clicking on the menu button
    function openNav() {
        var x = document.getElementById("navDemo");
        if (x.className.indexOf("w3-show") == -1) {
            x.className += " w3-show";
        } else {
            x.className = x.className.replace(" w3-show", "");
        }
    }
</script>

</body>
</html> 
