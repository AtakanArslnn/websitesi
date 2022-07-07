using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BLL
{
    public class BLLAltSlider
    {
        public bool AltSliderKaydet(DAL.AltSlider AltSlider)
        {
            DAL.intprogfinalEntities vt = new DAL.intprogfinalEntities();
            vt.AltSlider.Add(AltSlider);
            vt.SaveChanges();
            return true;

        }
        public bool Sil(int AltSliderID)
        {
            DAL.intprogfinalEntities vt = new DAL.intprogfinalEntities();
            var sabit = vt.AltSlider.Where(p => p.AltSliderID == AltSliderID).SingleOrDefault();
            sabit.SilinmeDurumu = false;
            sabit.SilinmeTarihi = DateTime.Now;
            vt.SaveChanges();
            return true;


        }

        public List<DAL.AltSlider> TumListele()
        {
            DAL.intprogfinalEntities vt = new DAL.intprogfinalEntities();
            return vt.AltSlider.Where(p => p.SilinmeDurumu == true).ToList();

        }
    }
}