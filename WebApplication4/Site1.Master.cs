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
            SqlDataAdapter s2 = new SqlDataAdapter("select name,image from userr where emailid in(select emailid from Post_MCQ)", con);
            DataTable dt1 = new DataTable();
            s2.Fill(dt1);

            //no of notifiation
            HtmlGenericControl s = new HtmlGenericControl("span");
            s.InnerText = dt1.Rows.Count.ToString();
            s.Attributes.Add("class", "w3-badge w3-right w3-small w3-green");
            ntfn.Controls.Add(s);
            
            
            for (int i = 0; i < dt1.Rows.Count; i++)
            {
                Image nimage = new Image();
                nimage.ImageUrl = "/upload/" + dt1.Rows[i]["image"];
                nimage.Width = 20;
                nimage.Height = 20;
                nimage.CssClass = "w3-left w3-circle w3-margin-right";
                HtmlGenericControl d = new HtmlGenericControl("div");
                d.Attributes.Add("class", "w3-bar-item w3-button");
                Label l1 = new Label();
              
                l1.Text = dt1.Rows[i]["name"] + " has posted a mcq";

                d.Controls.Add(nimage);
                d.Controls.Add(l1);
                notification.Controls.Add(d);


                //user image and name
                string emailid = (string)Session["emailid"];
                SqlDataAdapter s1=new SqlDataAdapter("select name,image from userr where emailid='"+emailid+"'",con );
                DataTable dt = new DataTable();
                s1.Fill(dt);
                Image i1 = new Image();
                string photo = dt.Rows[0]["image"].ToString();
                i1.ImageUrl = "/upload/"+photo;
                i1.CssClass= "w3-left w3-circle w3-margin-right";
                
                i1.Width = 60;
                Label uname = new Label();
                uname.Height = 50;
                
                uname.Text = dt.Rows[0]["name"].ToString();
                userpanel.Controls.Add(i1);
                userpanel.Controls.Add(uname);
            }
        }

    }
}