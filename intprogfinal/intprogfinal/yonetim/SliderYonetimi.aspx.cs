using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace intprogfinal.yonetim
{
    public partial class SliderYonetimi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btn_Sil_Click(object sender, EventArgs e)
        {
            int sliderid = Convert.ToInt32((sender as Button).CommandArgument.ToString());
            new BLL.BLLSlider().Sil(sliderid);
            GridView1.DataBind();
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (FileUpload1.FileName != "")
            {
                DAL.Slider sb = new DAL.Slider();

                sb.SliderMetin = txt_KullaniciGirisEposta.Value;
                sb.EklemeTarihi = DateTime.Now;
                sb.SilinmeDurumu = true;
                FileUpload1.SaveAs(Server.MapPath("/Upload/Orjinal/" + FileUpload1.FileName));
                System.Drawing.Bitmap Resim = new System.Drawing.Bitmap(Server.MapPath("/Upload/Orjinal/" + FileUpload1.FileName));
                Size boyut = new Size(1280, 400);
                Bitmap YeniResim = new Bitmap(Resim, boyut);
                YeniResim.Save(Server.MapPath("/Upload/Duzenlenen/" + FileUpload1.FileName));
                sb.SliderResimURL = FileUpload1.FileName;
                new BLL.BLLSlider().SliderKaydet(sb);
                GridView1.DataBind();
                lbl_hatamesaji.Text = "Kaydetme İşlemi Başarılı";
            }
            else
            {
                lbl_hatamesaji.Text = "Lütfen Bir resim Dosyası Seçiniz";
            }
        }
    }
}