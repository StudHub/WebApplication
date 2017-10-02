using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace WebApplication4
{
    public partial class Site1 : System.Web.UI.MasterPage
    { 
        protected void Page_Load(object sender, EventArgs e)
        {
           //notification
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["studhub"].ConnectionString);
            con.Open();
            SqlDataAdapter s1 = new SqlDataAdapter("select mcq_id,emailid from Post_MCQ", con);
            DataTable dt = new DataTable();
            s1.Fill(dt);
            for (int j = dt.Rows.Count-1; j>=0; j--)
            {
                SqlDataAdapter s2 = new SqlDataAdapter("select name,image from userr where emailid in('" + dt.Rows[j]["emailid"] + "')", con);

                DataTable dt1 = new DataTable();
                s2.Fill(dt1);

                //no of notifiation
                HtmlGenericControl s = new HtmlGenericControl("span");
                s.InnerText = dt.Rows.Count.ToString();
                s.Attributes.Add("class", "w3-badge w3-right w3-small w3-green");
                if (j == 0)
                {
                    ntfn.Controls.Add(s);
                }

                Image nimage = new Image();
                nimage.ImageUrl = "/upload/" + dt1.Rows[0]["image"];
                nimage.Width = 20;
                nimage.Height = 20;
                nimage.CssClass = "w3-left w3-circle w3-margin-right";
                HtmlGenericControl d = new HtmlGenericControl("div");
                d.Attributes.Add("class", "w3-bar-item w3-button");
                Label l1 = new Label();

                l1.Text = dt1.Rows[0]["name"] + " has posted a mcq";
                
                    d.Controls.Add(nimage);
                    d.Controls.Add(l1);
                    notification.Controls.Add(d);
                
            }


            //user image and name
            try
            {
                    string emailid = (string)Session["emailid"];
                    SqlDataAdapter s3 = new SqlDataAdapter("select name,image from userr where emailid='" + emailid + "'", con);
                    DataTable dt2 = new DataTable();
                    s3.Fill(dt2);
                    Image i1 = new Image();
                    string photo = dt2.Rows[0]["image"].ToString();
                    i1.ImageUrl = "/upload/" + photo;
                    i1.CssClass = "w3-left w3-circle w3-margin-right";

                    i1.Width = 60;
                    Label uname = new Label();
                    uname.Height = 50;

                    uname.Text = dt2.Rows[0]["name"].ToString();
                    userpanel.Controls.Add(i1);
                    userpanel.Controls.Add(uname);
                
               
            }
            catch(Exception error)
            {
                Response.Redirect("Login.aspx");
            }
        }

    }
}