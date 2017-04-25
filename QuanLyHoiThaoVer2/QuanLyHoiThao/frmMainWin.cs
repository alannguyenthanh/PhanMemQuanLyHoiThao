using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QuanLyHoiThao
{
    public partial class frmMainWin : Form
    {
        TAI_KHOAN tk;
        public frmMainWin()
        {
            InitializeComponent();
        }

        public frmMainWin(TAI_KHOAN taikhoan)
        {
            InitializeComponent();
            tk = taikhoan;
        }

        private void btnDangKy_Click(object sender, EventArgs e)
        {
            frmQuanLyDangKy formDangKy = new frmQuanLyDangKy();
            formDangKy.ShowDialog();
        }

        private void btnLichThiDau_Click(object sender, EventArgs e)
        {
            frmQuanLyLichDau formLichDau = new frmQuanLyLichDau();
            formLichDau.ShowDialog();
        }

        private void btnKetQua_Click(object sender, EventArgs e)
        {
            frmQuanLyKetQuaThiDau formKetQuaDangKy = new frmQuanLyKetQuaThiDau();
            formKetQuaDangKy.ShowDialog();
        }

        private void btnThuChi_Click(object sender, EventArgs e)
        {
            frmQuanLyThuChi formThuChi = new frmQuanLyThuChi();
            formThuChi.ShowDialog();
        }

        private void btnCanBo_Click(object sender, EventArgs e)
        {
            frmQuanLyCanBo formCanBo = new frmQuanLyCanBo();
            formCanBo.ShowDialog();
        }

        private void llblDoiMatKhau_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            frmDoiMatKhau formDoiMatKhau = new frmDoiMatKhau(tk);
            formDoiMatKhau.ShowDialog();
        }

        private void frmMainWin_FormClosed(object sender, FormClosedEventArgs e)
        {
            this.Hide();
            Form1 frmDangNhap = new Form1();
            frmDangNhap.ShowDialog();
            this.Close();
        }
    }
}
