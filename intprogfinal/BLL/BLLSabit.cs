using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BLL
{
    public class BLLSabit
    {
        public bool LogoKaydet(DAL.sabit logo)
        {
            DAL.intprogfinalEntities vt = new DAL.intprogfinalEntities();
            vt.sabit.Add(logo);
            vt.SaveChanges();
            return true;
        }
        public List<DAL.sabit> Listele()
        {
            DAL.intprogfinalEntities vt = new DAL.intprogfinalEntities();
            return vt.sabit.Where(p => p.silinmedurumu == true).ToList();




        }

        public bool Sil(int SabitID)
        {
            DAL.intprogfinalEntities vt = new DAL.intprogfinalEntities();
            var sabit = vt.sabit.Where(p => p.sabitID == SabitID).SingleOrDefault();
            sabit.silinmedurumu = false;
            sabit.silinmetarihi = DateTime.Now;
            vt.SaveChanges();
            return true;


        }
        public List<DAL.sabit> LogoGetir()
        {
            DAL.intprogfinalEntities vt = new DAL.intprogfinalEntities();
            return vt.sabit.Where(p => p.silinmedurumu == true).ToList();

        }
    }
}