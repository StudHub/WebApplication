using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace WebApplication4
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
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
            tc2.Text = "<h3>jashvant";
            HtmlGenericControl d = new HtmlGenericControl("div");
            d.Attributes.Add("style", "height:auto;width:90%;margin-left:2%");
            Label l = new Label();
            l.Text="hello this is question";
            d.Controls.Add(l);
            
            Button b1 = new Button();
            int count = 0;
            b1.Text = "like  "+count;
            
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
    }
}