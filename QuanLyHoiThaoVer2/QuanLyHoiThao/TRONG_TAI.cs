//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace QuanLyHoiThao
{
    using System;
    using System.Collections.Generic;
    
    public partial class TRONG_TAI
    {
        public string MA_MON { get; set; }
        public string MA_TRONG_TAI { get; set; }
        public string TEN_TRONG_TAI { get; set; }
        public string MAM { get; set; }
        public System.DateTime THOI_GIAN_THI_DAU { get; set; }
    
        public virtual MON_THI MON_THI { get; set; }
    }
}
