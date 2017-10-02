<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="WebApplication4.test" %>
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
    <script type="text/javascript">
        alert(RadioButtonList1.SelectedItem.ToString());
    </script>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form3" runat="server">


       
        <div class="w3-container w3-card-2 w3-white w3-round w3-margin"><br>
            
                <div>
                    <h3 style="font-weight: bold" class="auto-style1">Question:</h3>
                    

                </div>

    <asp:MultiView ID="MultiView1" runat="server">

        <asp:View ID="View1" runat="server">
            <div id="query" class="tab-pane fade in active" style="padding-left: 195px;">
                        <div runat="server" id="div7" class="alert" style=" background-color:lightblue;width:70%; ; margin-top:10px" >
               

               
                        <h2><asp:label ID="l1" runat="server" text="Question with Options
                    " CssClass="active"   ></asp:label></h2>  
                    
                </div>
                       <div id="Div1" runat="server">
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                            </asp:RadioButtonList>
                        <div class="active" style="margin-right: 0px; margin-left: 60%">
                            <br />

                            <asp:Button ID="Button3" runat="server" Text="NEXT" CssClass="btn" BackColor="#003366" ForeColor="White" OnClick="Button3_Click"  /> &nbsp&nbsp&nbsp
      

          </div>
                    </div>
        </asp:View>
         <asp:View ID="View2" runat="server">
             <div id="query" class="tab-pane fade in active" style="padding-left: 195px;">
                       <div runat="server" id="div8" class="alert" style=" background-color:lightblue;width:70%; ; margin-top:10px" >
                    
                        <h2><asp:label ID="l2" runat="server" text="Question with Options
                    " CssClass="active"   ></asp:label></h2>  
                    
                </div>
                       <div id="Div2" runat="server">
                        <asp:RadioButtonList ID="RadioButtonList2" runat="server">
                            </asp:RadioButtonList>
                        <div class="active" style="margin-right: 0px; margin-left: 60%">
                            <br />
                             <asp:Button ID="Button1" runat="server" Text="PREVIOUS" CssClass="btn" BackColor="#003366" ForeColor="White" OnClick="Button1_Click"  /> &nbsp&nbsp&nbsp
     
                            <asp:Button ID="Button5" runat="server" Text="NEXT" CssClass="btn" BackColor="#003366" ForeColor="White" OnClick="Button5_Click"  /> &nbsp&nbsp&nbsp
     

          </div>
                    </div>
         </asp:View>
         <asp:View ID="View3" runat="server">
             <div id="query" class="tab-pane fade in active" style="padding-left: 195px;">
                       <div runat="server" id="div9" class="alert" style=" background-color:lightblue;width:70%; ; margin-top:10px" >
                    
                        <h2><asp:label ID="l3" runat="server" text="Question with Options
                    " CssClass="active"   ></asp:label></h2>  
                    
                </div>
                       <div id="Div3" runat="server">
                        <asp:RadioButtonList ID="RadioButtonList3" runat="server">
                            </asp:RadioButtonList>
                        <div class="active" style="margin-right: 0px; margin-left: 60%">
                            <br />
                             <asp:Button ID="Button15" runat="server" Text="PREVIOUS" CssClass="btn" BackColor="#003366" ForeColor="White" OnClick="Button15_Click"  /> &nbsp&nbsp&nbsp
      
                            <asp:Button ID="Button7" runat="server" Text="NEXT" CssClass="btn" BackColor="#003366" ForeColor="White" OnClick="Button7_Click"  /> &nbsp&nbsp&nbsp
      

          </div>
                    </div>
         </asp:View>
         <asp:View ID="View4" runat="server">
             <div id="query" class="tab-pane fade in active" style="padding-left: 195px;">
                       <div runat="server" id="div10" class="alert" style=" background-color:lightblue;width:70%; ; margin-top:10px" >
                    
                        <h2><asp:label ID="l4" runat="server" text="Question with Options
                    " CssClass="active"   ></asp:label></h2>  
                    
                </div>
                       <div id="Div4" runat="server">
                        <asp:RadioButtonList ID="RadioButtonList4" runat="server">
                            </asp:RadioButtonList>
                        <div class="active" style="margin-right: 0px; margin-left: 60%">
                            <br />
                             <asp:Button ID="Button17" runat="server" Text="PREVIOUS" CssClass="btn" BackColor="#003366" ForeColor="White" OnClick="Button17_Click"  /> &nbsp&nbsp&nbsp
      
                            <asp:Button ID="Button9" runat="server" Text="NEXT" CssClass="btn" BackColor="#003366" ForeColor="White" OnClick="Button9_Click"  /> &nbsp&nbsp&nbsp
      

          </div>
                    </div>
         </asp:View>
         <asp:View ID="View5" runat="server">
             <div id="query" class="tab-pane fade in active" style="padding-left: 195px;">
                       <div runat="server" id="div11" class="alert" style=" background-color:lightblue;width:70%; ; margin-top:10px" >
                    
                        <h2><asp:label ID="l5" runat="server" text="Question with Options
                    " CssClass="active"   ></asp:label></h2>  
                    
                </div>
                       <div id="Div5" runat="server">
                        <asp:RadioButtonList ID="RadioButtonList5" runat="server">
                            </asp:RadioButtonList>
                        <div class="active" style="margin-right: 0px; margin-left: 60%">
                            <br />
                             <asp:Button ID="Button19" runat="server" Text="PREVIOUS" CssClass="btn" BackColor="#003366" ForeColor="White" OnClick="Button19_Click"  /> &nbsp&nbsp&nbsp
      
                            <asp:Button ID="Button11" runat="server" Text="NEXT" CssClass="btn" BackColor="#003366" ForeColor="White" OnClick="Button11_Click"  /> &nbsp&nbsp&nbsp
      

          </div>
                    </div>
         </asp:View>
         <asp:View ID="View6" runat="server">
             <div id="query" class="tab-pane fade in active" style="padding-left: 195px;">
                       <div runat="server" id="div12" class="alert" style=" background-color:lightblue;width:70%; ; margin-top:10px" >
                    
                        <h2><asp:label ID="l6" runat="server" text="Question with Options
                    " CssClass="active"   ></asp:label></h2>  
                    
                </div>
                       <div id="Div6" runat="server">
                        <asp:RadioButtonList ID="RadioButtonList6" runat="server">
                            </asp:RadioButtonList>
                        <div class="active" style="margin-right: 0px; margin-left: 60%">
                            <br />
                             <asp:Button ID="Button21" runat="server" Text="PREVIOUS" CssClass="btn" BackColor="#003366" ForeColor="White" OnClick="Button21_Click"  /> &nbsp&nbsp&nbsp
      
                            <asp:Button ID="Button13" runat="server" Text="SUBMIT" CssClass="btn" BackColor="#003366" ForeColor="White" OnClick="Button13_Click"  /> &nbsp&nbsp&nbsp
      

          </div>
                    </div>
         </asp:View>
    </asp:MultiView>
                
                    

                    


                <br />
            </div>
            <br />
       
       </form>
</asp:Content>
