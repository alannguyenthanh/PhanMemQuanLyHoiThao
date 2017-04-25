using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Infrastructure;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace QuanLyHoiThao
{
    public partial class frmQuanLyCanBo : Form
    {
        QuanLyHoiThaoEntities2 context;
        public frmQuanLyCanBo()
        {
            InitializeComponent();
        }

        private void selectAll()
        {
            context = new QuanLyHoiThaoEntities2();
            var query = from c in context.CAN_BO
                        select new
                        {
                            c.MA_CAN_BO,
                            c.TEN_CAN_BO,
                            c.CHUC_VU
                        };
            var canbo = query.ToList();
            dtgvListCanBo.DataSource = canbo;
        }

        private void frmQuanLyCanBo_Load(object sender, EventArgs e)
        {
            selectAll();
        }

        private void dtgvListCanBo_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            txtMaCanBo.Text = dtgvListCanBo.CurrentRow.Cells[0].Value.ToString();
            txtTenCanBo.Text = dtgvListCanBo.CurrentRow.Cells[1].Value.ToString();
            txtChucVu.Text = dtgvListCanBo.CurrentRow.Cells[2].Value.ToString();
            txtMaCanBo.Enabled = false;
        }

        private void btnTimKiem_Click(object sender, EventArgs e)
        {
            context = new QuanLyHoiThaoEntities2();
            var query = from c in context.CAN_BO
                        where (c.MA_CAN_BO.Contains(txtTimKiem.Text) || c.TEN_CAN_BO.Contains(txtTimKiem.Text))
                        select new
                        {
                            c.MA_CAN_BO,
                            c.TEN_CAN_BO,
                            c.CHUC_VU
                        };
            var canbo = query.ToList();
            dtgvListCanBo.DataSource = canbo;
        }

        private void btnXacNhan_Click(object sender, EventArgs e)
        {
            if (txtTenCanBo.Text.Trim() == "")
            {
                MessageBox.Show("Bạn chưa nhập tên cán bộ.");
            }
            else if (txtChucVu.Text.Trim() == "")
            {
                MessageBox.Show("Bạn chưa nhập chức vụ.");
            }
            else
            {
                if (MessageBox.Show("Bạn có chắc chắn muốn thay đổi thông tin cán bộ " + txtMaCanBo.Text.Trim() + " ?", "Thông báo", MessageBoxButtons.YesNo) == System.Windows.Forms.DialogResult.Yes)
                {
                    using (var db = new QuanLyHoiThaoEntities2())
                    {
                        var result = db.CAN_BO.SingleOrDefault(x => x.MA_CAN_BO == txtMaCanBo.Text.Trim());
                        if (result != null)
                        {
                            result.TEN_CAN_BO = txtTenCanBo.Text;
                            result.CHUC_VU = txtChucVu.Text;
                            db.SaveChanges();
                            selectAll();
                        }
                    }
                }
            }
        }

        private void btnThem_Click(object sender, EventArgs e)
        {
            if (txtMaCanBo.Text == "")
                MessageBox.Show("Bạn chưa nhập mã cán bộ.");
            else if (txtTenCanBo.Text == "")
                MessageBox.Show("Bạn chưa nhập tên cán bộ.");
            else if (txtChucVu.Text == "")
                MessageBox.Show("Bạn chưa nhập chức vụ.");
            else
            {
                context = new QuanLyHoiThaoEntities2();
                try
                {
                    var canbo = new CAN_BO
                    {
                        MA_CAN_BO = txtMaCanBo.Text,
                        TEN_CAN_BO = txtTenCanBo.Text,
                        CHUC_VU = txtChucVu.Text
                    };
                    context.CAN_BO.Add(canbo);
                    context.SaveChanges();
                    selectAll();
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Lỗi: " + ex.Message, "Thông báo");
                }
            }
        }

        private void btnXoa_Click(object sender, EventArgs e)
        {
            txtMaCanBo.Text = txtTenCanBo.Text = txtChucVu.Text = "";
            txtMaCanBo.Enabled = true;
        }

        private void btnXoa_Click_1(object sender, EventArgs e)
        {
            if (MessageBox.Show("Bạn có chắc chắn muốn xóa cán bộ " + txtTenCanBo.Text + "?", "Thông báo", MessageBoxButtons.YesNo,  MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
            {
                try
                {
                    var toDelete = new CAN_BO { MA_CAN_BO = txtMaCanBo.Text.Trim() };
                    context.Entry(toDelete).State = EntityState.Deleted;
                    context.SaveChanges();
                    selectAll();
                }
                catch (DbUpdateException ex)
                {
                    MessageBox.Show(ex.Message);
                }
            }
        }
    }
}
