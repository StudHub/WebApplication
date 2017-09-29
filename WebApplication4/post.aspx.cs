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
    public partial class WebForm3 : System.Web.UI.Page
    { static int i = 1;
        static int x = 65;
        protected string Values;
        protected void Post(object sender, EventArgs e)
        {
            string[] textboxValues = Request.Form.GetValues("DynamicTextBox");
            string message = "";
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["studhub"].ConnectionString);


            foreach (string textboxValue in textboxValues)
            {
                char s = Convert.ToChar(x);
                message +=s+"."+textboxValue;
                x++;
            }

            
            
            con.Open();
                      
            
           
            if (FileUpload1.HasFile)
            {
                Response.Write("helee");
                //SqlCommand s3 = new SqlCommand("select mcq_id from Post_MCQ", con);
                //int id = Convert.ToInt32(s3.ExecuteReader()[0]);
                string strname = FileUpload1.FileName.ToString();
                Directory.CreateDirectory(Server.MapPath("~") + "\\upload");
                Response.Write(strname);
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/upload/") + strname);
                SqlCommand s1 = new SqlCommand("insert into Post_MCQ(mcq,options,image)  values(@mcq,@options,' " + strname + " ')", con);
                SqlCommand s2 = con.CreateCommand();
                s2.CommandText = "SET IDENTITY_INSERT Post_MCQ ON";

                s1.Parameters.AddWithValue("@mcq", TextArea2.InnerText);
                s1.Parameters.AddWithValue("@options", message);


                s1.ExecuteNonQuery();
                con.Close();

                Label1.Visible = true;
                Label1.Text = "Image Uploaded successfully";
                //txtname.Text = "";
            }
            else
            {
                SqlCommand s1 = new SqlCommand("insert into Post_MCQ(mcq,options) values(@mcq,@options)", con);

                SqlCommand s2 = con.CreateCommand();
                s2.CommandText = "SET IDENTITY_INSERT Post_MCQ ON";

                s1.Parameters.AddWithValue("@mcq", TextArea2.InnerText);
                s1.Parameters.AddWithValue("@options", message);
                i++;

                s1.ExecuteNonQuery();
                con.Close();

            }

        }

        protected void Page_Load(object sender, EventArgs e)
        {
           



        }

        


       
    }
}