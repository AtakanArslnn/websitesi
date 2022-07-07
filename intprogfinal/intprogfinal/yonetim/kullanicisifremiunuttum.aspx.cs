using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace intprogfinal.yonetim
{
    public partial class kullanicisifremiunuttum : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void MailGonder(string eposta,string Adi,string Soyadi,string Sifre)
        {
            SmtpClient sc = new SmtpClient();
            sc.Port = 587;
            sc.Host = "smtp.gmail.com";
            sc.EnableSsl = true;

            sc.Credentials = new NetworkCredential("intprogfinal58@gmail.com", "Atakan2022.");

            MailMessage mail = new MailMessage();

            mail.From = new MailAddress("intprogfinal58@gmail.com", "İnternet Programcılığı Final");

            mail.To.Add(eposta);
        

            mail.Subject = "Şifre Bilgisi"; 
            mail.IsBodyHtml = true;
            mail.Body = "Sayın "+Adi+" "+Soyadi+" Kullanmakta Olduğunuz Şifreniz:"+Sifre;
            
            sc.Send(mail);
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string eposta = txt_KullaniciGirisEposta.Value;
            var kullanici = new BLL.BLLKullanici().KullaniciGetir(eposta);
            if (kullanici.Count() > 0)
            {
                MailGonder(kullanici[0].Eposta.ToString(), kullanici[0].Adi.ToString(), kullanici[0].Soyadi.ToString(), kullanici[0].Sifre.ToString());
                lblhatamesaji.Text = "Mail başarı ile gönderildi";
            }
            else
            {
                lblhatamesaji.Text = "Hatalı Eposta adresi";
            }
        }
    }
}