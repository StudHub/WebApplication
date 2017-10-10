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
            
            
           SqlDataAdapter s1 = new SqlDataAdapter("select mcq,emailid,mcq_id,image from Post_MCQ",con);
            con.Open();
            
            DataTable dt = new DataTable();
            s1.Fill(dt);

            string[] pst = new string[dt.Rows.Count];
            string[] pstid = new string[dt.Rows.Count];
            int i = 0;

            foreach (DataRow row in dt.Rows)
            {
                
                pst[i] = row["mcq"].ToString();
                pstid[i] = row["mcq_id"].ToString();
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
                SqlDataAdapter s2 = new SqlDataAdapter("select name,image from userr where emailid in('"+dt.Rows[i]["emailid"]+"')", con);
                DataTable dt1=new DataTable();
                s2.Fill(dt1);
                int count = 0;
                tc2.Text= "<h3><b>"+(string)dt1.Rows[0]["name"];
                
                //original post
                HtmlGenericControl d = new HtmlGenericControl("div");
               // d.ID =Convert.ToString(i);
                d.Attributes.Add("style", "height:auto;width:75%;margin-left:10%;background-color:lightblue;margin-top:0px");
                Label l = new Label();



                //if  query image is present
                if (dt.Rows[i]["image"].ToString() != "0")
                {
                    Image query_image = new Image();
                    query_image.ImageUrl = "/upload/" + dt.Rows[i]["image"].ToString();
                    query_image.Width = 500;
                    query_image.Height = 100;
                    d.Controls.Add(query_image);

                }

                //options
                SqlDataAdapter option = new SqlDataAdapter("select options,likes from Post_MCQ where mcq_id='" + pstid[i] + "'",con);
                DataTable optiont = new DataTable() ;
                option.Fill(optiont);
                count = Convert.ToInt32( optiont.Rows[0]["likes"]);
                string options = optiont.Rows[0]["options"].ToString() ;
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
                        if (c2 ==':')
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
                Table lt = new Table();
                
                TableRow ltr = new TableRow();
                TableCell ltc1 = new TableCell();
                TableCell ltc2 = new TableCell();
                
                lt.Rows.Add(ltr);
                ltr.Cells.Add(ltc1);
                ltr.Cells.Add(ltc2);
                ltc1.Controls.Add(b1);
                ltc2.Controls.Add(b2);
                i1.ImageUrl = "/upload/"+dt1.Rows[0]["image"];
                
                tc1.Controls.Add(i1);
                ltc1.Attributes.Add("style", "width:100px");

                post.Controls.Add(d1);
                d1.Controls.Add(t);
                d1.Controls.Add(d);
                d1.Controls.Add(lt);
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