using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Configuration;

namespace WebApplication4
{
    public partial class WebForm2 : System.Web.UI.Page
    {
            static int cnt = 0;
            protected void Page_Load(object sender, EventArgs e)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["studhub"].ConnectionString);
                SqlDataAdapter s1 = new SqlDataAdapter("select mcq,mcq_id from Post_MCQ", con);
                con.Open();

                DataTable dt = new DataTable();
                s1.Fill(dt);

                string[] pst = new string[dt.Rows.Count];
            string[] pstid = new string[dt.Rows.Count];

            int i = 0;

                foreach (DataRow row in dt.Rows)
                {

                    pst[i] = row["mcq"].ToString();
                pstid[i] = row["mcq_id"].ToString();
                    i++;
                }


                for (i = pst.Length - 1; i >= 0; i--)
                {
                HtmlGenericControl d1 = new HtmlGenericControl("div");
                d1.ID = Convert.ToString(i+1);
                d1.Attributes.Add("style", "height:auto;margin-top:2%;background-color:white;");



                Table t = new Table();
                    TableRow tr = new TableRow();
                    TableCell tc1 = new TableCell();
                    
                    TableCell tc2 = new TableCell();
                    t.Rows.Add(tr);
                    tr.Cells.Add(tc1);
                t.CellSpacing = 10;
                tr.Cells.Add(tc2);
                    Image i1 = new Image();
                    i1.CssClass = "w3-left w3-circle w3-margin-right";
                    i1.Width = 80;
                    i1.Height = 80;
                    string semailid = (string)Session["emailid"];
                    SqlDataAdapter s2 = new SqlDataAdapter("select name from userr where emailid in(select emailid from Post_MCQ)", con);
                    DataTable dt1 = new DataTable();
                    s2.Fill(dt1);

                    tc2.Text = "<h3><b>"+ (string)dt1.Rows[cnt]["name"];
                    cnt++;
                    HtmlGenericControl d = new HtmlGenericControl("div");
                    d.ID = Convert.ToString(i);
                    d.Attributes.Add("style", "height:auto;margin-left:10%;background-color:lightblue;width:75%; ; margin-top:0px");
                    Label l = new Label();
                  
                string p = pst[i];
                char[] c = new char[p.Length];
                c = p.ToCharArray();
                int j = 0;
                string x = null;
                foreach (char c1 in c)
                {
                    x = x + c1;
                    if (j == 110)
                    {
                        j = 0;
                        x = x + "<br>";
                       
                    }
                    j++;
                }
                int a = 65;
                for (int q = 0; q < 4; q++)
                {
                   
                    x = x + "<br>";
                    x = x + " option " + Convert.ToChar(a) + ":" + " " + "options taken from 2darray";
                    a++;
                }
                l.Text = "<b>"+x;
                    d.Controls.Add(l);

                    Button b1 = new Button();
                    int count = 0;
                    b1.Text = "like  " + count;

                    b1.CssClass = "w3-button w3-theme-d1 w3-margin-bottom";
                    Button b2 = new Button();
                    b2.Text = "comment";
                b2.ID = pstid[i].ToString();
                b2.Click += new EventHandler(btnclk);


                b2.CssClass = "w3-button w3-theme-d1 w3-margin-bottom";
                    Table lt = new Table();
                    TableRow ltr = new TableRow();
                    TableCell ltc1 = new TableCell();
                
                    TableCell ltc2 = new TableCell();
                    lt.Rows.Add(ltr);
                    ltr.Cells.Add(ltc1);
                    ltr.Cells.Add(ltc2);
                    ltc1.Controls.Add(b1);
                    ltc2.Controls.Add(b2);
                    i1.ImageUrl = "images/01.jpg";
                    tc1.Controls.Add(i1);
                    ltc1.Attributes.Add("style", "width:100px");
                post.Controls.Add(d1);
                    d1.Controls.Add(t);
                    d1.Controls.Add(d);
                    d1.Controls.Add(lt);

                }
                con.Close();
            }

        
        public void btnclk(object sender, EventArgs e)
        {
            Button comment = sender as Button;
            // identify which button was clicked and perform necessary actions
            comment.Text = comment.ID;
            Session["pstid"] = comment.ID;
            Response.Redirect("WebForm-test.aspx");
            //here button id is post id so, by tracking post id we can get no of comments and comment also
            //for no of comment take a loop lets 2 cooments are there
           
        }
        
    }
    }

