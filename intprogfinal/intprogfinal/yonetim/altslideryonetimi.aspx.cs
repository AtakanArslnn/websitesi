using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace intprogfinal.yonetim
{
    public partial class altslideryonetimi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            DAL.AltSlider sb = new DAL.AltSlider();
            if (FileUpload1.FileName != "")
            {
                FileUpload1.SaveAs(Server.MapPath("/Upload/Orjinal/" + FileUpload1.FileName));
                System.Drawing.Bitmap Resim = new System.Drawing.Bitmap(Server.MapPath("/Upload/Orjinal/" + FileUpload1.FileName));
                
               
                sb.IconURL = FileUpload1.FileName;

            }

            sb.BaslikMetin = txt_Baslik.Value;
            sb.EklenmeTarihi = DateTime.Now;
            sb.SilinmeDurumu = true;
            sb.TamMetin = txt_icerik.Value;
            sb.icerikMetin = txt_icerikozet.Value;
            new BLL.BLLAltSlider().AltSliderKaydet(sb);
            grdaltslider.DataBind();
            lbl_hatamesaji.Text = "Kaydetme İşlemi Başarılı";
        }
        protected void btn_Sil_Click(object sender, EventArgs e)
        {
            int sliderid = Convert.ToInt32((sender as Button).CommandArgument.ToString());
            new BLL.BLLAltSlider().Sil(sliderid);
            grdaltslider.DataBind();
        }
    }
}