using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace intprogfinal.yonetim
{
    public partial class degiskenleriyonet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (FileUpload1.FileName != "")
            {
                DAL.sabit sb = new DAL.sabit();
                sb.haritax = txtharitay.Value;
                sb.haritay = txt_adi.Value;
                sb.logoAciklama = txt_aciklama.Value;
                sb.iletisimtel = txtiletisimnumarası.Value;
                sb.silinmedurumu = true;
                FileUpload1.SaveAs(Server.MapPath("/Upload/Orjinal/" + FileUpload1.FileName));
                sb.logoURL = FileUpload1.FileName;
                new BLL.BLLSabit().LogoKaydet(sb);
                grd_sabitler.DataBind();
                lbl_hatamesaji.Text = "Kaydetme İşlemi Başarılı";
            }
            else
            {
                lbl_hatamesaji.Text = "Lütfen Bir resim Dosyası Seçiniz";
            }
        } protected void btn_Sil_Click(object sender, EventArgs e)
    {
        int sabitid = Convert.ToInt32((sender as Button).CommandArgument.ToString());
        new BLL.BLLSabit().Sil(sabitid);
        grd_sabitler.DataBind();
    }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (FileUpload1.FileName != "")
            {
                DAL.sabit sb = new DAL.sabit();
                sb.haritax = txtharitay.Value;
                sb.haritay = txt_adi.Value;
                sb.logoAciklama = txt_aciklama.Value;
                sb.iletisimtel = txtiletisimnumarası.Value;
                sb.silinmedurumu = true;
                
                FileUpload1.SaveAs(Server.MapPath("/Upload/Orjinal/" + FileUpload1.FileName));
                System.Drawing.Bitmap Resim = new System.Drawing.Bitmap(Server.MapPath("/Upload/Orjinal/" + FileUpload1.FileName));
                Size boyut = new Size(120, 40);
                Bitmap YeniResim = new Bitmap(Resim, boyut);
                YeniResim.Save(Server.MapPath("/Upload/Duzenlenen/" + FileUpload1.FileName));
                sb.logoURL = FileUpload1.FileName;
                new BLL.BLLSabit().LogoKaydet(sb);
                grd_sabitler.DataBind();
                lbl_hatamesaji.Text = "Kaydetme İşlemi Başarılı";
            }
            else
            {
                lbl_hatamesaji.Text = "Lütfen Bir resim Dosyası Seçiniz";
            }
        }
    }
   
}