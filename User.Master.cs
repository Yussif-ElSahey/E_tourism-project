using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Web.Services;

namespace WebApplication1
{
    public partial class User : System.Web.UI.MasterPage
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["user"] != null)
            {
                regBtn.Visible = false;
                logBtn.Visible = false;
                Button1.Visible = true;
            }
            else
            {
                regBtn.Visible = true;
                logBtn.Visible = true;
                Button1.Visible = false;
            }

        }
        public void register(object sender, EventArgs e)
        {
            Response.Redirect("register.aspx");
        }

        [WebMethod]
        public void login(object sender, EventArgs e)
        {
            if(logBtn.InnerText == "Login")
            {
                Response.Redirect("Signin.aspx");

            }
            else
            {
                Response.Redirect("Account.aspx");
                Session["user"] = null;

            }

        }
    }
}