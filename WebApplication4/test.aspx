<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="WebApplication4.test" %>
<html>
<head>
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

    </head>
<body>
    <form runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
       
 
            
       
            
        <div class="w3-container w3-card-2 w3-white w3-round w3-margin" >
            
                <div style="margin-left:80%">
                      <asp:UpdatePanel ID="UpdatePanel1" runat="server">
       <ContentTemplate>
      <div style="background-color:white">
          <asp:Timer ID="Timer1" runat="server" Interval="1000 " OnTick="Timer1_Tick" ></asp:Timer>
         
      <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#293955" ></asp:Label>
          </div>
       </ContentTemplate>
           </asp:UpdatePanel>
                    </div>
            <div>
                    <p id="q_no" runat="server" style="font-weight: bold;font-size:medium"  class="auto-style1">Question:1</p>
                    

                </div>

    <asp:MultiView ID="MultiView1" runat="server">

        <asp:View ID="View1" runat="server">
            <div id="query" class="tab-pane fade in active" style="padding-left: 195px;">
                        <div runat="server" id="div7" class="alert" style=" background-color:lightblue;width:70%; " >
               

                            <asp:Image ID="Image1" runat="server" />
                        <h3><asp:label ID="l1" runat="server" text="Question with Options
                    " CssClass="active"   ></asp:label></h3>  
                    
                </div>
                       <div id="Div1" runat="server">
                        <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                            </asp:CheckBoxList>
                        <div class="active" style="margin-right: 0px; margin-left: 60%">
                            <br />

                            <asp:Button ID="Button3" runat="server" Text="NEXT" CssClass="btn" BackColor="#003366" ForeColor="White" OnClick="Button3_Click"  /> &nbsp&nbsp&nbsp
      

          </div>
                    </div>
        </asp:View>
         <asp:View ID="View2" runat="server">
             <div id="query" class="tab-pane fade in active" style="padding-left: 195px;">
                       <div runat="server" id="div8" class="alert" style=" background-color:lightblue;width:70%; ; margin-top:10px" >
                    <asp:Image ID="Image2" runat="server" />
                        <h3><asp:label ID="l2" runat="server" text="Question with Options
                    " CssClass="active"   ></asp:label></h3>  
                    
                </div>
                       <div id="Div2" runat="server">
                        <asp:CheckBoxList ID="CheckBoxList2" runat="server">
                            </asp:CheckBoxList>
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
                    <asp:Image ID="Image3" runat="server" />
                        <h3><asp:label ID="l3" runat="server" text="Question with Options
                    " CssClass="active"   ></asp:label></h3>  
                    
                </div>
                       <div id="Div3" runat="server">
                        <asp:CheckBoxList ID="CheckBoxList3" runat="server">
                            </asp:CheckBoxList>
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
                    <asp:Image ID="Image4" runat="server" />
                        <h3><asp:label ID="l4" runat="server" text="Question with Options
                    " CssClass="active"   ></asp:label></h3>  
                    
                </div>
                       <div id="Div4" runat="server">
                        <asp:CheckBoxList ID="CheckBoxList4" runat="server">
                            </asp:CheckBoxList>
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
                    <asp:Image ID="Image5" runat="server" />
                        <h3><asp:label ID="l5" runat="server" text="Question with Options
                    " CssClass="active"   ></asp:label></h3>  
                    
                </div>
                       <div id="Div5" runat="server">
                        <asp:CheckBoxList ID="CheckBoxList5" runat="server">
                            </asp:CheckBoxList>
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
                    <asp:Image ID="Image6" runat="server" />
                        <h3><asp:label ID="l6" runat="server" text="Question with Options
                    " CssClass="active"   ></asp:label></h3>  
                    
                </div>
                       <div id="Div6" runat="server">
                        <asp:CheckBoxList ID="CheckBoxList6" runat="server">
                            </asp:CheckBoxList>
                        <div class="active" style="margin-right: 0px; margin-left: 60%">
                            <br />
                             <asp:Button ID="Button21" runat="server" Text="PREVIOUS" CssClass="btn" BackColor="#003366" ForeColor="White" OnClick="Button21_Click"  /> &nbsp&nbsp&nbsp
      
                            <asp:Button ID="Button13" runat="server" Text="NEXT" CssClass="btn" BackColor="#003366" ForeColor="White" OnClick="Button13_Click"  /> &nbsp&nbsp&nbsp
      

          </div>
                    </div>
         </asp:View>
         <asp:View ID="View7" runat="server">
             <div id="query" class="tab-pane fade in active" style="padding-left: 195px;">
                       <div runat="server" id="div13" class="alert" style=" background-color:lightblue;width:70%; ; margin-top:10px" >
                    <asp:Image ID="Image7" runat="server" />
                        <h3><asp:label ID="l7" runat="server" text="Question with Options
                    " CssClass="active"   ></asp:label></h3>  
                    
                </div>
                       <div id="Div14" runat="server">
                        <asp:CheckBoxList ID="CheckBoxList7" runat="server">
                            </asp:CheckBoxList>
                        <div class="active" style="margin-right: 0px; margin-left: 60%">
                            <br />
                             <asp:Button ID="Button2" runat="server" Text="PREVIOUS" CssClass="btn" BackColor="#003366" ForeColor="White" OnClick="Button2_Click"   /> &nbsp&nbsp&nbsp
      
                            <asp:Button ID="Button4" runat="server" Text="NEXT" CssClass="btn" BackColor="#003366" ForeColor="White" OnClick="Button4_Click"   /> &nbsp&nbsp&nbsp
      

          </div>
                    </div>
         </asp:View>
         <asp:View ID="View8" runat="server">
             <div id="query" class="tab-pane fade in active" style="padding-left: 195px;">
                       <div runat="server" id="div15" class="alert" style=" background-color:lightblue;width:70%; ; margin-top:10px" >
                    <asp:Image ID="Image8" runat="server" />
                        <h3><asp:label ID="l8" runat="server" text="Question with Options" CssClass="active"   ></asp:label></h3>  
                    
                </div>
                       <div id="Div16" runat="server">
                        <asp:CheckBoxList ID="CheckBoxList8" runat="server">
                            </asp:CheckBoxList>
                        <div class="active" style="margin-right: 0px; margin-left: 60%">
                            <br />
                             <asp:Button ID="Button6" runat="server" Text="PREVIOUS" CssClass="btn" BackColor="#003366" ForeColor="White" OnClick="Button6_Click"   /> &nbsp&nbsp&nbsp
      
                            <asp:Button ID="Button8" runat="server" Text="NEXT" CssClass="btn" BackColor="#003366" ForeColor="White" OnClick="Button8_Click"   /> &nbsp&nbsp&nbsp
      

          </div>
                    </div>
         </asp:View>
         <asp:View ID="View9" runat="server">
             <div id="query" class="tab-pane fade in active" style="padding-left: 195px;">
                       <div runat="server" id="div17" class="alert" style=" background-color:lightblue;width:70%; ; margin-top:10px" >
                    <asp:Image ID="Image9" runat="server" />
                        <h3><asp:label ID="l9" runat="server" text="Question with Options" CssClass="active"   ></asp:label></h3>  
                    
                </div>
                       <div id="Div18" runat="server">
                        <asp:CheckBoxList ID="CheckBoxList9" runat="server">
                            </asp:CheckBoxList>
                        <div class="active" style="margin-right: 0px; margin-left: 60%">
                            <br />
                             <asp:Button ID="Button10" runat="server" Text="PREVIOUS" CssClass="btn" BackColor="#003366" ForeColor="White" OnClick="Button10_Click"   /> &nbsp&nbsp&nbsp
      
                            <asp:Button ID="Button12" runat="server" Text="NEXT" CssClass="btn" BackColor="#003366" ForeColor="White" OnClick="Button12_Click"  /> &nbsp&nbsp&nbsp
      

          </div>
                    </div>
         </asp:View>
         <asp:View ID="View10" runat="server">
             <div id="query" class="tab-pane fade in active" style="padding-left: 195px;">
                       <div runat="server" id="div19" class="alert" style=" background-color:lightblue;width:70%; ; margin-top:10px" >
                    <asp:Image ID="Image10" runat="server" />
                        <h3><asp:label ID="l10" runat="server" text="Question with Options
                    " CssClass="active"   ></asp:label></h3>  
                    
                </div>
                       <div id="Div20" runat="server">
                        <asp:CheckBoxList ID="CheckBoxList10" runat="server">
                            </asp:CheckBoxList>
                        <div class="active" style="margin-right: 0px; margin-left: 60%">
                            <br />
                             <asp:Button ID="Button14" runat="server" Text="PREVIOUS" CssClass="btn" BackColor="#003366" ForeColor="White" OnClick="Button14_Click"   /> &nbsp&nbsp&nbsp
      
                            <asp:Button ID="Button16" runat="server" Text="SUBMIT" CssClass="btn" BackColor="#003366" ForeColor="White" OnClick="Button16_Click" /> &nbsp&nbsp&nbsp
      

          </div>
                    </div>
         </asp:View>
    </asp:MultiView>
                
                    

                    


                <br />
            </div>
            <br />
       
</form>
</body>
</html>
