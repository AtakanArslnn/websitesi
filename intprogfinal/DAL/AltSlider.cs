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
    
    public partial class AltSlider
    {
        public int AltSliderID { get; set; }
        public string BaslikMetin { get; set; }
        public string icerikMetin { get; set; }
        public string IconURL { get; set; }
        public Nullable<System.DateTime> EklenmeTarihi { get; set; }
        public Nullable<int> EkleyenKullaniciID { get; set; }
        public Nullable<System.DateTime> SilinmeTarihi { get; set; }
        public Nullable<int> SilenKullaniciID { get; set; }
        public Nullable<bool> SilinmeDurumu { get; set; }
        public string TamMetin { get; set; }
    }
}