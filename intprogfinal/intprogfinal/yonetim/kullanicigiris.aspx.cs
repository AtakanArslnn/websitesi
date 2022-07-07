using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace intprogfinal.yonetim
{
    public partial class kullanicigiris : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string kullaniciadi = txt_KullaniciGirisEposta.Value;
            string sifre = txt_KullaniciGirisSifre.Value;
            var sonuc = new BLL.BLLKullanici().KullaniciGetir(kullaniciadi, sifre);
            if (sonuc.Count() > 0)
            {
                Response.Redirect("index.aspx");
            }
            else
            {
                lbl_hatamesaji.Text = "Kullanıcı Adı veya Şifre Hatalı";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("kullanicikaydet.aspx");
        }

        protected void btnsifremiunuttum_Click(object sender, EventArgs e)
        {
            Response.Redirect("kullanicisifremiunuttum.aspx");
        }
    }
}