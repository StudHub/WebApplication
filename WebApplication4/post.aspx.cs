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
        int x = 65;
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["studhub"].ConnectionString);
        protected string Values;
        protected void Post(object sender, EventArgs e)
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
            Label1.Visible = false; ;



            con.Open();
                      
            
           
            if (FileUpload1.HasFile)
            {
               // Response.Write("helee");
                //SqlCommand s3 = new SqlCommand("select mcq_id from Post_MCQ", con);
                //int id = Convert.ToInt32(s3.ExecuteReader()[0]);
                string strname = FileUpload1.FileName.ToString().Trim();
                //Directory.CreateDirectory(Server.MapPath("~") + "\\upload");
               // Response.Write(strname);
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/upload/") + strname);
                SqlCommand s1 = new SqlCommand("insert into Post_MCQ(mcq,options,image,emailid,time)  values(@mcq,@options,@strname,@emailid,@time)", con);
                SqlCommand s2 = con.CreateCommand();
                s2.CommandText = "SET IDENTITY_INSERT Post_MCQ ON";

                s1.Parameters.AddWithValue("@mcq", TextArea2.InnerText);
                s1.Parameters.AddWithValue("@options", message);
                s1.Parameters.AddWithValue("@emailid", Session["emailid"].ToString());
                s1.Parameters.AddWithValue("@time", DateTime.Now.ToString());
                s1.Parameters.AddWithValue("@strname", strname);
                s1.ExecuteNonQuery();
                

                Label1.Visible = true;
                Label1.Text = "Image Uploaded successfully";
                
               
            }
            else
            {
                SqlCommand s1 = new SqlCommand("insert into Post_MCQ(mcq,options,emailid,time) values(@mcq,@options,@emailid,@time)", con);

                SqlCommand s2 = con.CreateCommand();
                s2.CommandText = "SET IDENTITY_INSERT Post_MCQ ON";

                s1.Parameters.AddWithValue("@mcq", TextArea2.InnerText);
                s1.Parameters.AddWithValue("@options", message);
                s1.Parameters.AddWithValue("@emailid", Session["emailid"].ToString());
                s1.Parameters.AddWithValue("@time", DateTime.Now.ToString());
                i++;

                s1.ExecuteNonQuery();

            
                                

            }
            SqlDataAdapter s3 = new  SqlDataAdapter("select notification,emailid from Userr",con);
            DataTable dr = new DataTable();
            s3.Fill(dr);
            int l_count;
            for(int q=0;q<dr.Rows.Count;q++)
            {
                l_count = Convert.ToInt32(dr.Rows[q]["notification"]);
                l_count++;

                SqlCommand s12 = new SqlCommand("update Userr set notification = '"+l_count+"'  where emailid in ('"+dr.Rows[q]["emailid"]+"')", con);
                s12.ExecuteNonQuery();
            }
            
            con.Close();
            Response.Redirect("Home.aspx");

        }

        protected void Page_Load(object sender, EventArgs e)
        {
           



        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["studhub"].ConnectionString);
            con.Open();
                 if (FileUpload2.HasFile)
            {
                Response.Write("helee");
                //SqlCommand s3 = new SqlCommand("select mcq_id from Post_MCQ", con);
                //int id = Convert.ToInt32(s3.ExecuteReader()[0]);
                string strname = FileUpload2.FileName.ToString();
                
                FileUpload2.PostedFile.SaveAs(Server.MapPath("~/upload/") + strname);
                SqlCommand s1 = new SqlCommand("insert into Post_Query(query,image)  values(@query,' " + strname + " ')", con);
                SqlCommand s2 = con.CreateCommand();
                s2.CommandText = "SET IDENTITY_INSERT Post_Query ON";

                s1.Parameters.AddWithValue("@query", TextArea1.InnerText);
               


                s1.ExecuteNonQuery();
                con.Close();
                Response.Redirect("Home.aspx");



            }
            else
            {
                SqlCommand s1 = new SqlCommand("insert into Post_Query(query) values(@query)", con);

                SqlCommand s2 = con.CreateCommand();
                s2.CommandText = "SET IDENTITY_INSERT Post_Query ON";

                s1.Parameters.AddWithValue("@query", TextArea1.InnerText);
                s1.ExecuteNonQuery();
                con.Close();
                Response.Redirect("Home.aspx");


            }

        }
    }
}