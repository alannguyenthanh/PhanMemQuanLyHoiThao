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
    
    public partial class KHOAN_CHI
    {
        public string MA_PHIEU_CHI { get; set; }
        public string MA_MON { get; set; }
        public string MSSV { get; set; }
        public string KET_MA_MON { get; set; }
        public string MA_NHOM { get; set; }
        public string NOI_DUNG_CHI { get; set; }
        public System.DateTime NGAY_CHI { get; set; }
        public double SO_TIEN { get; set; }
    
        public virtual KET_QUA_CA_NHAN KET_QUA_CA_NHAN { get; set; }
    }
}
