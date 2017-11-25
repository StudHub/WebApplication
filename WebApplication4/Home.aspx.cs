using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;

using System.Data;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Configuration;

namespace WebApplication4
{
    public partial class Home : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["studhub"].ConnectionString);


        protected void Page_Load(object sender, EventArgs e)
        {
            
            
           SqlDataAdapter s1 = new SqlDataAdapter("select mcq,emailid,mcq_id,image,time from Post_MCQ",con);
            con.Open();
            
            DataTable dt = new DataTable();
            s1.Fill(dt);

            string[] pst = new string[dt.Rows.Count];
            string[] pstid = new string[dt.Rows.Count];
            string[] img = new string[dt.Rows.Count];
            int i = 0;

            foreach (DataRow row in dt.Rows)
            {
                
                pst[i] = row["mcq"].ToString();
                pstid[i] = row["mcq_id"].ToString();
                img[i] = row["image"].ToString();
                i++;
            }
          

            for (i = pst.Length-1 ; i >=0; i--)

            {
                HtmlGenericControl d1 = new HtmlGenericControl("div");
                //d1.ID = Convert.ToString(i + 1);
                d1.Attributes.Add("style", "height:auto;margin-top:2%;background-color:white;");



                //post image and name
                Table t = new Table();
                TableRow tr = new TableRow();
                Table t1 = new Table();
                TableRow tr1 = new TableRow();
                Table t2 = new Table();
                TableRow tr2 = new TableRow();
               
                TableCell tc1 = new TableCell();
                TableCell tc2 = new TableCell();
                TableCell tc3 = new TableCell();
                TableCell tc4 = new TableCell();
                TableCell tc5 = new TableCell();
                TableCell tc6 = new TableCell();
                t.Rows.Add(tr);
                t1.Rows.Add(tr1);
                t2.Rows.Add(tr2);
               // t.Rows.Add(tr3);
                tr.Cells.Add(tc1);
                tr.Cells.Add(tc2);
                tr.Cells.Add(tc3);
                tr1.Cells.Add(tc4);
                tr2.Cells.Add(tc5);
                tr2.Cells.Add(tc6);
                tc2.Width = 900;
                tc5.Width = 100;

                // t.CellSpacing = 10;
                Image i1 = new Image();
                i1.CssClass = "w3-left w3-circle w3-margin-right";
               
                i1.Width = 40;
                i1.Height = 40;
                string semailid = (string)Session["emailid"];
                SqlDataAdapter s2 = new SqlDataAdapter("select name,image from userr where emailid in('"+dt.Rows[i]["emailid"]+"')", con);
                DataTable dt1=new DataTable();
                s2.Fill(dt1);
                int count = 0;
                Label name = new Label();
                
                  name.Text=  "<h3><b>" + (string)dt1.Rows[0]["name"] + "</b></h3>";
                
                //original post
                HtmlGenericControl d = new HtmlGenericControl("div");
                d.ID =Convert.ToString(i);
                d.Attributes.Add("style", "height:auto;margin-left:10%;");
                Label l = new Label();
                l.ForeColor = System.Drawing.Color.DarkBlue;
                
                
              
                //options
                SqlDataAdapter option = new SqlDataAdapter("select options,likes,time from Post_MCQ where mcq_id='" + pstid[i] + "'",con);
                DataTable optiont = new DataTable() ;
                option.Fill(optiont);
                Label time = new Label();

                time.Text = (DateTime.Now - Convert.ToDateTime(optiont.Rows[0]["time"])).Hours.ToString() + " h:";
                time.Text += (DateTime.Now - Convert.ToDateTime(optiont.Rows[0]["time"])).Minutes.ToString()+" min:";
                time.Text += (DateTime.Now - Convert.ToDateTime(optiont.Rows[0]["time"])).Seconds.ToString() + " sec ago";



                time.ForeColor = System.Drawing.Color.Blue;
                //name.Text += " " + time.Text;

                //if  query image is present
                if (dt.Rows[i]["image"].ToString() != "0")
                {
                    Image query_image = new Image();
                    query_image.ImageUrl = "/upload/" + img[i].Trim();
                    //query_image.ImageUrl = "/upload/p.jpg"; 
                        query_image.Width = 500;
                    query_image.Height = 100;
                    d.Controls.Add(query_image);

                }

                count = Convert.ToInt32( optiont.Rows[0]["likes"]);
                string options = optiont.Rows[0]["options"].ToString() ;
                //rearrange question in division
                string p = pst[i];
                char[] c = new char[p.Length];
                c = p.ToCharArray();
                int j = 0;
                string x ="<br>";
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
                x = x + "<br>";
                Label l2 = new Label();
                l2.ForeColor = System.Drawing.Color.AliceBlue;
                foreach (char c2 in options)
                    {

                        if (j == 110)
                        {
                            j = 0;
                       
                            y = y + "<br>";

                        }
                        j++;
                        if (c2 ==':')
                        {
                            j = 0;

                            l2.Text +=   "<br>";
                        l2.Text +=  " option " + Convert.ToChar(a) + ":" + " " + y;
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
                
                
                l.Text = "<b>" + x+l2.Text;

                d.Controls.Add(l);

                

                //like and comment

                Button b1 = new Button();
                
                b1.Text = "like  " + count;
                b1.ID = pstid[i].ToString()+"a";
               
                b1.Click += new EventHandler(likeclick);
               
                b1.CssClass = "w3-button w3-theme-d1 w3-margin-bottom";

                Button b2 = new Button();
                b2.Text = "comment";
                b2.ID = pstid[i].ToString();
                b2.Click += new EventHandler(btnclk);
               
                b2.CssClass = "w3-button w3-theme-d1 w3-margin-bottom";
                Label cl = new Label();
                cl.Text = "&nbsp;&nbsp;&nbsp;";
                
                
                tc5.Controls.Add(b1);
                tc6.Controls.Add(b2);
                
                
                i1.ImageUrl = "/upload/"+dt1.Rows[0]["image"].ToString().Trim();
                
                tc1.Controls.Add(i1);
                tc2.Controls.Add(name);
                tc3.Controls.Add(time);
                tc4.Controls.Add(d);
                d1.Controls.Add(t);
                d1.Controls.Add(t1);
                d1.Controls.Add(t2);
                post.Controls.Add(d1);
                
               
                
                
                
            }
            con.Close();
        }
        //to get which comment button is clicked
        public void btnclk(object sender, EventArgs e)
        {
            
            Button comment = sender as Button;
            // identify which button was clicked and perform necessary actions
            comment.Text = comment.ID;
            Session["pstid"] = comment.ID;
            Response.Redirect("comment.aspx");
            //here button id is post id so, by tracking post id we can get no of comments and comment also
            //for no of comment take a loop lets 2 cooments are there

        }
        public void likeclick(object sender, EventArgs e)
        {
            con.Open();
            Button like = sender as Button;
            int l_count;
            string s=like.ID;
            s = s.Remove(s.Length - 1);
            Session["likeid"] = s;
            try
            {
                SqlCommand chlike = new SqlCommand("insert into likes(emailid,mcq_id) values('" + Session["emailid"].ToString() + "','" + Convert.ToInt32(Session["likeid"]) + "')", con);
                chlike.ExecuteNonQuery();
            }
            catch(Exception eq)
            {
                goto exit;
            }
            SqlDataAdapter le = new SqlDataAdapter("select likes from Post_MCQ where mcq_id='"+ Convert.ToInt32( Session["likeid"])+"'", con);
            DataTable dt = new DataTable();
            le.Fill(dt);
            l_count = Convert.ToInt32( dt.Rows[0][0]);
           
              
               // l_count = Convert.ToInt32(likeclick[0]);
                l_count++;
           
           // Label1.Text = l_count.ToString();
                SqlCommand s2 = new SqlCommand("update  Post_MCQ set likes='" + l_count + "' where mcq_id='" + Convert.ToInt32(Session["likeid"]) + "'", con);
                s2.ExecuteNonQuery();
            exit:
            con.Close();
            Response.Redirect("Home.aspx");
        }
            protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("post.aspx");
        }
    }
}