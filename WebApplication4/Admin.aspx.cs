using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication4
{
    public partial class Admin : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["studhub"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

            con.Open();

            
            for(int i = 0; i < 5; i++)
            {
                SqlDataAdapter sdt = new SqlDataAdapter("select count(question) from Questions where s_id='"+(i+1)+"'", con);
                DataTable dt = new DataTable();
                sdt.Fill(dt);
                switch (i + 1)
                {
                    case 1: Label1.Text = dt.Rows[0][0].ToString();
                        break;
                    case 2:
                        Label2.Text = dt.Rows[0][0].ToString();
                        break;
                    case 3:
                        Label3.Text = dt.Rows[0][0].ToString();
                        break;
                    case 4:
                        Label4.Text = dt.Rows[0][0].ToString();
                        break;
                    case 5:
                        Label5.Text = dt.Rows[0][0].ToString();
                        break;

                }
            }


            con.Close();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["s_id"] = "1";
            Response.Redirect("admin_post.aspx");

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["s_id"] = "2";
            Response.Redirect("admin_post.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Session["s_id"] = "3";
            Response.Redirect("admin_post.aspx");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Session["s_id"] = "4";
            Response.Redirect("admin_post.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Session["s_id"] = "5";
            Response.Redirect("admin_post.aspx");
        }
    }
}