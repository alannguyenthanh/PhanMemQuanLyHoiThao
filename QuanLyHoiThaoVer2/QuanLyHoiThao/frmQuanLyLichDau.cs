using dbConnect;
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
    public partial class frmQuanLyLichDau : Form
    {
        public frmQuanLyLichDau()
        {
            InitializeComponent();
        }

        QuanLyHoiThaoEntities2 context;
        public void SelectAll()
        {
            context = new QuanLyHoiThaoEntities2();
            var query = from c in context.LICH_THI
                        select new { 
                            c.STT,
                            c.MA_MON,
                            c.MSSV,
                            c.NGAY_THI_DAU,
                            c.GIO_THI_DAU
                        };
            var lich = query.ToList();
            dtgvListLich.DataSource = lich;
        }

        string temp;
        int number;
        private void frmQuanLyLichDau_Load(object sender, EventArgs e)
        {
            using (QuanLyHoiThaoEntities2 c = new QuanLyHoiThaoEntities2())
            {
                cmbListMon.DataSource = c.MON_THI.ToList();
                cmbListMon.ValueMember = "MA_MON";
                cmbListMon.DisplayMember = "TEN_MON";
                cmbListMon.Invalidate();
                cmbListMon.SelectedIndex = 0;
            }

            SelectAll();
            number = dtgvListLich.RowCount;
        }

        private void btnThem_Click(object sender, EventArgs e)
        {
            if (cmbListSinhVien1.SelectedValue.ToString() == cmbListSinhVien2.SelectedValue.ToString())
            {
                MessageBox.Show("Sinh viên bị trùng.", "Thông báo");
            }
            else if (cmbListSinhVien1.Items.Count == 0 || cmbListSinhVien2.Items.Count == 0)
            {
                MessageBox.Show("Bị thiếu sinh viên thi đấu", "Thông báo");
            }
            else
            {
                context = new QuanLyHoiThaoEntities2();
                try
                {
                    var lichthi = new LICH_THI
                    {
                        MA_MON = cmbListMon.SelectedValue.ToString(),
                        MSSV = cmbListSinhVien1.SelectedValue.ToString(),
                        STT = ++number,
                        NGAY_THI_DAU = dtpDate.Value.Date,
                        GIO_THI_DAU = dtpTime.Value.ToShortTimeString()
                    };
                    context.LICH_THI.Add(lichthi);

                    lichthi = new LICH_THI
                    {
                        MA_MON = cmbListMon.SelectedValue.ToString(),
                        MSSV = cmbListSinhVien2.SelectedValue.ToString(),
                        STT = ++number,
                        NGAY_THI_DAU = dtpDate.Value.Date,
                        GIO_THI_DAU = dtpTime.Value.ToShortTimeString()
                    };
                    context.LICH_THI.Add(lichthi);
                    context.SaveChanges();
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Lỗi: " + ex.Message, "Thông báo");
                }
            }
        }

        string query;
        private void cmbListMon_SelectedIndexChanged(object sender, EventArgs e)
        {
            temp = cmbListMon.SelectedValue.ToString();
            query = @"SELECT DANG_KY.MSSV, SINH_VIEN.TEN_SV 
                    FROM DANG_KY
                    INNER JOIN SINH_VIEN ON DANG_KY.MSSV = SINH_VIEN.MSSV
                    WHERE DANG_KY.MA_MON = '" + cmbListMon.SelectedValue.ToString() + "'";
            Connection db = new Connection();
            DataTable tb1 = db.executeSelectQuery(query);
            DataTable tb2 = db.executeSelectQuery(query);

            cmbListSinhVien1.DataSource = tb1;
            cmbListSinhVien1.ValueMember = "MSSV";
            cmbListSinhVien1.DisplayMember = "TEN_SV";

            cmbListSinhVien2.DataSource = tb2;
            cmbListSinhVien2.ValueMember = "MSSV";
            cmbListSinhVien2.DisplayMember = "TEN_SV";
        }

        private void btnSua_Click(object sender, EventArgs e)
        {
            MessageBox.Show("" + number);
        }

        private void btnTimKiem_Click(object sender, EventArgs e)
        {
            context = new QuanLyHoiThaoEntities2();
            var query = from c in context.LICH_THI
                        where (c.MA_MON.Contains(txtTimKiem.Text) || c.MSSV.Contains(txtTimKiem.Text))
                        select new
                        {
                            c.STT,
                            c.MA_MON,
                            c.MSSV,
                            c.NGAY_THI_DAU,
                            c.GIO_THI_DAU
                        };
            var lich = query.ToList();
            dtgvListLich.DataSource = lich;
        }
    }
}
