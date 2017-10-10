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
using System.Web.UI.HtmlControls;

namespace WebApplication4
{
    public partial class user_profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        { int i;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["studhub"].ConnectionString);
            con.Open();

            SqlDataAdapter view_prf = new SqlDataAdapter("select * from Userr where emailid='" + Session["emailid"] + "'", con);
            DataTable prf = new DataTable();
            view_prf.Fill(prf);
            prf_name.InnerText ="Name:"+ prf.Rows[0]["name"].ToString();
            prf_country.InnerText ="country:"+ prf.Rows[0]["country"].ToString();
            DateTime d = Convert.ToDateTime(prf.Rows[0]["dob"]);
            prf_birthday.InnerText ="Date of Birth:"+ d.ToString("dd/MM/yyyy");
            SqlDataAdapter sub = new SqlDataAdapter("select s_name from subjects where s_id in(select s_id from sub_of_int where emailid='" + Session["emailid"] + "')", con);
            DataTable subj = new DataTable();
            sub.Fill(subj);
            for (i = 0;i< subj.Rows.Count; i++){
                HtmlGenericControl s = new HtmlGenericControl("span");
                s.Attributes.Add("class", "w3-tag w3-small w3-theme-d4");
                s.InnerText = subj.Rows[i]["s_name"].ToString();
                interest.Controls.Add(s);
            }



            SqlDataAdapter s1 = new SqlDataAdapter("select mcq,image,mcq_id from Post_MCQ where emailid='"+Session["emailid"]+"'", con);
            

            DataTable dt = new DataTable();
            s1.Fill(dt);

            string[] pst = new string[dt.Rows.Count];
            string[] pstid = new string[dt.Rows.Count];
             i = 0;

            foreach (DataRow row in dt.Rows)
            {

                pst[i] = row["mcq"].ToString();
                pstid[i] = row["mcq_id"].ToString();
                i++;
            }

            for (i = pst.Length - 1; i >= 0; i--)

            {
                HtmlGenericControl di = new HtmlGenericControl("div");
                // d.ID =Convert.ToString(i);
                di.Attributes.Add("style", "height:auto;width:100%;background-color:white;margin-top:20px;");
                HtmlGenericControl dii = new HtmlGenericControl("div");
                // d.ID =Convert.ToString(i);
                dii.Attributes.Add("style", "height:auto;width:75%;background-color:white;margin-top:10px;margin-left:10%");

                Label l = new Label();



                //if  query image is present
                if (dt.Rows[i]["image"].ToString() != "0")
                {
                    Image query_image = new Image();
                    query_image.ImageUrl = "/upload/" + dt.Rows[i]["image"].ToString();
                    query_image.Width = 500;
                    query_image.Height = 100;
                    dii.Controls.Add(query_image);

                }

                //options
                SqlDataAdapter option = new SqlDataAdapter("select options from Post_MCQ where mcq_id='" + pstid[i] + "'", con);
                DataTable optiont = new DataTable();
                option.Fill(optiont);
                
                string options = optiont.Rows[0]["options"].ToString();
                //rearrange question in division
                string p = pst[i];
                char[] c = new char[p.Length];
                c = p.ToCharArray();
                int j = 0;
                string x = "<br>";
                string y = null;
                foreach (char c1 in c)
                {
                    x = x + c1;
                    if (j == 110)
                    {
                        j = 0;
                        x = x + "<br>";

                    }
                    j++;
                }
                int a = 65;
                j = 0;
                foreach (char c2 in options)
                {

                    if (j == 110)
                    {
                        j = 0;
                        y = y + "<br>";

                    }
                    j++;
                    if (c2 == ':')
                    {
                        j = 0;

                        x = x + "<br>";
                        x = x + " option " + Convert.ToChar(a) + ":" + " " + y;
                        y = null;
                        a++;
                    }
                    else
                        y = y + c2;
                }

                /* for (int q = 0; q < 4; q++)
                 {

                     x = x + "<br>";
                     x = x + " option " + Convert.ToChar(a) + ":" + " " + "options taken from 2darray";
                     a++;
                 }*/
                l.Text = "<b>" + x;
                dii.Controls.Add(l);
                di.Controls.Add(dii);
                user_post.Controls.Add(di);

            }

        }
    }
}