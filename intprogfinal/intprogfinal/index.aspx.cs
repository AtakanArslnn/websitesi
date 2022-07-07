using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace intprogfinal
{
    public partial class index1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var sliderresim = new BLL.BLLSlider().TumResimleriListele();
                string slidermetin = "";
                for (int i = 0; i < sliderresim.Count(); i++)
                {
                    slidermetin += "<li><img src='/upload/Duzenlenen/" + sliderresim[i].SliderResimURL + "' alt='" + sliderresim[i].SliderMetin + "'> <div class=container'><div class='row'>  <div class='col-md-5 col-lg-4'>                       <div class='flex-caption visible-lg'>                                    <span class='price'>$7,500</span>                                    <h3 class='title'>Venice, Italy</h3>                                   <p>      Slider resim 1  <span class='blue'>template</span><span class='green'>mo</span> website.                                       All images used in this template are from                                       <a rel='nofollow' href='http://unsplash.com' target='_parent'> Unsplash</a>.</p>                                    <a href = '#' class='slider-btn'>Pre-booking</a>                              </div>                            </div>                        </div>                    </div></li>";
                }
                ltr_Slider.Text = slidermetin;

                var altslider = new BLL.BLLAltSlider().TumListele();
                string Altslidermetin = "";
              
                for (int i = 0; i < altslider.Count(); i++)
                {
                    Altslidermetin += "<div class='col_1_of_4 span_1_of_4'><h3>" + altslider[i].BaslikMetin + "</h3><p>" + altslider[i].icerikMetin+ "</br>"+ altslider[i].TamMetin+ "</p></div>";
                    
                   
                    
                }
                ltr_AltSlider.Text = Altslidermetin;
               


            }
        }
    }
}