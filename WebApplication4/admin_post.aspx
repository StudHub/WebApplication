<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="admin_post.aspx.cs" Inherits="WebApplication4.admin_post" %>
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

       function GetDynamicTextBox(s) {


           return '<span class="input-group-addon">' + s + '</span><input name="DynamicTextBox" placeholder="option" type="text" class="form-control"  style="width: 635px;height:35px;"  /><input type="button" class="btn"  value="Remove" style="background:#003366;color:white" onclick="RemoveTextBox(this)" />'
       }
       function AddTextBox() {
           var div = document.createElement('DIV');
           div.className = "input-group";
           div.style.marginTop = "2%";
           var s = String.fromCharCode(x);
           x++;
           div.innerHTML = GetDynamicTextBox(s);
           document.getElementById("option").appendChild(div);
       }

       function RemoveTextBox(div) {
           document.getElementById("option").removeChild(div.parentNode);
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
    <div class="w3-container w3-card-2 w3-white w3-round w3-margin"><br>
      <div>
        <div>
           <h3 style="font-weight: bold" class="auto-style1">Enter Question</h3> 
              
           
            </div>
        <div>
            </div>
   <div id="mcq" style="padding-left: 195px;" >
     <textarea id="TextArea2" runat="server" rows="10" class="tab-pane" placeholder="Enter your question or query here" role="toolbar" style="width: 670px;"></textarea>
      <asp:FileUpload ID="FileUpload1" runat="server" />
     
      <asp:Label ID="Label1" runat="server" Text="Label" visible="false"></asp:Label>
        <br />
       <asp:Label ID="Label2" runat="server" Text="Correct Answer:"></asp:Label>
       <asp:TextBox ID="Tb1" runat="server" Width="300px" placeholder="Enter multiple answers by : separater" ></asp:TextBox>
          <div id="TextBoxContainer">
        <!--Textboxes will be added here -->
    </div>
       <div id="option" ></div>
          <br />
       
      
      <div  class="active" id="div1" style="margin-right: 0px; margin-left: 60% " runat="server">
       
          <input id="Button11" type="button" value="ADD Option" class="btn" style="background:#003366;color:white" onclick="AddTextBox()"/>
          
       &nbsp&nbsp&nbsp 
      <asp:Button ID="Button4" runat="server" Text="ADD" CssClass="btn" BackColor="#003366" ForeColor="White"  OnClick="post"  />
          </div>
  </div>
             
  

    </div>
       <br />
       </div>
   

</asp:Content>
