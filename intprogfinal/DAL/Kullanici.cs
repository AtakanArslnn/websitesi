//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DAL
{
    using System;
    using System.Collections.Generic;
    
    public partial class Kullanici
    {
        public int kullaniciID { get; set; }
        public string Eposta { get; set; }
        public string Sifre { get; set; }
        public string Adi { get; set; }
        public string Soyadi { get; set; }
        public Nullable<int> kullaniciturID { get; set; }
        public Nullable<System.DateTime> eklenmeTarihi { get; set; }
        public Nullable<System.DateTime> silinmeTarihi { get; set; }
        public Nullable<bool> silinmeDurumu { get; set; }
    
        public virtual kullanicitur kullanicitur { get; set; }
    }
}
