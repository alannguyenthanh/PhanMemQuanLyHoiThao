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
    public partial class frmQuanLyKetQuaThiDau : Form
    {
        QuanLyHoiThaoEntities2 context;
        public frmQuanLyKetQuaThiDau()
        {
            InitializeComponent();
        }
        

        private void selectAll()
        {
            context = new QuanLyHoiThaoEntities2();
            var query = from c in context.KET_QUA_CA_NHAN
                        select new
                        {
                            c.MA_MON,
                            c.MSSV,
                            c.GIAI,
                            c.HUY_CHUONG
                        };
            var canbo = query.ToList();
            dtgvKetQuaThiDau.DataSource = canbo;
        }

        private void frmQuanLyKetQuaThiDau_Load(object sender, EventArgs e)
        {
            selectAll();
            txtTenSinhVien.Text = "Vo Minh Tuan";
            txtMonThi.Text = "Cau Long";
            cmbGiai.Items.Add("Nhất");
            cmbGiai.Items.Add("Nhì");
            cmbGiai.Items.Add("Ba");
            cmbGiai.Items.Add("Khuyến khích");
            cmbGiai.Items.Add("Không");
            cmbGiai.SelectedIndex = 0;
        }

        string mssv, monthi;
        private void dtgvKetQuaThiDau_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            mssv = dtgvKetQuaThiDau.CurrentRow.Cells[1].Value.ToString();
            txtMSSV.Text = mssv;
            context = new QuanLyHoiThaoEntities2();
            var query = from c in context.SINH_VIEN
                        where c.MSSV == mssv
                        select new
                        {
                            c.TEN_SV
                        };
            //txtTenSinhVien.Text = query.ToList().ToString() ;
        }

        private void btnTimKiem_Click(object sender, EventArgs e)
        {

        }

    }
}
