<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="instrunctions.aspx.cs" Inherits="WebApplication4.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="background-color:white">
    <p > <h1 style="color:brown">INSTRUNCTIONS FOR TEST:</h1>
       <h2> 1.Test contains 10 question of selected subject.<br />
        2.Every question contains many options from which one or more can be true.<br />
        3.By clicking on submit test new window is opened.<br />
        4.Dont swap the tab otherwise you may be disqualified for test.<br />
        5.After completed attempting of 10 questions click on submit button.<br />
        6.If you don't submit then if time goes run out then test will be auto submitted.<br />
        7.at last you will get your score,no. of correct ans,no.of attempted que and <br />
          no.of wrong questions.</h2>
    </p>
        <div style="margin-left:45%">
        <asp:Button ID="start" runat="server" Text="Start Test" OnClick="start_Click" CssClass="btn" />
            </div>
        </div>
    
</asp:Content>
