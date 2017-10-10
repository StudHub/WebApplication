using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Data.Sql;
namespace WebApplication4
{
    public partial class test : System.Web.UI.Page
    {
       static string[] answers = new string[10];
        List<CheckBoxList> list_checkbox = new List<CheckBoxList>();
        List<Label> list = new List<Label>();
        List<Image> list_img = new List<Image>();
     
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToBoolean(Session["tst_complete"]) == true)
            {
                
                Response.Redirect("select_test.aspx");

            }
            //            Label lal = new Label() ;
           

            if (!IsPostBack)
            {
                list.Add(l1);
                list_img.Add(Image1);
                list_checkbox.Add(CheckBoxList1);
                list.Add(l2);
                list_img.Add(Image2);
                list_checkbox.Add(CheckBoxList2);
                list.Add(l3);
                list_img.Add(Image3);
                list_checkbox.Add(CheckBoxList3);
                list.Add(l4);
                list_img.Add(Image4);
                list_checkbox.Add(CheckBoxList4);
                list.Add(l5);
                list_img.Add(Image5);
                list_checkbox.Add(CheckBoxList5);
                list.Add(l6);
                list_img.Add(Image6);
                list_checkbox.Add(CheckBoxList6);
                list.Add(l7);
                list_img.Add(Image7);
                list_checkbox.Add(CheckBoxList7);
                list.Add(l8);
                list_img.Add(Image8);
                list_checkbox.Add(CheckBoxList8);
                list.Add(l9);
                list_img.Add(Image9);
                list_checkbox.Add(CheckBoxList9);
                list.Add(l10);
                list_img.Add(Image10);
                list_checkbox.Add(CheckBoxList10);
                MultiView1.ActiveViewIndex = 0;
               

                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["studhub"].ConnectionString);
                con.Open();
                SqlDataAdapter que =new SqlDataAdapter("Select * from Questions where s_id='"+Session["sub_id"]+"'",con);
                DataTable tst_que = new DataTable();
                que.Fill(tst_que);
                Random r = new Random();
                List<int> randomNumbers = new List<int>();
               
                for (int i = 0; i <10; i++)
                {
                    int number;

                    do number = r.Next(0,tst_que.Rows.Count);
                    while (randomNumbers.Contains(number));

                    randomNumbers.Add(number);
                   // l1.Text += randomNumbers[i].ToString();
                }
                
                for (int i = 0; i <10; i++) {
                    if (tst_que.Rows[randomNumbers[i]]["que_img"].ToString()!="0")
                    {
                        list_img[i].Width = 100;
                        list_img[i].Height = 100;
                        list_img[i].ImageUrl = "/upload/" + tst_que.Rows[randomNumbers[i]]["que_img"].ToString();
                    }
                    // var lb = "l" + (i + 1).ToString();
                    List<string> options_list = new List<string>();
                    Label lal = list[i];

                  
                    answers[i] = tst_que.Rows[randomNumbers[i]]["answers"].ToString();
                    lal.Text =randomNumbers[i]+ tst_que.Rows[randomNumbers[i]]["question"].ToString();
                    
                    SqlCommand s1 = new SqlCommand("insert into Test_details(tid,question_id) values(@tid,@question_id)",con);
                    s1.Parameters.AddWithValue("@tid", Convert.ToInt32(Session["tid"]));
                    s1.Parameters.AddWithValue("@question_id", Convert.ToInt32(tst_que.Rows[randomNumbers[i]]["question_id"]));
                    s1.ExecuteNonQuery();
                    l1.Text = list_checkbox.Count.ToString();
                    SqlDataAdapter option_fetch = new SqlDataAdapter("select options from Questions where question_id='"+tst_que.Rows[randomNumbers[i]]["question_id"].ToString()+"'", con);
                    DataTable option_dt = new DataTable();
                    option_fetch.Fill(option_dt);
                    string y = null;
                    foreach (char c2 in option_dt.Rows[0]["options"].ToString())
                    {

                        if (c2 == ':')
                        {
                            options_list.Add(y);
                            y = null;

                        }
                        else
                        {
                            y = y + c2;
                        }
                    }
                    int countt=options_list.Count;

                    createRadio(countt, options_list,i);
                    
                }
                
                /*  l1.Text = "question1";
               l2.Text = "question2";
               l3.Text = "question3";
               l4.Text = "question4";
               l5.Text = "question5";
               l6.Text = "question6";
               l7.Text = "question7";
               l8.Text = "question8";
               l9.Text = "question9";
               l10.Text = "question10";*/
                if (!IsPostBack)
                {
                    Session["timeout"] = DateTime.Now.AddMinutes(2);
                }

                //string[] textboxValues = Request.Form.GetValues("r1");
               
