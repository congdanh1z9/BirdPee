namespace BirdTradingPlatform_Group3_SE1737
{
    partial class frmAddProduct
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
            txtDescription = new System.Windows.Forms.TextBox();
            txtCateId = new System.Windows.Forms.TextBox();
            txtPrice = new System.Windows.Forms.TextBox();
            txtAQty = new System.Windows.Forms.TextBox();
            txtPname = new System.Windows.Forms.TextBox();
            label8 = new System.Windows.Forms.Label();
            label7 = new System.Windows.Forms.Label();
            label6 = new System.Windows.Forms.Label();
            label5 = new System.Windows.Forms.Label();
            label3 = new System.Windows.Forms.Label();
            label2 = new System.Windows.Forms.Label();
            label1 = new System.Windows.Forms.Label();
            btnSave = new System.Windows.Forms.Button();
            btnClose = new System.Windows.Forms.Button();
            SuspendLayout();
            // 
            // txtDescription
            // 
            txtDescription.Location = new System.Drawing.Point(169, 397);
            txtDescription.Multiline = true;
            txtDescription.Name = "txtDescription";
            txtDescription.Size = new System.Drawing.Size(488, 85);
            txtDescription.TabIndex = 39;
            // 
            // txtCateId
            // 
            txtCateId.Location = new System.Drawing.Point(169, 329);
            txtCateId.Name = "txtCateId";
            txtCateId.Size = new System.Drawing.Size(488, 27);
            txtCateId.TabIndex = 37;
            // 
            // txtPrice
            // 
            txtPrice.Location = new System.Drawing.Point(169, 258);
            txtPrice.Name = "txtPrice";
            txtPrice.Size = new System.Drawing.Size(488, 27);
            txtPrice.TabIndex = 36;
            // 
            // txtAQty
            // 
            txtAQty.Location = new System.Drawing.Point(169, 178);
            txtAQty.Name = "txtAQty";
            txtAQty.Size = new System.Drawing.Size(488, 27);
            txtAQty.TabIndex = 34;
            // 
            // txtPname
            // 
            txtPname.Location = new System.Drawing.Point(169, 105);
            txtPname.Multiline = true;
            txtPname.Name = "txtPname";
            txtPname.Size = new System.Drawing.Size(488, 27);
            txtPname.TabIndex = 33;
            // 
            // label8
            // 
            label8.AutoSize = true;
            label8.Location = new System.Drawing.Point(25, 258);
            label8.Name = "label8";
            label8.Size = new System.Drawing.Size(41, 20);
            label8.TabIndex = 32;
            label8.Text = "Price";
            // 
            // label7
            // 
            label7.AutoSize = true;
            label7.Location = new System.Drawing.Point(25, 397);
            label7.Name = "label7";
            label7.Size = new System.Drawing.Size(0, 20);
            label7.TabIndex = 31;
            // 
            // label6
            // 
            label6.AutoSize = true;
            label6.Location = new System.Drawing.Point(25, 336);
            label6.Name = "label6";
            label6.Size = new System.Drawing.Size(82, 20);
            label6.TabIndex = 30;
            label6.Text = "CategoryId";
            // 
            // label5
            // 
            label5.AutoSize = true;
            label5.Location = new System.Drawing.Point(22, 400);
            label5.Name = "label5";
            label5.Size = new System.Drawing.Size(85, 20);
            label5.TabIndex = 29;
            label5.Text = "Description";
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.Location = new System.Drawing.Point(25, 178);
            label3.Name = "label3";
            label3.Size = new System.Drawing.Size(131, 20);
            label3.TabIndex = 27;
            label3.Text = "Available Quantity";
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Location = new System.Drawing.Point(25, 116);
            label2.Name = "label2";
            label2.Size = new System.Drawing.Size(100, 20);
            label2.TabIndex = 26;
            label2.Text = "ProductName";
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.BackColor = System.Drawing.SystemColors.ActiveCaption;
            label1.ForeColor = System.Drawing.SystemColors.ControlDarkDark;
            label1.Location = new System.Drawing.Point(308, 42);
            label1.Name = "label1";
            label1.Size = new System.Drawing.Size(126, 20);
            label1.TabIndex = 25;
            label1.Text = "Add New Product";
            // 
            // btnSave
            // 
            btnSave.Location = new System.Drawing.Point(169, 521);
            btnSave.Name = "btnSave";
            btnSave.Size = new System.Drawing.Size(94, 29);
            btnSave.TabIndex = 40;
            btnSave.Text = "Save";
            btnSave.UseVisualStyleBackColor = true;
            btnSave.Click += btnSave_Click;
            // 
            // btnClose
            // 
            btnClose.Location = new System.Drawing.Point(563, 521);
            btnClose.Name = "btnClose";
            btnClose.Size = new System.Drawing.Size(94, 29);
            btnClose.TabIndex = 41;
            btnClose.Text = "Close";
            btnClose.UseVisualStyleBackColor = true;
            btnClose.Click += btnClose_Click;
            // 
            // frmAddProduct
            // 
            AutoScaleDimensions = new System.Drawing.SizeF(8F, 20F);
            AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            ClientSize = new System.Drawing.Size(693, 591);
            Controls.Add(btnClose);
            Controls.Add(btnSave);
            Controls.Add(txtDescription);
            Controls.Add(txtCateId);
            Controls.Add(txtPrice);
            Controls.Add(txtAQty);
            Controls.Add(txtPname);
            Controls.Add(label8);
            Controls.Add(label7);
            Controls.Add(label6);
            Controls.Add(label5);
            Controls.Add(label3);
            Controls.Add(label2);
            Controls.Add(label1);
            Name = "frmAddProduct";
            StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            Text = "frmAddProduct";
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private System.Windows.Forms.TextBox txtDescription;
        private System.Windows.Forms.TextBox txtCateId;
        private System.Windows.Forms.TextBox txtPrice;
        private System.Windows.Forms.TextBox txtAQty;
        private System.Windows.Forms.TextBox txtPname;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button btnSave;
        private System.Windows.Forms.Button btnClose;
    }
}