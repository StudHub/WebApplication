using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.HtmlControls;

namespace WebApplication4
{
    public partial class WebForm_test : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection( ConfigurationManager.ConnectionStrings["studhub"].ConnectionString);

        
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();

            string s;
            SqlCommand cmd = new SqlCommand("select * from Post_MCQ where mcq_id=@s", con);
            cmd.Parameters.AddWithValue("@s", Session["pstid"].ToString() );
            SqlDataReader rd = cmd.ExecuteReader();
            

            while (rd.Read())
            {
                s = rd["mcq"].ToString();
                // l2.Text = s;

                char[] c = new char[s.Length];
                int i = 0;
                c = s.ToCharArray();
                string s1 = null;
                foreach (char c1 in c)
                {
                    s1 = s1 + c1;
                    if (i == 57)
                    {
                        i = 0;
                        s1 = s1 + "<br>";
                    }
                    i++;
                }

                l2.Text = s1;


                           }
            // comment();
            //comment();
            //comment();
            rd.Close();
            con.Close();


            con.Open();
            SqlDataAdapter sd = new SqlDataAdapter("select * from Comment where mcq_id='"+Session["pstid"]+"' ", con);

            DataTable dtable = new DataTable();
            sd.Fill(dtable);
            for(int i = 0; i < dtable.Rows.Count; i++)
            {
                comment(dtable.Rows[i]);
            }
            con.Close();
        }
        public void comment(DataRow dr)
        {
            
            HtmlGenericControl d = new HtmlGenericControl("div");
            d.Attributes.Add("style", " width:90%;margin-left:60px ; background-color:#d0ece7; margin-top:10px");
            d.Attributes.Add("class", "alert");
            d.Attributes.Add("id","comments");
            Table t = new Table();
            TableRow tr = new TableRow();
            TableCell c1 = new TableCell();
            TableCell c2 = new TableCell();
            SqlDataAdapter s1 = new SqlDataAdapter("select name,image from Userr where emailid='" + dr["emailid"] + "'", con);
            DataTable imgg = new DataTable();
            s1.Fill(imgg);
            Image img = new Image();
            img.ImageUrl = "upload/"+ imgg.Rows[0]["image"];
            img.CssClass = "img-circle";
            img.Width = 80;
            img.Height = 80;
            Label l1 = new Label();
            l1.Text = "<h3>" + imgg.Rows[0]["name"];
            Lcomment.Text = null;
            c1.Controls.Add(img);
            c1.Controls.Add(l1);
            tr.Controls.Add(c1);
            tr.Controls.Add(c2);
            t.Controls.Add(tr);
            d.Controls.Add(t);
            Label l2 = new Label();
            c1.Width = 150; //COMMENT FROM COMMENT TABLE    

            l2.Text = dr["comment"].ToString();
           
            c2.Controls.Add(l2);
            main2.Controls.Add(d);
        }

        protected void my(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmmnt=new SqlCommand("insert into comment(mcq_id,comment,emailid) values('"+Session["pstid"]+"',@comment,'"+Session["emailid"]+"')",con);
            cmmnt.Parameters.AddWithValue("@comment",comment_text.Text);
            cmmnt.ExecuteNonQuery();
            con.Close();
            comment_text.Text = null;
            Response.Redirect("WebForm-test.aspx");
        }

    }
}