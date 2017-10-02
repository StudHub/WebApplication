using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
namespace WebApplication4
{
    public partial class test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MultiView1.ActiveViewIndex = 0;
                l1.Text = "question1";
                l2.Text = "question2";
                l3.Text = "question3";
                l4.Text = "question4";
                l5.Text = "question5";
                l6.Text = "question6";

                //string[] textboxValues = Request.Form.GetValues("r1");
                for (int j = 0; j < 6; j++)
                {

                    createRadio(4,j+1);

                }
                //check();
                //l2.Text = RadioButtonList1.SelectedItem.ToString();
            }
        }
        public void check()
        {
            ListItem l1 = new ListItem();
            l1.Text = "red";
            l1.Value = "red";
            l1.Selected = true;
            ListItem l2 = new ListItem();
            l2.Text = "orange";
            l2.Value = "orange";
            RadioButtonList1.Items.Add(l1);
            RadioButtonList1.Items.Add(l2);
        }
        public void createRadio(int i,int x)
        {
            
            int j = 0;
            while (j < i)
            {
                ListItem l = new ListItem();
                l.Text = x.ToString() + (j + 1).ToString();
                l.Value = l.Text;
               // RadioButton r = new RadioButton();
                //r.GroupName = "test" + x.ToString();
                //string s = x.ToString() + (j + 1).ToString();
                //r.ID = s;
                //r.Text = r.ID;
                
                switch (x) {
                    case 1:

                        RadioButtonList1.Items.Add(l);
                        break;
                    case 2:
                        RadioButtonList2.Items.Add(l);
                        break;
                    case 3:
                        RadioButtonList3.Items.Add(l);
                        break;
                    case 4:
                        RadioButtonList4.Items.Add(l);
                        break;
                    case 5:
                        RadioButtonList5.Items.Add(l);
                        break;
                    case 6:
                        RadioButtonList6.Items.Add(l);
                        break;
                    
                            
                }
                j++;
            }
            
            }

        protected void Button3_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 2;
        }

        protected void Button15_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 3;
        }

        protected void Button17_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 2;
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 4;
        }

        protected void Button19_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 3;
        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 5;
        }

        protected void Button21_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 4;
        }

        protected void Button13_Click(object sender, EventArgs e)
        {
            l6.Text = RadioButtonList1.SelectedValue+ RadioButtonList2.SelectedValue+ RadioButtonList3.SelectedValue
                + RadioButtonList4.SelectedValue + RadioButtonList5.SelectedValue+ RadioButtonList6.SelectedValue;
        }
    }
}