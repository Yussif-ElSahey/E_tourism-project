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
    public partial class UserAboutVision : System.Web.UI.Page
    {
        protected List<Attraction> attractions = new List<Attraction>();
        protected void Page_Load(object sender, EventArgs e)
        {

            using (Entities ent = new Entities())
            {
                attractions = ent.Attractions.ToList();
            }
            //if (!IsPostBack)
            //{
            //    Session["Lang"] = "En";
            //    bindVisson();
            //}

        }
        protected string bindAttractions { get { return JsonConvert.SerializeObject(attractions); } }

        
    }
}