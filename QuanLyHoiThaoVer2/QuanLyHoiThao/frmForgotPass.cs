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
    public partial class frmForgotPass : Form
    {
        public frmForgotPass()
        {
            InitializeComponent();
        }

        private void btnAccept_Click(object sender, EventArgs e)
        {
            //Here TestEntities is the class which is given from "Save entity connection setting in web.config"
            QuanLyHoiThaoEntities2 context = new QuanLyHoiThaoEntities2();

            var query = from data in context.TAI_KHOAN
                        orderby data.TEN_DANG_NHAP
                        select data;

            foreach (TAI_KHOAN details in query)
            {
                if (details.TEN_DANG_NHAP.Trim() == txtID.Text)
                {
                    //Assign the new values to name whose id is 1
                    Random rand = new Random();
                    int randNum = rand.Next(0, 1000);
                    //MessageBox.Show("" + randNum);
                    string hashSend, hashSave;
                    using (MD5 md5Hash = MD5.Create())
                    {
                        string hash = MD5Class.GetMd5Hash(md5Hash, randNum.ToString());
                        hashSend = hash.Substring(0, 10);
                        //MessageBox.Show("Hash = " + hash + "\nHashSend = " + hashSend);
                        hashSave = MD5Class.GetMd5Hash(md5Hash, hashSend);
                        details.MAT_KHAU = hashSave;
                        txtNewPass.Text = hashSend;
                    }
                }
            }

            //Save the changes back to database.
            context.SaveChanges();
        }

        private void frmForgotPass_Load(object sender, EventArgs e)
        {
            AcceptButton = btnAccept;
        }
    }
}
