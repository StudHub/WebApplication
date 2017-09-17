<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication10.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
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
        var x = 67;
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
            var m = document.getElementById("p1");
            m.appendChild(d);
            d.className = "input-group";
            d.style.marginTop = "2%";
            var tx = document.createElement("input");
            tx.id = "ok" + i;
            var s=document.createElement("span");
            
          d.appendChild(s);
        d.appendChild(tx);
        tx.className = "form-control";
        tx.style.width = "635px";
        tx.style.height = "30px";
        //tx.style.marginTop = "2%";
        tx.placeholder = "option";
        s.className = "input-group-addon";
        s.textContent = String.fromCharCode(x);
        x++;
      
          //  var b = document.createElement("br");
           // m.appendChild(b);
            //var b1 = document.createElement("br");
            //m.appendChild(b1);

            i++;
           // jump();
        }
        function jump( ) {
            
            var x = "ok" + p;
            
            document.getElementById(x).innerHTML = "done" + i;
            p++;
        }
        
    </script>
</head>
<body>
    <form id="form1" runat="server">
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
      <asp:Button ID="Button1" runat="server" Text="Add Image" CssClass="btn" BackColor="#003366" ForeColor="White"  /> &nbsp&nbsp&nbsp
      <asp:Button ID="Button2" runat="server" Text="Next" CssClass="btn" BackColor="#003366" ForeColor="White"  />
          
          </div>
  </div>
  <div id="mcq"  class="tab-pane fade  "style="padding-left: 195px;" >
     <textarea id="TextArea2" rows="10" class="tab-pane" placeholder="Enter your question or query here" role="toolbar" style="width: 670px;"></textarea>
      
        <div class="input-group" style="margin-top:2%">
            
           <span class="input-group-addon" id="basic-addon1">A</span>
            <input id="Text1" type="text" class="form-control" style="width:635px" placeholder="option" aria-describedby="basic-addon1" />
         </div> 
      <div class="input-group" style="margin-top:2%">
           <span class="input-group-addon"  id="basic-addon2" >B</span>
            <input id="Text2" type="text" class="form-control" style="width:635px"  placeholder="option" aria-describedby="basic-addon1" />
          </div>
       <div id="p1"></div>
          <br />
       
          
      <div  class="active" id="div1" style="margin-right: 0px; margin-left: 60%">
          <input id="add" type="button"  onclick="create()" value="ADD OPTION" class="btn" style="background-color: #003366; color: #FFFFFF;" />
       &nbsp&nbsp&nbsp 
      <asp:Button ID="Button3" runat="server" Text="Add Image" CssClass="btn" BackColor="#003366" ForeColor="White" /> &nbsp&nbsp&nbsp
      <asp:Button ID="Button4" runat="server" Text="Next" CssClass="btn" BackColor="#003366" ForeColor="White"  />
          </div>
  </div>
  
</div>
    </div>
        
    </form>
</body>
</html>
