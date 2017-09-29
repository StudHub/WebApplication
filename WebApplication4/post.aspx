<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="post.aspx.cs" Inherits="WebApplication4.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
     <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/bootstrap-theme.css" rel="stylesheet" />
    <link href="css/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="js/bootstrap.min.js" rel="stylesheet" />
    <link href="js/bootstrap.js" rel="stylesheet" />
    <link href="js/npm.js" rel="stylesheet" />
   
   
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    
    <style type="text/css">
        .auto-style1 {
            margin-left: 190px;
            margin-top: 83px;
        }
        .auto-style2 {
            margin-left: 190px;
        }
        .auto-style3 {
            left: 0px;
            top: 0px;
            width: 201px;
        }
        .auto-style4 {
            left: 0px;
            top: 0px;
            width: 258px;
        }
        .auto-style5 {
            left: 0px;
            top: 0px;
            width: 228px;
        }
        </style>
    <script>
        var i = 0;
        var p = 0;
        var x = 65;
        function f1() {
            if (i == 0) {
                document.getElementById("p").innerHTML = "ssasasasa";
                i++;
            }
            else {

                document.getElementById("p").innerHTML = "change";
                i--;
            }
        }
        function create() {
            
            var d = document.createElement("div");
           
            var m = document.getElementById("option");
            
            d.className = "input-group";
            d.style.marginTop = "2%";
            var tx = document.createElement("input");
            tx.id = "ok" + i;
            tx.name = "DynamicTextBox";
        
            var s = document.createElement("span");
        
          d.appendChild(s);
          d.appendChild(tx);
          m.appendChild(d);
        tx.className = "form-control";
        tx.style.width = "635px";
        tx.style.height = "30px";
        
        tx.placeholder = "option";
        s.className = "input-group-addon";
        s.textContent = String.fromCharCode(x);
        x++;
            
            
          
            i++;
          
        }
        
          
        
        function jump() {

           
            var x = "ok" + p;
            
            document.getElementById(x).innerHTML = "done" + i;
            p++;
        }
        function Func() {
            return "ok";
            }
</script>
        
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <form id="form2" runat="server">
     
       
       <asp:HiddenField ID="HiddenField1" runat="server" />
   <div class="w3-container w3-card-2 w3-white w3-round w3-margin"><br>
      <div>
        <div>
           <h3 style="font-weight: bold" class="auto-style1">Create Post</h3> 
               <h4 class="auto-style2">Select what would like to post</h4>
           
            </div>
        <div>
  <ul class="nav nav-pills" style="margin-left: 191px">
  <li class="active"><a data-toggle="pill" href="#query" class="auto-style3">Ask a Query</a></li>
  <li class="auto-style5"><a data-toggle="pill" href="#mcq" class="auto-style4" draggable="true">Post an MCQ</a></li>
  
</ul>
            </div>
          
  <div class="tab-content">
  <div id="query" class="tab-pane fade in active" style="padding-left: 195px;">
      <textarea id="TextArea1" rows="10" class="tab-pane" placeholder="Enter question text here" role="toolbar" style="width: 670px;"></textarea>
      <div class="active" style="margin-right: 0px; margin-left: 60%">
          <br />
      <asp:Button ID="Button1" runat="server" Text="Add Image" CssClass="btn" BackColor="#003366" ForeColor="White"  /> &nbsp&nbsp&nbsp
      <asp:Button ID="Button2" runat="server" Text="Next" CssClass="btn" BackColor="#003366" ForeColor="White"  />
          
          </div>
  </div>
   
  <div id="mcq"  class="tab-pane fade  "style="padding-left: 195px;" >
     <textarea id="TextArea2" runat="server" rows="10" class="tab-pane" placeholder="Enter your question or query here" role="toolbar" style="width: 670px;"></textarea>
      
        <!--<div class="input-group" style="margin-top:2%">
            
           <span class="input-group-addon" id="basic-addon1">A</span>
            <input id="Text2" name="DynamicTextBox" type="text" style="width:635px;height:30px"  placeholder="option" />
         </div> 
      <div class="input-group" style="margin-top:2%">
           <span class="input-group-addon"  id="basic-addon2" >B</span>
          <input id="Text1" name="DynamicTextBox" type="text" style="width:635px;height:30px" placeholder="option" />
          </div>-->
      <div id="TextBoxContainer">
        <!--Textboxes will be added here -->
    </div>
       <div id="option" ></div>
          <br />
       
      
      <div  class="active" id="div1" style="margin-right: 0px; margin-left: 60% " runat="server">
       
          <input id="Button11" type="button" value="button5" onclick="create()"/>
          
       &nbsp&nbsp&nbsp 
      <asp:Button ID="Button3" runat="server" Text="Add Image" CssClass="btn" BackColor="#003366" ForeColor="White"/> &nbsp&nbsp&nbsp
      <asp:Button ID="Button4" runat="server" Text="Next" CssClass="btn" BackColor="#003366" ForeColor="White"  OnClick="Post" />
          </div>
  </div>
             
  
</div>
    </div>
       <br />
       </div>
       </form>
</asp:Content>
