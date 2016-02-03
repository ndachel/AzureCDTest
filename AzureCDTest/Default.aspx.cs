using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Http;
using System.Net.Http.Headers;
using Newtonsoft.Json;

namespace AzureCDTest
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void getem_Click(object sender, EventArgs e)
        {
            String URL = "http://api.wunderground.com/";
            //String urlParams = "api/3585f5a686977cb6/geolookup/conditions/q/colorado/fort%20collins.json";
            String urlParams = ("api/3585f5a686977cb6/geolookup/conditions/q/"
                + state.Text.Replace(" ", "%20") + "/"
                + city.Text.Replace(" ", "%20") + ".json");
            lit1.Text = "Getting: " + URL + urlParams;
            HttpClient client = new HttpClient();
            client.BaseAddress = new Uri(URL);
            client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));

            HttpResponseMessage response = client.GetAsync(urlParams).Result;
            String output = response.Content.ReadAsStringAsync().Result;
            var Weather = JsonConvert.DeserializeObject(output);

            lit2.Text = output;
        }
    }
}