                //check();
                //l2.Text = CheckBoxList1.SelectedItem.ToString();
            }
        }
     /*   public void check()
        {
            ListItem l1 = new ListItem();
            l1.Text = "red";
            l1.Value = "red";
            l1.Selected = true;
            ListItem l2 = new ListItem();
            l2.Text = "orange";
            l2.Value = "orange";
            CheckBoxList1.Items.Add(l1);
            CheckBoxList1.Items.Add(l2);
        }*/
        public void createRadio(int i,List<string> op,int x)
        {
            
            int j = 0;
            while (j < i)
            {
                ListItem l = new ListItem();
                l.Text = op[j];
                l.Value = l.Text;
               // RadioButton r = new RadioButton();
                //r.GroupName = "test" + x.ToString();
                //string s = x.ToString() + (j + 1).ToString();
                //r.ID = s;
                //r.Text = r.ID;
                
                switch (x+1) {
                    case 1:

                        CheckBoxList1.Items.Add(l);
                        break;
                    case 2:
                        CheckBoxList2.Items.Add(l);
                        break;
                    case 3:
                        CheckBoxList3.Items.Add(l);
                        break;
                    case 4:
                        CheckBoxList4.Items.Add(l);
                        break;
                    case 5:
                        CheckBoxList5.Items.Add(l);
                        break;
                    case 6:
                        CheckBoxList6.Items.Add(l);
                        break;
                    case 7:
                        CheckBoxList7.Items.Add(l);
                        break;
                    case 8:
                        CheckBoxList8.Items.Add(l);
                        break;
                    case 9:
                        CheckBoxList9.Items.Add(l);
                        break;
                    case 10:
                        CheckBoxList10.Items.Add(l);
                        break;

                }
                j++;
            }
            
            }

        protected void Button3_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
            q_no.InnerText ="Question:2";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
            q_no.InnerText = "Question:1";
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 2;
            q_no.InnerText = "Question:3";
        }

        protected void Button15_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
            q_no.InnerText = "Question:2";
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 3;
            q_no.InnerText = "Question:4";
        }

        protected void Button17_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 2;
            q_no.InnerText = "Question:3";
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 4;
            q_no.InnerText = "Question:5";
        }

        protected void Button19_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 3;
            q_no.InnerText = "Question:4";
        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 5;
            q_no.InnerText = "Question:6";
        }

        protected void Button21_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 4;
            q_no.InnerText = "Question:3";
        }

        protected void Button13_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 6;
            q_no.InnerText = "Question:7";
        }

        protected void Button16_Click(object sender, EventArgs e)
        {
            list_checkbox.Add(CheckBoxList1);
            list_checkbox.Add(CheckBoxList2);
            list_checkbox.Add(CheckBoxList3);
            list_checkbox.Add(CheckBoxList4);
            list_checkbox.Add(CheckBoxList5);
            list_checkbox.Add(CheckBoxList6);
            list_checkbox.Add(CheckBoxList7);
            list_checkbox.Add(CheckBoxList8);
            list_checkbox.Add(CheckBoxList9);
            list_checkbox.Add(CheckBoxList10);
            int attemptque = 0;
            string[] ans=new string[10]; 
            for (int i = 0; i < 10; i++) {
                ans[i] = "4";
                // l10.Text =list.Count.ToString();
                foreach (ListItem item in list_checkbox[i].Items )
                {
                    
                    if (item.Selected)
                    {
                        
                        if (ans[i] =="4")
                        {
                            ans[i] = null;
                        }
                        // If the item is selected, add the value to the list.
                         ans[i] += item.Value + ":";
                    }

                    
                }
                if (ans[i] != "4")
                {
                    attemptque++;
                }


            }
            Session["attemptq"] = attemptque.ToString();
           string correct_question_answerd = null;
          for(int i = 0; i < 10; i++)
            {
               // l10.Text += ans[i] + " ";
                //l10.Text += answers[i]+" ";
                if (ans[i].Equals(answers[i])) {
                    correct_question_answerd +="1";
                }
                else
                    correct_question_answerd += "0";
               
            }
          
            Session["correct_que_no"] = correct_question_answerd;
            Session["tst_complete"] = true;

            //string url = "submit_test.aspx";
            //string s = "window.open('" + url + "', 'popup_window', 'width=300,height=100,left=100,top=100,resizable=yes');";
            //Page.ClientScript.RegisterStartupScript(this.Page.GetType(), "script", s, true);
           // Page.ClientScript.RegisterClientScriptBlock(this.Page.GetType(), "", "window.open('submit_test.aspx');", true);
           
            //  Page.ClientScript.RegisterClientScriptBlock(this.Page.GetType(), "", "window.close();", true);
            
            Response.Redirect("submit_test.aspx");
            //l10.Text += correct_question_answerd+" ";
        }

        protected void Button14_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 8;
        }

        protected void Button12_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 9;
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 7;
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 8;
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 6;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 7;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 5;
        }
        protected void Timer1_Tick(object sender, EventArgs e)
        {
            if (0 > DateTime.Compare(DateTime.Now, DateTime.Parse(Session["timeout"].ToString())))
            {
                Label1.Text = "<br>" + string.Format("Time Left: 00:{0}:{1}", ((Int32)DateTime.Parse(Session["timeout"].ToString()).Subtract(DateTime.Now).TotalMinutes).ToString(), ((Int32)DateTime.Parse(Session["timeout"].ToString()).Subtract(DateTime.Now).Seconds).ToString());
            }
            else
            {
                Timer1.Enabled = true;
                Response.Redirect("Home.aspx");

            }
        }
    }
  
}