using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.Script.Serialization;
using System.Data.Sql;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication4
{
    public partial class WebForm3 : System.Web.UI.Page
    { static int i = 1;
        static int x = 65;
        protected string Values;
        protected void Post(object sender, EventArgs e)
        {
            string[] textboxValues = Request.Form.GetValues("DynamicTextBox");
           // JavaScriptSerializer serializer = new JavaScriptSerializer();
            ///this.Values = serializer.Serialize(textboxValues);
            string message = "";
            
            
            
            foreach (string textboxValue in textboxValues)
            {
                char s = Convert.ToChar(x);
                message +=s+"."+textboxValue;
                x++;
            }
            
            //ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "alert('" + message + "');", true);
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["studhub"].ConnectionString);
            con.Open();
            SqlCommand s1 =new SqlCommand("insert into Post_MCQ(mcq,options) values(@mcq,@options)",con);
            //  SqlCommand s2 = new SqlCommand("inser into Post_MCQ_option(option_id,mcq_id,option) values(@option_id,@mcq_id,@option", con);
            SqlCommand s2 = con.CreateCommand();
            s2.CommandText = "SET IDENTITY_INSERT Post_MCQ ON";
          //  s1.Parameters.AddWithValue("@mcq_id", i);
            s1.Parameters.AddWithValue("@mcq", TextArea2.InnerText);
            s1.Parameters.AddWithValue("@options",message);
            i++;
           s1.ExecuteNonQuery();
            
            con.Close();


        }
        protected void Page_Load(object sender, EventArgs e)
        {
            //TextBox3.Text = HiddenField1.Value;
             
        }
      
       
        /* protected void Button5_Click(object sender, EventArgs e)
 {


     string c = "input-group-addon";
     HtmlGenericControl s = new HtmlGenericControl("span");
     HtmlGenericControl d = new HtmlGenericControl("div");
     d.Attributes.Add("style", "padding-top:100px");
     d.Attributes.Add("class", "input-group");
     d.Attributes.Add("id", i.ToString());
     s.Attributes.Add("text","abc");
     s.Attributes.Add("class",c);
     s.Attributes.Add("id", i.ToString());
     s.InnerText = "Z";
     p1.Controls.Add(d);

     TextBox t = new TextBox();
     t.ID = i.ToString();
     t.Attributes.Add("placeholder", "option");
     t.Text = t.ID;
     d.Controls.Add(s);
     d.Controls.Add(t);

     i++;
 }*/
    }
}