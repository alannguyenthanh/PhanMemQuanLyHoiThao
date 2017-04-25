using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VO
{
    public class TAIKHOANVO
    {
        private string _maCanBo, _tenDN, _matKhau;

        public string MatKhau
        {
            get { return _matKhau; }
            set { _matKhau = value; }
        }

        public string TenDN
        {
            get { return _tenDN; }
            set { _tenDN = value; }
        }

        public string MaCanBo
        {
            get { return _maCanBo; }
            set { _maCanBo = value; }
        }

        public int dn(string id, string pass)
        {
            return 1;
        }
    }
}
