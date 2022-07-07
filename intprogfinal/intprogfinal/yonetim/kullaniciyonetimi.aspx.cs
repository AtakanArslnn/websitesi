using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace intprogfinal.yonetim
{
    public partial class kullaniciyonetimi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string kullaniciadi = txt_KullaniciGirisEposta.Value;
            string sifre = txt_KullaniciGirisSifre.Value;
            string adi = txt_adi.Value;
            string soyadi = txt_soyadi.Value;
            bool kullanicisonuc = new BLL.BLLKullanici().KullaniciKontrol(kullaniciadi);
            if (kullanicisonuc == true)
            {
                lbl_hatamesaji.Text = "Daha Önceden Kayıt Yapılmış Mail Adresi";
            }
            else
            {
                bool sonuc = new BLL.BLLKullanici().KullaniciKaydet(kullaniciadi, sifre, adi, soyadi);
                lbl_hatamesaji.Text = "Ekleme Başarılı";
                grd_kullanicilar.DataBind();
            }
        }
    }
}