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
    public partial class Projects : System.Web.UI.Page
    {
        protected List<FeatureList> features = new List<FeatureList>();
        protected List<TypeTable> typeTables = new List<TypeTable>();
        protected List<Location> locations = new List<Location>();
        protected List<Attraction> attractions = new List<Attraction>();

        List<double> temp;

        protected void Page_Load(object sender, EventArgs e)
        {
            using (Entities ent = new Entities())
            {
                List<int> featureIDs = new List<int>();
                typeTables = ent.TypeTables.ToList();
                locations = ent.Locations.ToList();
                List<double> ratings = new List<double>();
                List<double> prices_list = new List<double>();
                attractions = ent.Attractions.ToList();

                ratings = ent.Attractions.Select(column => column.Rating).ToList();
                prices_list = ent.Attractions.Select(column => column.price).ToList();

                SortedSet<double> price_set = new SortedSet<double>(prices_list);
                temp = new List<double>(price_set.ToList());
            }

            

        }
        protected string price_set { get { return JsonConvert.SerializeObject(temp); } }
        
        public string types { get { return JsonConvert.SerializeObject(typeTables); } }
        public string locs { get { return JsonConvert.SerializeObject(locations); } }
        protected string bindAttractions { get { return JsonConvert.SerializeObject(attractions); } }

    }
}