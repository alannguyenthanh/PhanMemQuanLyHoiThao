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
    
    public partial class CAN_BO
    {
        public CAN_BO()
        {
            this.TAI_KHOAN = new HashSet<TAI_KHOAN>();
        }
    
        public string MA_CAN_BO { get; set; }
        public string TEN_CAN_BO { get; set; }
        public string CHUC_VU { get; set; }
    
        public virtual ICollection<TAI_KHOAN> TAI_KHOAN { get; set; }
    }
}