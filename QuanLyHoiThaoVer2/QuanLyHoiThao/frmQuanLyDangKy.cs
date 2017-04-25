using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using dbConnect;

namespace QuanLyHoiThao
{
    public partial class frmQuanLyDangKy : Form
    {
        QuanLyHoiThaoEntities2 context;
        DataTable tb;
        public frmQuanLyDangKy()
        {
            InitializeComponent();
        }

        public void SelectAll()
        {
            Connection db = new Connection();
            string query = @"SELECT DANG_KY.MA_MON, MON_THI.TEN_MON, SINH_VIEN.MSSV, SINH_VIEN.TEN_SV, SINH_VIEN.MA_LOP
                            FROM ((DANG_KY
                            INNER JOIN SINH_VIEN ON DANG_KY.MSSV = SINH_VIEN.MSSV)
                            INNER JOIN MON_THI ON DANG_KY.MA_MON = MON_THI.MA_MON)";

            tb = db.executeSelectQuery(query);

            dtgvListDangKy.DataSource = tb;
        }

        private void frmQuanLyDangKy_Load(object sender, EventArgs e)
        {
            SelectAll();
        }

        private void dtgvListDangKy_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            txtTenSinhVien.Text = dtgvListDangKy.CurrentRow.Cells[3].Value.ToString();
            txtTenLop.Text = dtgvListDangKy.CurrentRow.Cells[4].Value.ToString();
            var ids = tb.AsEnumerable().Where(r => r.Field<string>(3).Trim() == txtTenSinhVien.Text).Select(r => r.Field<string>(1)).ToList();

            cmbListMon.DataSource = ids;
        }

        string temp;
        private void btnChinhSua_Click(object sender, EventArgs e)
        {
            if (txtTenSinhVien.Text.Trim() == "")
            {
                MessageBox.Show("Bạn chưa nhập tên sinh viên.");
            }
            else if (txtTenLop.Text.Trim() == "")
            {
                MessageBox.Show("Bạn chưa nhập tên lớp.");
            }
            else
            {
                temp = dtgvListDangKy.CurrentRow.Cells[2].Value.ToString().Trim();

                if (MessageBox.Show("Bạn có chắc chắn muốn thay đổi thông tin sinh viên " + txtTenSinhVien.Text.Trim() + " ?", "Thông báo " + temp, MessageBoxButtons.YesNo) == System.Windows.Forms.DialogResult.Yes)
                {
                    //using (var db = new QuanLyHoiThaoEntities1())
                    //{
                    //    var result = db.SINH_VIEN.SingleOrDefault(x => x.MSSV == temp);
                    //    if (result != null)
                    //    {
                    //        result.TEN_SV = txtTenSinhVien.Text;

                    //        db.SaveChanges();
                    //        SelectAll();
                    //    }
                    //}
                }
            }
        }

        private void btnTimKiem_Click(object sender, EventArgs e)
        {
            Connection db = new Connection();
            string query = @"SELECT DANG_KY.MA_MON, MON_THI.TEN_MON, SINH_VIEN.MSSV, SINH_VIEN.TEN_SV, SINH_VIEN.MA_LOP
                            FROM ((DANG_KY
                            INNER JOIN SINH_VIEN ON DANG_KY.MSSV = SINH_VIEN.MSSV)
                            INNER JOIN MON_THI ON DANG_KY.MA_MON = MON_THI.MA_MON)
                            WHERE DANG_KY.MA_MON LIKE '"+cmbListMon.SelectedValue+"'";

            tb = db.executeSelectQuery(query);

            dtgvListDangKy.DataSource = tb;
        }
    }
}
