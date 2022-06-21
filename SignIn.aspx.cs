using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Script.Services;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.Models;

namespace WebApplication1
{
    public partial class SignIn : System.Web.UI.Page
    {
        public static WebApplication1.Models.User Usr;

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        [WebMethod, ScriptMethod]
        protected void login_btn(object sender, EventArgs e)
        {
            using (Entities ent = new Entities())
            {
                Usr = new Models.User();
                string Name = txtUserName.Text; 
                string Pass = txtPassword.Text;
                List<WebApplication1.Models.User> user = ent.Users.Where(x => x.Username == Name && x.password == Pass).ToList();
                if (user.Count != 0)
                {
                    Usr = user.First();
                    Session["user"] = Usr.Username;
                    Session["id"] = Usr.UserID;
                    Response.Redirect("Account.aspx");
                }
                

                //else
                //{
                //    lblMsg.Text = "Wrong credentials ";
                //    lblMsg.Visible = true;
                //}
            }
        }
    }
}