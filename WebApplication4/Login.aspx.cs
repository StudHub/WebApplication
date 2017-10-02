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
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection login = new SqlConnection(ConfigurationManager.ConnectionStrings["studhub"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void submit_Click(object sender, EventArgs e)
        {
            login.Open();
            string em = emailid.Text;
           
            string pas = password.Text;
            SqlCommand s = new SqlCommand("select password from Login where emailid='" + emailid.Text + "' ", login);
            DataTable dt = new DataTable();
            SqlDataAdapter s1 = new SqlDataAdapter(s);
            s1.Fill(dt);
            login.Close();
            if (dt.Rows.Count != 0)
            {
                if (dt.Rows[0]["password"].ToString() == pas)
                {
                    Session["emailid"] = em;
                    Response.Redirect("Home.aspx");

                }
                else
                {
                    error.Visible = true;
                    // Response.Write("email id or password not matched");


                }
            }
            else
            {
                error.Visible = true;
                // Response.Write("email id or password not matched");
            }
           

        }
        protected void reg_Click(object sender, EventArgs e)
        {
            string gender;
            if (male.Checked == true)
            {
                gender = "male";
            }
            else
            {
                gender = "female";
            }
            login.Open();
            if (userimage.HasFile)
            {
                string imagename = userimage.FileName.ToString();

                SqlCommand s2 = new SqlCommand("insert into Userr(emailid,name,dob,score,contactno,country,gender,image) values(@emailid,@name,@dob,@score,@contactno,@country,@gender,@image)", login);
                s2.Parameters.AddWithValue("@emailid", remailid.Text);
                s2.Parameters.AddWithValue("@name", name.Text);
                s2.Parameters.AddWithValue("@dob", Convert.ToDateTime(dob.Text));
                s2.Parameters.AddWithValue("@score", 0);
                s2.Parameters.AddWithValue("@contactno ", contactno.Text);
                s2.Parameters.AddWithValue("@country", country.SelectedItem.Value);
                s2.Parameters.AddWithValue("@gender", gender);
                s2.Parameters.AddWithValue("@image", imagename);

                s2.ExecuteNonQuery();
                userimage.PostedFile.SaveAs(Server.MapPath("~/upload/") + imagename);



                SqlCommand s3 = new SqlCommand("insert into Login(emailid,password) values(@emailid,@password)", login);
                s3.Parameters.AddWithValue("@emailid", remailid.Text);
                s3.Parameters.AddWithValue("@password", rpassword.Text);
                s3.ExecuteNonQuery();



                for (int i = 0; i < cl.Items.Count; i++)
                {


                    if (cl.Items[i].Selected)
                    {


                        String s = cl.Items[i].Text;
                        SqlCommand s5 = new SqlCommand("select s_id from subjects where s_name = @s", login);
                        s5.Parameters.AddWithValue("@s", s);

                        DataTable dt = new DataTable();
                        SqlDataAdapter sda = new SqlDataAdapter(s5);
                        sda.Fill(dt);
                        string p = "";
                        if (dt.Rows.Count != 0)
                        {
                            //Response.Write("in");
                            p = dt.Rows[0][0].ToString();
                        }

                        SqlCommand s4 = new SqlCommand("insert into sub_of_int(emailid,s_id) values(@emailid,@s_id) ", login);
                        s4.Parameters.AddWithValue("@emailid", remailid.Text);
                        s4.Parameters.AddWithValue("@s_id", p);
                        s4.ExecuteNonQuery();
                        Response.Redirect("Login.aspx");

                    }

                }
            }
           
        }

    }
}