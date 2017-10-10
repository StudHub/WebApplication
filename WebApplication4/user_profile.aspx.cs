using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace WebApplication4
{
    public partial class user_profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["studhub"].ConnectionString);
            con.Open();

            SqlDataAdapter view_prf = new SqlDataAdapter("select name,country,dob from Userr where emailid='" + Session["emailid"] + "'", con);
            DataTable prf = new DataTable();
            view_prf.Fill(prf);
            prf_name.InnerText ="Name:"+ prf.Rows[0]["name"].ToString();
            prf_country.InnerText ="country:"+ prf.Rows[0]["country"].ToString();
            DateTime d = Convert.ToDateTime(prf.Rows[0]["dob"]);
            prf_birthday.InnerText ="Date of Birth:"+ d.ToString("dd/MM/yyyy");
        }
    }
}