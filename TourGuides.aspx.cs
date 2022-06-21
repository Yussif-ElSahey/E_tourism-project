using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.Models;

namespace WebApplication1
{
    public partial class UserAboutMission : System.Web.UI.Page
    {
        public List<TourGuide> guides = new List<TourGuide>();
        protected void Page_Load(object sender, EventArgs e)
        {

            using (Entities ent = new Entities())
            {
                guides = ent.TourGuides.ToList();
            }
            //if (!IsPostBack)
            //{
            //    Session["Lang"] = "En";
                
            //}
        }
        protected string bindGuides { get { return JsonConvert.SerializeObject(guides); } }
    }
}