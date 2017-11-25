<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="submit_test.aspx.cs" Inherits="WebApplication4.submit_test" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

   


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
     
 
     
  <div class="w3-col m12" style="margin-top:2%">
    
      <div class="w3-row-padding">
        <div class="w3-col m12">
          <div class="w3-card-2 w3-round w3-white">
            <div class="w3-container w3-padding" runat="server" id="test_submit_div">
             
         </div>
      <div id="info" >
          <asp:Label ID="Label1" runat="server" Text="Total question attempted:" Font-Size="Medium" Font-Bold="True" ForeColor="#0033CC" Font-Names="arial"></asp:Label>
          <asp:Label ID="attempt" runat="server" Text="Label"  Font-Size="Medium" Font-Bold="True" ForeColor="#0033CC" Font-Names="arial"></asp:Label><br /><br />
          <asp:Label ID="Label2" runat="server" Text="Total  correct answered question :"  Font-Size="Medium" Font-Bold="True" ForeColor="#0033CC" Font-Names="arial"></asp:Label>
          <asp:Label ID="correct" runat="server" Text="Label"  Font-Size="Medium" Font-Bold="True" ForeColor="#0033CC" Font-Names="arial"></asp:Label><br /><br />

          <asp:Label ID="Label3" runat="server" Text="Total wrong answered question:"  Font-Size="Medium" Font-Bold="True" ForeColor="#0033CC" Font-Names="arial"></asp:Label>
          <asp:Label ID="wrong" runat="server" Text="Label"  Font-Size="Medium" Font-Bold="True" ForeColor="#0033CC" Font-Names="arial"></asp:Label>
          <br /><br />
          <asp:Label ID="Label14" runat="server" Text="<p>Your Score is:</p>"  Font-Size="XX-Large" Font-Bold="True" ForeColor="#0033CC" Font-Names="arial"></asp:Label>
          <div style="margin-left:550px">
          <asp:Label ID="score" runat="server" Text="Label"  Font-Size="100" Font-Names="vederna" ForeColor="Black"></asp:Label>
              </div>
      </div>
              
              </div>
   </div>
          </div>
    </div>
        
</asp:Content>
