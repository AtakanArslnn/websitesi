using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace intprogfinal
{
    public partial class icerik : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var logo = new BLL.BLLSabit().LogoGetir();
                string logogosterimi = "<img src='/Upload/Duzenlenen/" + logo[0].logoURL + "'  title='logo'/>";
                ltr_Logo.Text = logogosterimi;


            }
        }
    }
}