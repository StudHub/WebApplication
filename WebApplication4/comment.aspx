<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="comment.aspx.cs" Inherits="WebApplication4.WebForm_test" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
     <style type="text/css">
         .auto-style1 {
             width: 1120px;
         }
     </style>
        }
   
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
<div class="alert" runat="server" id="main" style=" background-color:white;width:90%;margin-left:60px ; height:auto; margin-top:20px" >
    <div id="p_img_user" runat="server">
  <!--  <table >
        <tr>
            <td  style="width:150px">&nbsp;<asp:image runat="server" ImageUrl="images/u3.jpg" Height="100px" Width="100px" CssClass="img-circle"></asp:image></td>
            <td>&nbsp;<h1><asp:label runat="server" text="Label"></asp:label></h1></td>
            
        </tr>
       
    </table>-->
        </div>
    <hr style="background-color: #2A3A56; border-width: thick" />
     <br />
    
               <div runat="server" id="div1" class="alert" style=" background-color:lightblue;width:90%;margin-left:60px ; margin-top:10px" >
                    
                        <h4><b><asp:label ID="l2" runat="server" text="Question with Options" CssClass="active"   ></asp:label></b></h4>  
                    
                </div>
           <!-- all options are also in label take <br> before it for new line-->
      <div id="comments" runat="server"  class="alert" style=" height:auto; width:90%;margin-left:60px ; background-color:#d0ece7; margin-top:10px" >
          
      
    <asp:Label ID="Lcomment" runat="server" Text="<h4>No Comments available!!</h4>"></asp:Label>
      </div>    
    <div id="main2" runat="server"></div>
    
          <div id="d1" class="alert" style=" width:90%;margin-left:60px ; margin-top:10px" ></div>
    <div style="margin-left:200px">   
        <asp:TextBox ID="comment_text" runat="server" placeholder="enter your comment"  CssClass="form-control" Width="735px" Font-Size="20px" ></asp:TextBox>
            <br />
         <div style="margin-left:300px">   
    <asp:Button ID="Button2" runat="server" Text="Submit" CssClass="active" BackColor="#293955" ForeColor="#ffffff" OnClick="my" />
     </div>
         </div>

        </div> 

    


   
</asp:Content>
