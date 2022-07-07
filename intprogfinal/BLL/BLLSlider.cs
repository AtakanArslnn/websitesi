using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BLL
{
    public class BLLSlider
    {
        public bool SliderKaydet(DAL.Slider slider)
        {
            DAL.intprogfinalEntities vt = new DAL.intprogfinalEntities();
            vt.Slider.Add(slider);
            vt.SaveChanges();
            return true;

        }
        public bool Sil(int SliderID)
        {
            DAL.intprogfinalEntities vt = new DAL.intprogfinalEntities();
            var sabit = vt.Slider.Where(p => p.SliderID == SliderID).SingleOrDefault();
            sabit.SilinmeDurumu = false;
            sabit.SilinmeTarihi = DateTime.Now;
            vt.SaveChanges();
            return true;


        }
        public List<DAL.Slider> TumResimleriListele()
        {
            DAL.intprogfinalEntities vt = new DAL.intprogfinalEntities();
            return vt.Slider.Where(p => p.SilinmeDurumu == true).ToList();

        }
    }
}