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

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void start_Click(object sender, EventArgs e)
        {
            ClientScript.RegisterStartupScript(this.Page.GetType(), "", "window.open('test.aspx');", true);
        }
    }
}

