using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QuanLyHoiThao
{
    public partial class frmDoiMatKhau : Form
    {
        TAI_KHOAN tk;
        public frmDoiMatKhau()
        {
            InitializeComponent();
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="taiKhoan"></param>
        public frmDoiMatKhau(TAI_KHOAN taiKhoan)
        {
            InitializeComponent();
            tk = new TAI_KHOAN();
            tk.MA_CAN_BO = taiKhoan.MA_CAN_BO;
            tk.TEN_DANG_NHAP = taiKhoan.TEN_DANG_NHAP;
            tk.MAT_KHAU = taiKhoan.MAT_KHAU.Trim();
        }

        private void btnXacNhan_Click(object sender, EventArgs e)
        {
            if (txtMatKhauCu.Text.Trim() == "")
            {
                MessageBox.Show("Bạn chưa nhập mật khẩu cũ.");
                txtMatKhauCu.Clear();
                txtMatKhauCu.Focus();
            }
            else if (txtMatKhauMoi.Text.Trim() == "")
            {
                MessageBox.Show("Bạn chưa nhập mật khẩu mới.");
                txtMatKhauMoi.Clear();
                txtMatKhauMoi.Focus();
            }
            else if (txtNhapLai.Text.Trim() == "")
            {
                MessageBox.Show("Bạn chưa nhập lại mật khẩu mới.");
                txtNhapLai.Clear();
                txtNhapLai.Focus();
            }
            else
            {
                using (MD5 md5Hash = MD5.Create())
                {
                    string hash = MD5Class.GetMd5Hash(md5Hash, txtMatKhauCu.Text);
                    if (hash != tk.MAT_KHAU.Trim())
                    {
                        MessageBox.Show("Mật khẩu cũ chưa đúng.\n Mật khẩu cũ: " + tk.MAT_KHAU + " 1");
                    }
                    else if (txtMatKhauMoi.Text != txtNhapLai.Text)
                    {
                        MessageBox.Show("Mật khẩu mới và mật khẩu nhập lại chưa đúng.");
                    }
                    else
                    {
                        using (var db = new QuanLyHoiThaoEntities2())
                        {
                            var result = db.TAI_KHOAN.SingleOrDefault(x => x.TEN_DANG_NHAP == tk.TEN_DANG_NHAP);
                            if (result != null)
                            {
                                hash = MD5Class.GetMd5Hash(md5Hash, txtMatKhauMoi.Text);
                                result.MAT_KHAU = hash;
                                db.SaveChanges();
                                MessageBox.Show("Mật khẩu đã được thay đổi");
                            }
                        }
                    }
                }
            }
        }
    }
}
