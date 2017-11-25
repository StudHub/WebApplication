using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication4
{
    public partial class select_test : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["studhub"].ConnectionString);
        
        SqlCommand sc;
        SqlCommand scc;
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            if (Convert.ToBoolean(Session["tst_complete"]) == true)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('test submitted Successfully')", true);
                Session["tst_complete"] = false;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["sub_id"] = 1;
            sc = new SqlCommand("insert into Test(emailid,s_id,totalM,obtainM,totalQ,attemptQ,t_time) values('" + Session["emailid"] + "','" + Session["sub_id"] + "',0,0,0,0,@t_time)", con);
            sc.Parameters.AddWithValue("@t_time", DateTime.Now.ToString());
            sc.ExecuteNonQuery();
            scc = new SqlCommand("select max(tid) from Test where emailid='" + Session["emailid"] + "'and s_id='" + Session["sub_id"] + "'", con);
            Session["tid"] =scc.ExecuteScalar();

            Response.Redirect("instrunctions.aspx");

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            Session["sub_id"] = 2;
            sc = new SqlCommand("insert into Test(emailid,s_id,totalM,obtainM,totalQ,attemptQ,t_time) values('" + Session["emailid"] + "','" + Session["sub_id"] + "',0,0,0,0,@t_time)", con);
            sc.Parameters.AddWithValue("@t_time", DateTime.Now.ToString());
            sc.ExecuteNonQuery();
            scc = new SqlCommand("select max(tid) from Test where emailid='" + Session["emailid"] + "'and s_id='" + Session["sub_id"] + "'", con);
            Session["tid"] = scc.ExecuteScalar();
            Response.Redirect("instrunctions.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Session["sub_id"] = 3;
            sc = new SqlCommand("insert into Test(emailid,s_id,totalM,obtainM,totalQ,attemptQ,t_time) values('" + Session["emailid"] + "','" + Session["sub_id"] + "',0,0,0,0,@t_time)", con);
            sc.Parameters.AddWithValue("@t_time", DateTime.Now.ToString());
            sc.ExecuteNonQuery();
            scc = new SqlCommand("select max(tid) from Test where emailid='" + Session["emailid"] + "'and s_id='" + Session["sub_id"] + "'", con);
            Session["tid"] = scc.ExecuteScalar();
            Response.Redirect("instrunctions.aspx");

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Session["sub_id"] = 4;
            sc = new SqlCommand("insert into Test(emailid,s_id,totalM,obtainM,totalQ,attemptQ,t_time) values('" + Session["emailid"] + "','" + Session["sub_id"] + "',0,0,0,0,@t_time)", con);
            sc.Parameters.AddWithValue("@t_time", DateTime.Now.ToString());
            sc.ExecuteNonQuery();
            scc = new SqlCommand("select max(tid) from Test where emailid='" + Session["emailid"] + "'and s_id='" + Session["sub_id"] + "'", con);
            Session["tid"] = scc.ExecuteScalar();
            Response.Redirect("instrunctions.aspx");

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Session["sub_id"] = 5;
            sc = new SqlCommand("insert into Test(emailid,s_id,totalM,obtainM,totalQ,attemptQ,t_time) values('" + Session["emailid"] + "','" + Session["sub_id"] + "',0,0,0,0,@t_time)", con);
            sc.Parameters.AddWithValue("@t_time", DateTime.Now.ToString());
            sc.ExecuteNonQuery();
            scc = new SqlCommand("select max(tid) from Test where emailid='" + Session["emailid"] + "'and s_id='" + Session["sub_id"] + "'", con);
            Session["tid"] = scc.ExecuteScalar();
            Response.Redirect("instrunctions.aspx");

        }
    }
}