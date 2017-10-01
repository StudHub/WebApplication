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
    public partial class Home : System.Web.UI.Page
    {

        static int cnt = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["studhub"].ConnectionString) ;
           SqlDataAdapter s1 = new SqlDataAdapter("select mcq from Post_MCQ",con);
            con.Open();
            
            DataTable dt = new DataTable();
            s1.Fill(dt);

            string[] pst = new string[dt.Rows.Count];
            
            int i = 0;

            foreach (DataRow row in dt.Rows)
            {
                
                pst[i] = row["mcq"].ToString();
                i++;
            }
          

            for (i = pst.Length-1 ; i >=0; i--)
            {



                Table t = new Table();
                TableRow tr = new TableRow();
                TableCell tc1 = new TableCell();

                TableCell tc2 = new TableCell();
                t.Rows.Add(tr);
                tr.Cells.Add(tc1);
                tr.Cells.Add(tc2);
                Image i1 = new Image();
                i1.CssClass = "w3-left w3-circle w3-margin-right";
                i1.Width = 60;
                i1.Height = 60;
                string semailid = (string)Session["emailid"];
                SqlDataAdapter s2 = new SqlDataAdapter("select name from userr where emailid in(select emailid from Post_MCQ)", con);
                DataTable dt1=new DataTable();
                s2.Fill(dt1);
                
                tc2.Text= (string)dt1.Rows[cnt]["name"];
                cnt++;
                HtmlGenericControl d = new HtmlGenericControl("div");
                d.ID =Convert.ToString(i);
                d.Attributes.Add("style", "height:auto;width:90%;margin-left:2%;background-color:sandybrown");
                Label l = new Label();
                l.Text = pst[i];
                d.Controls.Add(l);

                Button b1 = new Button();
                int count = 0;
                b1.Text = "like  " + count;

                b1.CssClass = "w3-button w3-theme-d1 w3-margin-bottom";
                Button b2 = new Button();
                b2.Text = "comment";
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

                post.Controls.Add(t);
                post.Controls.Add(d);
                post.Controls.Add(lt);

            }
            con.Close();
        }
    }
}