using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Configuration;

namespace WebApplication4
{
    public partial class submit_test : System.Web.UI.Page
    {  int j=0;
        
             
        protected void Page_Load(object sender, EventArgs e)
        {
            
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["studhub"].ConnectionString);
            con.Open();
            int correcta = 0;

            HtmlGenericControl d1 = new HtmlGenericControl("div");
            Table stt = new Table();
            char[] s = null;
            string correct_que_no = Session["correct_que_no"].ToString();
            s=correct_que_no.ToCharArray();
            TableRow sttr = new TableRow();
            for (int i=0;i<10;i++)
            {
                TableCell sttc = new TableCell();
                sttc.Width = 100;

               
                
                Label l = new Label();
                l.Text = "<h3>"+(i + 1).ToString();
                l.Width = 50;
                l.Height = 50;
                
                l.BackColor = System.Drawing.Color.Red;
                l.CssClass = "w3-badge w3-right w3-small w3-red";
                if (s[i] == '1')
                {
                    correcta++;
                    l.BackColor = System.Drawing.Color.Green;
                    l.CssClass = "w3-badge w3-right w3-small w3-green";
                }
                correct.Text =correcta.ToString();
                wrong.Text = (10 - correcta).ToString();
                attempt.Text = Session["attemptq"].ToString();
                score.Text =correct.Text + "/10" ;
                    sttc.Controls.Add(l);
                sttr.Controls.Add(sttc);
                
            }
            stt.Controls.Add(sttr);
            test_submit_div.Controls.Add(stt);
            SqlCommand marks = new SqlCommand("update Test set totalM=10, Obtainm=@obtainM, totalQ=10 , attemptQ=@attemptQ where tid='"+Session["tid"]+"' ", con);
            marks.Parameters.AddWithValue("@obtainM", correcta);
            marks.Parameters.AddWithValue("@attemptQ", Convert.ToInt32(Session["attemptq"]));
            marks.ExecuteNonQuery();

           

        }
       

    }
}