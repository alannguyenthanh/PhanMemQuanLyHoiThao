namespace QuanLyHoiThao
{
    partial class frmMainWin
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.btnDangKy = new System.Windows.Forms.Button();
            this.label3 = new System.Windows.Forms.Label();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.llblDoiMatKhau = new System.Windows.Forms.LinkLabel();
            this.btnCanBo = new System.Windows.Forms.Button();
            this.btnThuChi = new System.Windows.Forms.Button();
            this.btnKetQua = new System.Windows.Forms.Button();
            this.btnLichThiDau = new System.Windows.Forms.Button();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // btnDangKy
            // 
            this.btnDangKy.Location = new System.Drawing.Point(20, 29);
            this.btnDangKy.Name = "btnDangKy";
            this.btnDangKy.Size = new System.Drawing.Size(179, 68);
            this.btnDangKy.TabIndex = 0;
            this.btnDangKy.Text = "QUẢN LÝ ĐĂNG KÝ";
            this.btnDangKy.UseVisualStyleBackColor = true;
            this.btnDangKy.Click += new System.EventHandler(this.btnDangKy_Click);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 20.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(89, 9);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(424, 31);
            this.label3.TabIndex = 8;
            this.label3.Text = "PHẦN MỀM QUẢN LÝ HỘI THAO";
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.llblDoiMatKhau);
            this.groupBox1.Controls.Add(this.btnCanBo);
            this.groupBox1.Controls.Add(this.btnThuChi);
            this.groupBox1.Controls.Add(this.btnKetQua);
            this.groupBox1.Controls.Add(this.btnLichThiDau);
            this.groupBox1.Controls.Add(this.btnDangKy);
            this.groupBox1.Location = new System.Drawing.Point(-8, 43);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(615, 207);
            this.groupBox1.TabIndex = 9;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Các Module phần mềm";
            // 
            // llblDoiMatKhau
            // 
            this.llblDoiMatKhau.AutoSize = true;
            this.llblDoiMatKhau.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.llblDoiMatKhau.Location = new System.Drawing.Point(511, 175);
            this.llblDoiMatKhau.Name = "llblDoiMatKhau";
            this.llblDoiMatKhau.Size = new System.Drawing.Size(85, 16);
            this.llblDoiMatKhau.TabIndex = 5;
            this.llblDoiMatKhau.TabStop = true;
            this.llblDoiMatKhau.Text = "Đổi mật khẩu";
            this.llblDoiMatKhau.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.llblDoiMatKhau_LinkClicked);
            // 
            // btnCanBo
            // 
            this.btnCanBo.Location = new System.Drawing.Point(220, 123);
            this.btnCanBo.Name = "btnCanBo";
            this.btnCanBo.Size = new System.Drawing.Size(179, 68);
            this.btnCanBo.TabIndex = 4;
            this.btnCanBo.Text = "QUẢN LÝ CÁN BỘ";
            this.btnCanBo.UseVisualStyleBackColor = true;
            this.btnCanBo.Click += new System.EventHandler(this.btnCanBo_Click);
            // 
            // btnThuChi
            // 
            this.btnThuChi.Location = new System.Drawing.Point(20, 123);
            this.btnThuChi.Name = "btnThuChi";
            this.btnThuChi.Size = new System.Drawing.Size(179, 68);
            this.btnThuChi.TabIndex = 3;
            this.btnThuChi.Text = "QUẢN LÝ THU CHI";
            this.btnThuChi.UseVisualStyleBackColor = true;
            this.btnThuChi.Click += new System.EventHandler(this.btnThuChi_Click);
            // 
            // btnKetQua
            // 
            this.btnKetQua.Location = new System.Drawing.Point(417, 29);
            this.btnKetQua.Name = "btnKetQua";
            this.btnKetQua.Size = new System.Drawing.Size(179, 68);
            this.btnKetQua.TabIndex = 2;
            this.btnKetQua.Text = "QUẢN LÝ KẾT QUẢ THI ĐẤU";
            this.btnKetQua.UseVisualStyleBackColor = true;
            this.btnKetQua.Click += new System.EventHandler(this.btnKetQua_Click);
            // 
            // btnLichThiDau
            // 
            this.btnLichThiDau.Location = new System.Drawing.Point(219, 29);
            this.btnLichThiDau.Name = "btnLichThiDau";
            this.btnLichThiDau.Size = new System.Drawing.Size(179, 68);
            this.btnLichThiDau.TabIndex = 1;
            this.btnLichThiDau.Text = "QUẢN LÝ LỊCH THI ĐẤU";
            this.btnLichThiDau.UseVisualStyleBackColor = true;
            this.btnLichThiDau.Click += new System.EventHandler(this.btnLichThiDau_Click);
            // 
            // frmMainWin
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(600, 247);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.label3);
            this.MaximizeBox = false;
            this.Name = "frmMainWin";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "QUẢN LÝ HỘI THAO";
            this.FormClosed += new System.Windows.Forms.FormClosedEventHandler(this.frmMainWin_FormClosed);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btnDangKy;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Button btnCanBo;
        private System.Windows.Forms.Button btnThuChi;
        private System.Windows.Forms.Button btnKetQua;
        private System.Windows.Forms.Button btnLichThiDau;
        private System.Windows.Forms.LinkLabel llblDoiMatKhau;

    }
}