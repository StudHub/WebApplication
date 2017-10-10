<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="user_profile.aspx.cs" Inherits="WebApplication4.user_profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
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
         <p runat="server" id="prf_name"><i class="fa fa-pencil fa-fw w3-margin-right w3-text-theme"></i> Name</p>
         <p runat="server" id="prf_country"><i class="fa fa-home fa-fw w3-margin-right w3-text-theme"></i> Country</p>
         <p runat="server" id="prf_birthday"><i class="fa fa-birthday-cake fa-fw w3-margin-right w3-text-theme"></i> Birthday</p>
        </div>
      </div>
      <br>
      
      <!-- Accordion -->
      <div class="w3-card-2 w3-round">
        <div class="w3-white">
        <!--  <button class="w3-button w3-block w3-theme-l1 w3-left-align" onclick="document.getElementById('following').style.display='block'"><i class="fa fa-address-book w3-margin-right"></i>Following</></button>
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
            -->
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
          <p runat="server" id="interest">
           <!-- <span class="w3-tag w3-small w3-theme-d5">News</span>
            <span class="w3-tag w3-small w3-theme-d4">W3Schools</span>
            <span class="w3-tag w3-small w3-theme-d3">Labels</span>
            <span class="w3-tag w3-small w3-theme-d2">Games</span>
            <span class="w3-tag w3-small w3-theme-d1">Friends</span>-->
          
          </p>
        </div>
      </div>
      <br>
    
    <!-- End Left Column -->
    
    
    <!-- Middle Column -->
    <div class="w3-col m9" runat="server"  id="user_post" style="width:100%">      
            
    <!-- End Middle Column -->
    </div>
    
    
  <!-- End Grid -->
  </div>
  
<!-- End Page Container -->
</div>
<br>

 
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
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
