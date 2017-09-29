using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Script.Serialization;


    public partial class _Default : System.Web.UI.Page
    {
        protected string Values;
        protected void Post(object sender, EventArgs e)
        {
            string[] textboxValues = Request.Form.GetValues("DynamicTextBox");
            JavaScriptSerializer serializer = new JavaScriptSerializer();
            this.Values = serializer.Serialize(textboxValues);
            string message = "";
            foreach (string textboxValue in textboxValues)
            {
                message += textboxValue + "\\n";
            }
            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", "alert('" + message + "');", true);
        }
    }
