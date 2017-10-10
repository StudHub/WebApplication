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
using System.IO;
using System.Data.SqlClient;
using System.Configuration;


namespace WebApplication4
{
    public partial class admin_post : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["studhub"].ConnectionString);
        protected string Values;
        
        int x = 65;
        protected void post(object sender, EventArgs e)
        {
            string[] textboxValues = Request.Form.GetValues("DynamicTextBox");
            string message = "";
            if (textboxValues != null)
            {

                foreach (string textboxValue in textboxValues)
                {
                    char s = Convert.ToChar(x);
                    message += textboxValue + ":";
                    x++;
                }
            }
            string strname;
            if (FileUpload1.HasFile)
            {
                strname = FileUpload1.FileName.ToString();
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/upload/") + strname);
            }
            else
                strname = "0";

            con.Open();
            SqlCommand ins_post = new SqlCommand("insert into Questions(question,s_id,answers,options,que_img) values(@question,@s_id,@answers,@options,'"+strname+"')", con);
            ins_post.Parameters.AddWithValue("@question", TextArea2.InnerText);
            ins_post.Parameters.AddWithValue("@options", message);
            ins_post.Parameters.AddWithValue("@s_id", Convert.ToInt32( Session["s_id"]));
            ins_post.Parameters.AddWithValue("@answers",Tb1.Text );
            
            SqlCommand s2 = con.CreateCommand();
            s2.CommandText = "SET IDENTITY_INSERT Questions ON";

            ins_post.ExecuteNonQuery();
            Tb1.Text = null;
            TextArea2.InnerText = null;

            con.Close();
        }
            protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}