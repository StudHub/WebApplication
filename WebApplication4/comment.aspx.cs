﻿using System;
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

            //post image and user name whose post is there

           

//post
            string s,o;
            SqlCommand cmd = new SqlCommand("select * from Post_MCQ where mcq_id=@s", con);
            cmd.Parameters.AddWithValue("@s", Session["pstid"].ToString() );
            SqlDataReader rd = cmd.ExecuteReader();
            

            while (rd.Read())
            {
                s = rd["mcq"].ToString();
                o = rd["options"].ToString();
                // l2.Text = s;
                if (rd["image"].ToString() != "0")
                {
                    Image query_image = new Image();
                    query_image.ImageUrl = "/upload/" + rd["image"].ToString().Trim();
                    //query_image.ImageUrl = "/upload/p.jpg"; 
                    query_image.Width = 500;
                    query_image.Height = 100;
                    div1.Controls.Add(query_image);
                }
                char[] c = new char[s.Length];
                int i = 0;
                c = s.ToCharArray();
                string s1 = null;
                foreach (char c1 in c)
                {
                    s1 = s1 + c1;
                    if (i == 157)
                    {
                        i = 0;
                        s1 = s1 + "<br>";
                    }
                    i++;
                }
                int a = 65;
                int j = 0;
                s = null;
                s1 = s1 + "<br>";
                foreach (char c2 in o)
                {

                    if (j == 110)
                    {
                        j = 0;

                        s = s + "<br>";

                    }
                    j++;
                    if (c2 == ':')
                    {
                        j = 0;

                        s1 += "<br>";
                        s1 += " option " + Convert.ToChar(a) + ":" + " " + s;
                        s = null;
                        a++;
                    }
                    else
                        s = s + c2;
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
            postimg_user(0);
            for (int i = 0; i < dtable.Rows.Count; i++)
            {
                
                comment(dtable.Rows[i]);
            }
            con.Close();
        }
        void postimg_user(int i)
        {
            SqlDataAdapter s1 = new SqlDataAdapter("select mcq,emailid,mcq_id from Post_MCQ where mcq_id='" + Session["pstid"] + "' ", con);


            DataTable dt = new DataTable();
            s1.Fill(dt);


            Table t = new Table();
            TableRow tr = new TableRow();
            TableCell tc1 = new TableCell();

            TableCell tc2 = new TableCell();
            t.Rows.Add(tr);
            tr.Cells.Add(tc1);
            tr.Cells.Add(tc2);
            t.CellSpacing = 10;
            Image i1 = new Image();
            i1.CssClass = "w3-left w3-circle w3-margin-right";

            i1.Width = 80;
            i1.Height = 80;
            
            string semailid = (string)Session["emailid"];
            SqlDataAdapter s2 = new SqlDataAdapter("select name,image from userr where emailid in('" + dt.Rows[0]["emailid"] + "')", con);
            DataTable dt1 = new DataTable();
            s2.Fill(dt1);
            i1.ImageUrl = "/upload/" + dt1.Rows[0]["image"].ToString();
            int count = 0;
            tc2.Text = "<h2><b>" + (string)dt1.Rows[0]["name"];
            tc1.Controls.Add(i1);
            p_img_user.Controls.Add(t);
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
            img.Width = 40;
            img.Height = 40;
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

            l2.Text = "<h4><b>"+dr["comment"].ToString();
           
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
            Response.Redirect("comment.aspx");
        }

    }
}