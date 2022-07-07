using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BLL
{
    public class BLLKullanici
    {
        public List<DAL.Kullanici> KullaniciGetir(string Eposta, string Sifre)
        {
            try
            {
                DAL.intprogfinalEntities vt = new DAL.intprogfinalEntities();
                return vt.Kullanici.Where(p => p.Eposta == Eposta && p.Sifre == Sifre).ToList();
            }
            catch
            {

                return new List<DAL.Kullanici>();
            }
        }
            public bool KullaniciKaydet(string Eposta, string Sifre, string Adi, String Soyadi)
        {

            DAL.intprogfinalEntities vt = new DAL.intprogfinalEntities();
            DAL.Kullanici entity = new DAL.Kullanici();
            entity.Adi = Adi;
            entity.Soyadi = Soyadi;
            entity.Sifre = Sifre;
            entity.Eposta = Eposta;
            entity.eklenmeTarihi = DateTime.Now;
            entity.kullaniciturID = 2;
            entity.silinmeDurumu = false;
            vt.Kullanici.Add(entity);
            vt.SaveChanges();
            return true;


        }
        public bool KullaniciKontrol(string eposta)

        {
            DAL.intprogfinalEntities vt = new DAL.intprogfinalEntities();
            var kullanici = vt.Kullanici.Where(p => p.Eposta == eposta).ToList();
            if (kullanici.Count() > 0)
            {
                return true;
            }
            else
            {
                return false;
            }



        }
        public List<DAL.Kullanici> KullaniciGetir(string Eposta)
        {
            DAL.intprogfinalEntities vt = new DAL.intprogfinalEntities();
            var kl = vt.Kullanici.Where(p => p.Eposta == Eposta).ToList();
            return kl;

        }

        public List<DAL.Kullanici> TumKullanicilar()
        {

            DAL.intprogfinalEntities vt = new DAL.intprogfinalEntities();
            var kl = vt.Kullanici.Where(p => p.silinmeDurumu == false).ToList();
            return kl;


        }
        public bool KullaniciSil(DAL.Kullanici kl)
        {
            DAL.intprogfinalEntities vt = new DAL.intprogfinalEntities();
            var kullanicibilgileri = vt.Kullanici.Where(p => p.kullaniciID == kl.kullaniciID).SingleOrDefault();
            kullanicibilgileri.silinmeDurumu = true;
            kullanicibilgileri.silinmeTarihi = DateTime.Now;
            vt.SaveChanges();
            return true;

        }
    }
}