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
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void btnSignin_Click(object sender, EventArgs e)
        {
            if (txtID.Text.Trim() == "")
            {
                lblError.Text = "Bạn chưa nhập Tên Đăng Nhập.";
                txtID.Focus();
            }
            else if (txtPass.Text.Trim() == "")
            {
                lblError.Text = "Bạn chưa nhập Mật Khẩu.";
                txtPass.Focus();
            }
            else 
            {
                using (MD5 md5Hash = MD5.Create())
                {
                    string hash = MD5Class.GetMd5Hash(md5Hash, txtPass.Text);
                    using (QuanLyHoiThaoEntities2 c = new QuanLyHoiThaoEntities2())
                    {
                        TAI_KHOAN tk = new TAI_KHOAN();
                        tk.TEN_DANG_NHAP = c.TAI_KHOAN.FirstOrDefault(x => x.TEN_DANG_NHAP == txtID.Text.Trim()).TEN_DANG_NHAP.ToString();
                        tk.MAT_KHAU = c.TAI_KHOAN.FirstOrDefault(x => x.TEN_DANG_NHAP == txtID.Text.Trim()).MAT_KHAU.ToString();
                        if (txtID.Text.Trim() == tk.TEN_DANG_NHAP.Trim() && tk.MAT_KHAU.Trim() == hash)
                        {
                            this.Hide();
                            frmMainWin main = new frmMainWin(tk);
                            main.ShowDialog();
                            this.Close();
                        }
                        else
                        {
                            lblError.Text = "Tên đăng nhập hoặc mật khẩu chưa đúng!!";
                        }
                    }
                }
                

            }
        }

        private void llblForgotPass_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            frmForgotPass ForgotPass = new frmForgotPass();
            ForgotPass.ShowDialog();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            AcceptButton = btnSignin;
        }
    }
}
