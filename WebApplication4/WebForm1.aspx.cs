using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication10
{
    public partial class WebForm1 : System.Web.UI.Page
    { static int i = 0;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
     

        protected void create(object sender, EventArgs e)
        {
            TextBox t = new TextBox();
            t.ID = i.ToString();
            t.Text = t.ID;
            //Panel1.Controls.Add(t);   
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }
    }


    }
