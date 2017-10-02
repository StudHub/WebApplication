<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebApplication4.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:Button ID="Button1" runat="server" Text="Post" CssClass="btn" BackColor="#003366" ForeColor="White" OnClick="Button1_Click" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
   <div id="post" class="active" runat="server" style="height:auto; margin-left:65px;margin-top:20px;margin-right:15px;background-color:white; width:90%">
       
   </div>
        
</asp:Content>
