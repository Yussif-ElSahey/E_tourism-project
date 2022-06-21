using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.Models;
using Newtonsoft.Json;

namespace WebApplication1
{

    public partial class UserAboutOverView : System.Web.UI.Page
    {
        public List<CarRental> carRentals = new List<CarRental>();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Session["Lang"] = "En";
            }
            using (Entities ent = new Entities())
            {
                carRentals = ent.CarRentals.ToList();

            }
        }

        public string bindComOver { get { return JsonConvert.SerializeObject(carRentals); } }
    }
}