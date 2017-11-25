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
using System.Web.Services;

namespace WebApplication4
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        
         int ncount;
        static int  y=0;
        
        void transfer(object sender, EventArgs e)
        {
            ImageButton comment = sender as ImageButton;
           
            
            Session["pstid"] = comment.ID;
            Response.Redirect("comment.aspx");

        }


        HtmlGenericControl s = new HtmlGenericControl("span");
        protected void Page_Load(object sender, EventArgs e)
        {
            //notification
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["studhub"].ConnectionString);
            con.Open();
            if (Session["admin"].ToString() == "true")
                ch.HRef = "Admin.aspx";
            else
                ch.HRef = "select_test.aspx";

            SqlDataAdapter sc = new SqlDataAdapter("select notification from userr where emailid='" + Session["emailid"] + "'",con);
            DataTable sct = new DataTable();
            sc.Fill(sct);
            if (HiddenField1.Value == "uncheck")
            {
                
                for(int i=0;i<sct.Rows.Count;i++)
                {
                    ncount = Convert.ToInt32(sct.Rows[i][0]);
                }
               
                s.InnerText = ncount.ToString();
                s.Attributes.Add("class", "w3-badge w3-right w3-small w3-green");
                s.ID = "sp1";
                if(ncount!=0)
                ntfn.Controls.Add(s);
            }
            else
            {

                HiddenField1.Value = "uncheck";
                SqlCommand m_remove = new SqlCommand("update Userr set notification=0 where emailid='" + Session["emailid"] + "'", con);

                m_remove.ExecuteNonQuery();
            }
            SqlDataAdapter s1 = new SqlDataAdapter("select mcq_id,emailid from Post_MCQ", con);
            DataTable dt = new DataTable();
            s1.Fill(dt);


            for (int j = dt.Rows.Count-1; j>=0; j--)
            {
                 SqlDataAdapter s2 = new SqlDataAdapter("select name,image from userr where emailid in('" + dt.Rows[j]["emailid"] + "')", con);

                DataTable dt1 = new DataTable();
                s2.Fill(dt1);

                //no of notifiation
               
                

                //Image nimage = new Image();
                ImageButton nimage = new ImageButton();
                nimage.ImageUrl = "/upload/" + dt1.Rows[0]["image"];
                nimage.Width = 20;
                nimage.Height = 20;
                nimage.CssClass = "w3-left w3-circle w3-margin-right";
                nimage.ID = dt.Rows[j]["mcq_id"].ToString();
                HtmlGenericControl d = new HtmlGenericControl("div");
                d.Attributes.Add("class", "w3-bar-item w3-button");
                if (ncount > 0)
                {
                    d.Attributes.Add("style", "background-color:#D0D5E7;");

                    ncount--;
                }
                Label l1 = new Label();
                
                l1.Text = dt1.Rows[0]["name"] + " has posted a mcq";
                
                nimage.Click += new ImageClickEventHandler(transfer);
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

                    uname.Text ="<h3>"+ dt2.Rows[0]["name"].ToString();
                    userpanel.Controls.Add(i1);
                    userpanel.Controls.Add(uname);
                
               
            }
            catch(Exception error)
            {
                Response.Redirect("Login.aspx");
            }
            con.Close();
           

        }
        
      

       

       
    }
}