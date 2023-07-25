namespace BirdTradingPlatform_Group3_SE1737
{
    partial class FrmAdmin
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
            dgvShop = new System.Windows.Forms.DataGridView();
            dgvCustomer = new System.Windows.Forms.DataGridView();
            txtCustomer = new System.Windows.Forms.TextBox();
            txtShop = new System.Windows.Forms.TextBox();
            btnFindCustomer = new System.Windows.Forms.Button();
            btnFindShop = new System.Windows.Forms.Button();
            label1 = new System.Windows.Forms.Label();
            label2 = new System.Windows.Forms.Label();
            btnLogOut = new System.Windows.Forms.Button();
            txtDescription = new System.Windows.Forms.TextBox();
            label12 = new System.Windows.Forms.Label();
            txtShopName = new System.Windows.Forms.TextBox();
            label10 = new System.Windows.Forms.Label();
            label6 = new System.Windows.Forms.Label();
            label5 = new System.Windows.Forms.Label();
            label3 = new System.Windows.Forms.Label();
            txtShopID = new System.Windows.Forms.TextBox();
            txtcsdescription = new System.Windows.Forms.TextBox();
            txtcsid = new System.Windows.Forms.TextBox();
            txtcsname = new System.Windows.Forms.TextBox();
            yyy = new System.Windows.Forms.Label();
            txt = new System.Windows.Forms.Label();
            yyyyy = new System.Windows.Forms.Label();
            btnBANSHOP = new System.Windows.Forms.Button();
            btnUNBANSHOP = new System.Windows.Forms.Button();
            btnUNBANCS = new System.Windows.Forms.Button();
            btnBANCS = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)dgvShop).BeginInit();
            ((System.ComponentModel.ISupportInitialize)dgvCustomer).BeginInit();
            SuspendLayout();
            // 
            // dgvShop
            // 
            dgvShop.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dgvShop.Location = new System.Drawing.Point(47, 41);
            dgvShop.Name = "dgvShop";
            dgvShop.RowHeadersWidth = 51;
            dgvShop.RowTemplate.Height = 29;
            dgvShop.Size = new System.Drawing.Size(585, 260);
            dgvShop.TabIndex = 0;
            dgvShop.CellClick += dgvShop_CellClick;
            // 
            // dgvCustomer
            // 
            dgvCustomer.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dgvCustomer.Location = new System.Drawing.Point(47, 339);
            dgvCustomer.Name = "dgvCustomer";
            dgvCustomer.RowHeadersWidth = 51;
            dgvCustomer.RowTemplate.Height = 29;
            dgvCustomer.Size = new System.Drawing.Size(585, 260);
            dgvCustomer.TabIndex = 1;
            dgvCustomer.CellClick += dgvCustomer_CellClick;
            // 
            // txtCustomer
            // 
            txtCustomer.Location = new System.Drawing.Point(236, 307);
            txtCustomer.Name = "txtCustomer";
            txtCustomer.Size = new System.Drawing.Size(267, 27);
            txtCustomer.TabIndex = 2;
            // 
            // txtShop
            // 
            txtShop.Location = new System.Drawing.Point(236, 8);
            txtShop.Name = "txtShop";
            txtShop.Size = new System.Drawing.Size(267, 27);
            txtShop.TabIndex = 3;
            txtShop.TextChanged += txtShop_TextChanged;
            // 
            // btnFindCustomer
            // 
            btnFindCustomer.Font = new System.Drawing.Font("Segoe UI", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            btnFindCustomer.Location = new System.Drawing.Point(538, 306);
            btnFindCustomer.Name = "btnFindCustomer";
            btnFindCustomer.Size = new System.Drawing.Size(94, 29);
            btnFindCustomer.TabIndex = 4;
            btnFindCustomer.Text = "Find";
            btnFindCustomer.UseVisualStyleBackColor = true;
            btnFindCustomer.Click += btnFindCustomer_Click;
            // 
            // btnFindShop
            // 
            btnFindShop.Font = new System.Drawing.Font("Segoe UI", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            btnFindShop.Location = new System.Drawing.Point(538, 6);
            btnFindShop.Name = "btnFindShop";
            btnFindShop.Size = new System.Drawing.Size(94, 29);
            btnFindShop.TabIndex = 5;
            btnFindShop.Text = "Find";
            btnFindShop.UseVisualStyleBackColor = true;
            btnFindShop.Click += btnFindShop_Click;
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Font = new System.Drawing.Font("Segoe UI", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            label1.Location = new System.Drawing.Point(47, 10);
            label1.Name = "label1";
            label1.Size = new System.Drawing.Size(106, 20);
            label1.TabIndex = 6;
            label1.Text = "Shop Account";
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Font = new System.Drawing.Font("Segoe UI", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            label2.Location = new System.Drawing.Point(47, 310);
            label2.Name = "label2";
            label2.Size = new System.Drawing.Size(139, 20);
            label2.TabIndex = 7;
            label2.Text = "Customer Account";
            // 
            // btnLogOut
            // 
            btnLogOut.Font = new System.Drawing.Font("Segoe UI", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            btnLogOut.Location = new System.Drawing.Point(958, 8);
            btnLogOut.Name = "btnLogOut";
            btnLogOut.Size = new System.Drawing.Size(94, 29);
            btnLogOut.TabIndex = 52;
            btnLogOut.Text = "Log Out";
            btnLogOut.UseVisualStyleBackColor = true;
            btnLogOut.Click += btnLogOut_Click;
            // 
            // txtDescription
            // 
            txtDescription.Location = new System.Drawing.Point(754, 153);
            txtDescription.Multiline = true;
            txtDescription.Name = "txtDescription";
            txtDescription.ReadOnly = true;
            txtDescription.Size = new System.Drawing.Size(303, 112);
            txtDescription.TabIndex = 51;
            // 
            // label12
            // 
            label12.AutoSize = true;
            label12.Font = new System.Drawing.Font("Segoe UI", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            label12.Location = new System.Drawing.Point(638, 321);
            label12.Name = "label12";
            label12.Size = new System.Drawing.Size(0, 20);
            label12.TabIndex = 44;
            // 
            // txtShopName
            // 
            txtShopName.Location = new System.Drawing.Point(754, 55);
            txtShopName.Name = "txtShopName";
            txtShopName.ReadOnly = true;
            txtShopName.Size = new System.Drawing.Size(303, 27);
            txtShopName.TabIndex = 41;
            // 
            // label10
            // 
            label10.AutoSize = true;
            label10.Font = new System.Drawing.Font("Segoe UI", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            label10.Location = new System.Drawing.Point(638, 112);
            label10.Name = "label10";
            label10.Size = new System.Drawing.Size(25, 20);
            label10.TabIndex = 39;
            label10.Text = "ID";
            // 
            // label6
            // 
            label6.AutoSize = true;
            label6.Font = new System.Drawing.Font("Segoe UI", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            label6.Location = new System.Drawing.Point(638, 156);
            label6.Name = "label6";
            label6.Size = new System.Drawing.Size(89, 20);
            label6.TabIndex = 33;
            label6.Text = "Description";
            // 
            // label5
            // 
            label5.AutoSize = true;
            label5.Font = new System.Drawing.Font("Segoe UI", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            label5.Location = new System.Drawing.Point(638, 77);
            label5.Name = "label5";
            label5.Size = new System.Drawing.Size(0, 20);
            label5.TabIndex = 32;
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.Font = new System.Drawing.Font("Segoe UI", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            label3.Location = new System.Drawing.Point(638, 62);
            label3.Name = "label3";
            label3.Size = new System.Drawing.Size(86, 20);
            label3.TabIndex = 30;
            label3.Text = "ShopName";
            // 
            // txtShopID
            // 
            txtShopID.Location = new System.Drawing.Point(754, 105);
            txtShopID.Name = "txtShopID";
            txtShopID.ReadOnly = true;
            txtShopID.Size = new System.Drawing.Size(303, 27);
            txtShopID.TabIndex = 48;
            // 
            // txtcsdescription
            // 
            txtcsdescription.Location = new System.Drawing.Point(754, 450);
            txtcsdescription.Multiline = true;
            txtcsdescription.Name = "txtcsdescription";
            txtcsdescription.ReadOnly = true;
            txtcsdescription.Size = new System.Drawing.Size(303, 117);
            txtcsdescription.TabIndex = 58;
            // 
            // txtcsid
            // 
            txtcsid.Location = new System.Drawing.Point(754, 402);
            txtcsid.Name = "txtcsid";
            txtcsid.ReadOnly = true;
            txtcsid.Size = new System.Drawing.Size(303, 27);
            txtcsid.TabIndex = 57;
            // 
            // txtcsname
            // 
            txtcsname.Location = new System.Drawing.Point(754, 352);
            txtcsname.Name = "txtcsname";
            txtcsname.ReadOnly = true;
            txtcsname.Size = new System.Drawing.Size(303, 27);
            txtcsname.TabIndex = 56;
            // 
            // yyy
            // 
            yyy.AutoSize = true;
            yyy.Font = new System.Drawing.Font("Segoe UI", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            yyy.Location = new System.Drawing.Point(638, 409);
            yyy.Name = "yyy";
            yyy.Size = new System.Drawing.Size(25, 20);
            yyy.TabIndex = 55;
            yyy.Text = "ID";
            // 
            // txt
            // 
            txt.AutoSize = true;
            txt.Font = new System.Drawing.Font("Segoe UI", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            txt.Location = new System.Drawing.Point(638, 453);
            txt.Name = "txt";
            txt.Size = new System.Drawing.Size(53, 20);
            txt.TabIndex = 54;
            txt.Text = "Phone";
            // 
            // yyyyy
            // 
            yyyyy.AutoSize = true;
            yyyyy.Font = new System.Drawing.Font("Segoe UI", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            yyyyy.Location = new System.Drawing.Point(638, 359);
            yyyyy.Name = "yyyyy";
            yyyyy.Size = new System.Drawing.Size(119, 20);
            yyyyy.TabIndex = 53;
            yyyyy.Text = "CustomerName";
            // 
            // btnBANSHOP
            // 
            btnBANSHOP.Font = new System.Drawing.Font("Segoe UI", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            btnBANSHOP.Location = new System.Drawing.Point(754, 285);
            btnBANSHOP.Name = "btnBANSHOP";
            btnBANSHOP.Size = new System.Drawing.Size(94, 29);
            btnBANSHOP.TabIndex = 59;
            btnBANSHOP.Text = "BAN";
            btnBANSHOP.UseVisualStyleBackColor = true;
            btnBANSHOP.Click += btnBANSHOP_Click;
            // 
            // btnUNBANSHOP
            // 
            btnUNBANSHOP.Font = new System.Drawing.Font("Segoe UI", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            btnUNBANSHOP.Location = new System.Drawing.Point(958, 285);
            btnUNBANSHOP.Name = "btnUNBANSHOP";
            btnUNBANSHOP.Size = new System.Drawing.Size(94, 29);
            btnUNBANSHOP.TabIndex = 60;
            btnUNBANSHOP.Text = "UNBAN";
            btnUNBANSHOP.UseVisualStyleBackColor = true;
            btnUNBANSHOP.Click += btnUNBANSHOP_Click;
            // 
            // btnUNBANCS
            // 
            btnUNBANCS.Font = new System.Drawing.Font("Segoe UI", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            btnUNBANCS.Location = new System.Drawing.Point(963, 583);
            btnUNBANCS.Name = "btnUNBANCS";
            btnUNBANCS.Size = new System.Drawing.Size(94, 29);
            btnUNBANCS.TabIndex = 62;
            btnUNBANCS.Text = "UNBAN";
            btnUNBANCS.UseVisualStyleBackColor = true;
            btnUNBANCS.Click += btnUNBANCS_Click;
            // 
            // btnBANCS
            // 
            btnBANCS.Font = new System.Drawing.Font("Segoe UI", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            btnBANCS.Location = new System.Drawing.Point(759, 583);
            btnBANCS.Name = "btnBANCS";
            btnBANCS.Size = new System.Drawing.Size(94, 29);
            btnBANCS.TabIndex = 61;
            btnBANCS.Text = "BAN";
            btnBANCS.UseVisualStyleBackColor = true;
            btnBANCS.Click += btnBANCS_Click;
            // 
            // FrmAdmin
            // 
            AutoScaleDimensions = new System.Drawing.SizeF(8F, 20F);
            AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            ClientSize = new System.Drawing.Size(1064, 624);
            Controls.Add(btnUNBANCS);
            Controls.Add(btnBANCS);
            Controls.Add(btnUNBANSHOP);
            Controls.Add(btnBANSHOP);
            Controls.Add(txtcsdescription);
            Controls.Add(txtcsid);
            Controls.Add(txtcsname);
            Controls.Add(yyy);
            Controls.Add(txt);
            Controls.Add(yyyyy);
            Controls.Add(btnLogOut);
            Controls.Add(txtDescription);
            Controls.Add(txtShopID);
            Controls.Add(label12);
            Controls.Add(txtShopName);
            Controls.Add(label10);
            Controls.Add(label6);
            Controls.Add(label5);
            Controls.Add(label3);
            Controls.Add(label2);
            Controls.Add(label1);
            Controls.Add(btnFindShop);
            Controls.Add(btnFindCustomer);
            Controls.Add(txtShop);
            Controls.Add(txtCustomer);
            Controls.Add(dgvCustomer);
            Controls.Add(dgvShop);
            Name = "FrmAdmin";
            Text = "FrmAdmin";
            Load += FrmAdmin_Load;
            ((System.ComponentModel.ISupportInitialize)dgvShop).EndInit();
            ((System.ComponentModel.ISupportInitialize)dgvCustomer).EndInit();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private System.Windows.Forms.DataGridView dgvShop;
        private System.Windows.Forms.DataGridView dgvCustomer;
        private System.Windows.Forms.TextBox txtCustomer;
        private System.Windows.Forms.TextBox txtShop;
        private System.Windows.Forms.Button btnFindCustomer;
        private System.Windows.Forms.Button btnFindShop;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Button btnLogOut;
        private System.Windows.Forms.TextBox txtDescription;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.TextBox txtShopName;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txtShopID;
        private System.Windows.Forms.TextBox txtcsdescription;
        private System.Windows.Forms.TextBox txtcsid;
        private System.Windows.Forms.TextBox txtcsname;
        private System.Windows.Forms.Label yyy;
        private System.Windows.Forms.Label txt;
        private System.Windows.Forms.Label yyyyy;
        private System.Windows.Forms.Button btnBANSHOP;
        private System.Windows.Forms.Button btnUNBANSHOP;
        private System.Windows.Forms.Button btnUNBANCS;
        private System.Windows.Forms.Button btnBANCS;
    }
}