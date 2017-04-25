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
    public partial class frmQuanLyThuChi : Form
    {
        QuanLyHoiThaoEntities2 context;

        private void selectAll()
        {
            context = new QuanLyHoiThaoEntities2();
            var query = from c in context.THU_CHI
                        select c;
            var canbo = query.ToList();
            dtgvDanhSachThuChi.DataSource = canbo;
        }

        public frmQuanLyThuChi()
        {
            InitializeComponent();
        }

        private void frmQuanLyThuChi_Load(object sender, EventArgs e)
        {
            context = new QuanLyHoiThaoEntities2();
            var query = from c in context.THU_CHI
                        select c;
            var canbo = query.ToList();
            dtgvDanhSachThuChi.DataSource = canbo;
        }

        private void dtgvDanhSachThuChi_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            txtNoiDung.Text = dtgvDanhSachThuChi.CurrentRow.Cells[0].Value.ToString();
            txtSoLuong.Text = dtgvDanhSachThuChi.CurrentRow.Cells[1].Value.ToString();
            bool thu = bool.Parse(dtgvDanhSachThuChi.CurrentRow.Cells[2].Value.ToString());
            if (thu == true)
            {
                rdbThu.Checked = true;
            }
            else
            {
                rdbChi.Checked = true;
            }
        }

        int tongTien;
        private void btnThem_Click(object sender, EventArgs e)
        {
            if (txtNoiDung.Text == "")
                MessageBox.Show("Bạn chưa nhập nội dung.");
            else if (txtSoLuong.Text == "")
                MessageBox.Show("Bạn chưa nhập số lượng.");
            else if (txtDonGia.Text == "")
                MessageBox.Show("Bạn chưa nhập đơn giá.");
            else if (rdbChi.Checked == false && rdbThu.Checked == false)
            {
                MessageBox.Show("Bạn chưa chọn thu hoặc chi.");
            }
            else
            {
                tongTien = int.Parse(txtSoLuong.Text) * int.Parse(txtDonGia.Text);
                bool thu;
                if(rdbThu.Checked == true){
                    thu = true;
                }
                else thu = false;
                context = new QuanLyHoiThaoEntities2();
                try
                {
                    var thuchi = new THU_CHI
                    {
                        NOI_DUNG = txtNoiDung.Text,
                        SO_TIEN = "" + tongTien,
                        THU_HOAC_CHI = thu
                    };
                    context.THU_CHI.Add(thuchi);
                    context.SaveChanges();
                    selectAll();
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Lỗi: " + ex.Message, "Thông báo");
                }
            }
        }
    }
}
