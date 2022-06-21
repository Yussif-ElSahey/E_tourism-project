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
    public class hotel
    {
        
        public string name, img_path, brief, location, phone;
        public int rating;
        public hotel(string name, string img_path, string brief, int rating, string location, string phone)
        {
            this.name = name;
            this.img_path = img_path;
            this.brief = brief;
            this.rating = rating;
            this.location = location;
            this.phone = phone;
        }
    }
        public partial class UserAboutChairman : System.Web.UI.Page
    {
        public  List<hotel> hotels = new List<hotel>();


        protected void Page_Load(object sender, EventArgs e)
        {

            hotel h = new hotel("C#Marriott Mena House, Cairo", "./images/hotels/hotel_3.jpg", "In a stone palace on 16 hectares of gardens, this upscale hotel offering views of the Giza pyramid complex is 41 km from Cairo International Airport.", 5, "Cairo, Egypt", "02 33773222");
            hotels.Add(h);
            h = new hotel("C#Steigenberger ALDAU Beach Hotel", "./images/hotels/hotel_2.jpg", "Overlooking the Red Sea, this polished beach resort is 4 km from Hurghada Grand Aquarium and 11 km from Hurghada Marina.Accommodations range from cozy rooms with free Wi - Fi, safes and furnished balconies with resort promenade or sea views, to suites with private spas, and villas with rooftop pools.Room service is on offer 24 / 7.the best hotel", 5, "Hurghada, Egypt", "065 3465400");
            hotels.Add(h);
            //string stringjson = JsonConvert.SerializeObject(hotels);
            // if (!IsPostBack)
            {
                Session["Lang"] = "En";
                bindChairman();
            }
        }
        public string MyProperty { get { return JsonConvert.SerializeObject(hotels); } }

        void bindChairman()
        {
            //using (MAN_EgyptEntities MS = new MAN_EgyptEntities())
            //{
            //    /*PageContent pCont = MS.PageContent.FirstOrDefault(x => x.Page == "ChairmanWord" && x.Parameter == "ChairmanWordContent");
            //     if (Session["Lang"].ToString() == "Ar")
            //         lblChairman.Text = pCont.ChairmanWords;
            //     else if (Session["Lang"].ToString() == "En")
            //         lblChairman.Text = pCont.ChairmanWords;*/

            //}
        }
    }
}
