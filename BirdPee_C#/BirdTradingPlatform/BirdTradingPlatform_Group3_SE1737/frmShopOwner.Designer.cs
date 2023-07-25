namespace BirdTradingPlatform_Group3_SE1737
{
    partial class frmShopOwner
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
            dgvProductSO = new System.Windows.Forms.DataGridView();
            txtDescription = new System.Windows.Forms.TextBox();
            txtShopId = new System.Windows.Forms.TextBox();
            txtCateId = new System.Windows.Forms.TextBox();
            txtPrice = new System.Windows.Forms.TextBox();
            txtSQty = new System.Windows.Forms.TextBox();
            txtAQty = new System.Windows.Forms.TextBox();
            txtPname = new System.Windows.Forms.TextBox();
            label8 = new System.Windows.Forms.Label();
            label7 = new System.Windows.Forms.Label();
            label6 = new System.Windows.Forms.Label();
            label5 = new System.Windows.Forms.Label();
            label4 = new System.Windows.Forms.Label();
            label3 = new System.Windows.Forms.Label();
            label2 = new System.Windows.Forms.Label();
            label1 = new System.Windows.Forms.Label();
            txtPid = new System.Windows.Forms.TextBox();
            btnAdd = new System.Windows.Forms.Button();
            btnUpdate = new System.Windows.Forms.Button();
            btnDelete = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)dgvProductSO).BeginInit();
            SuspendLayout();
            // 
            // dgvProductSO
            // 
            dgvProductSO.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dgvProductSO.Location = new System.Drawing.Point(29, 30);
            dgvProductSO.Name = "dgvProductSO";
            dgvProductSO.RowHeadersWidth = 51;
            dgvProductSO.RowTemplate.Height = 29;
            dgvProductSO.Size = new System.Drawing.Size(770, 198);
            dgvProductSO.TabIndex = 0;
            dgvProductSO.CellClick += dgvProductSO_CellClick;
            // 
            // txtDescription
            // 
            txtDescription.Location = new System.Drawing.Point(181, 650);
            txtDescription.Multiline = true;
            txtDescription.Name = "txtDescription";
            txtDescription.Size = new System.Drawing.Size(618, 85);
            txtDescription.TabIndex = 39;
            // 
            // txtShopId
            // 
            txtShopId.Location = new System.Drawing.Point(181, 598);
            txtShopId.Name = "txtShopId";
            txtShopId.ReadOnly = true;
            txtShopId.Size = new System.Drawing.Size(414, 27);
            txtShopId.TabIndex = 38;
            // 
            // txtCateId
            // 
            txtCateId.Location = new System.Drawing.Point(181, 541);
            txtCateId.Name = "txtCateId";
            txtCateId.Size = new System.Drawing.Size(414, 27);
            txtCateId.TabIndex = 37;
            // 
            // txtPrice
            // 
            txtPrice.Location = new System.Drawing.Point(181, 484);
            txtPrice.Name = "txtPrice";
            txtPrice.Size = new System.Drawing.Size(414, 27);
            txtPrice.TabIndex = 36;
            // 
            // txtSQty
            // 
            txtSQty.Location = new System.Drawing.Point(181, 430);
            txtSQty.Name = "txtSQty";
            txtSQty.ReadOnly = true;
            txtSQty.Size = new System.Drawing.Size(414, 27);
            txtSQty.TabIndex = 35;
            // 
            // txtAQty
            // 
            txtAQty.Location = new System.Drawing.Point(181, 380);
            txtAQty.Name = "txtAQty";
            txtAQty.Size = new System.Drawing.Size(414, 27);
            txtAQty.TabIndex = 34;
            // 
            // txtPname
            // 
            txtPname.Location = new System.Drawing.Point(181, 317);
            txtPname.Name = "txtPname";
            txtPname.Size = new System.Drawing.Size(414, 27);
            txtPname.TabIndex = 33;
            // 
            // label8
            // 
            label8.AutoSize = true;
            label8.Location = new System.Drawing.Point(37, 494);
            label8.Name = "label8";
            label8.Size = new System.Drawing.Size(41, 20);
            label8.TabIndex = 32;
            label8.Text = "Price";
            // 
            // label7
            // 
            label7.AutoSize = true;
            label7.Location = new System.Drawing.Point(37, 609);
            label7.Name = "label7";
            label7.Size = new System.Drawing.Size(56, 20);
            label7.TabIndex = 31;
            label7.Text = "ShopId";
            // 
            // label6
            // 
            label6.AutoSize = true;
            label6.Location = new System.Drawing.Point(37, 552);
            label6.Name = "label6";
            label6.Size = new System.Drawing.Size(82, 20);
            label6.TabIndex = 30;
            label6.Text = "CategoryId";
            // 
            // label5
            // 
            label5.AutoSize = true;
            label5.Location = new System.Drawing.Point(37, 653);
            label5.Name = "label5";
            label5.Size = new System.Drawing.Size(85, 20);
            label5.TabIndex = 29;
            label5.Text = "Description";
            // 
            // label4
            // 
            label4.AutoSize = true;
            label4.Location = new System.Drawing.Point(37, 441);
            label4.Name = "label4";
            label4.Size = new System.Drawing.Size(99, 20);
            label4.TabIndex = 28;
            label4.Text = "Sold Quantity";
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.Location = new System.Drawing.Point(37, 390);
            label3.Name = "label3";
            label3.Size = new System.Drawing.Size(131, 20);
            label3.TabIndex = 27;
            label3.Text = "Available Quantity";
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Location = new System.Drawing.Point(37, 328);
            label2.Name = "label2";
            label2.Size = new System.Drawing.Size(100, 20);
            label2.TabIndex = 26;
            label2.Text = "ProductName";
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Location = new System.Drawing.Point(37, 261);
            label1.Name = "label1";
            label1.Size = new System.Drawing.Size(73, 20);
            label1.TabIndex = 25;
            label1.Text = "ProductId";
            // 
            // txtPid
            // 
            txtPid.Location = new System.Drawing.Point(181, 257);
            txtPid.Name = "txtPid";
            txtPid.ReadOnly = true;
            txtPid.Size = new System.Drawing.Size(414, 27);
            txtPid.TabIndex = 24;
            // 
            // btnAdd
            // 
            btnAdd.Location = new System.Drawing.Point(676, 255);
            btnAdd.Name = "btnAdd";
            btnAdd.Size = new System.Drawing.Size(123, 56);
            btnAdd.TabIndex = 40;
            btnAdd.Text = "Add";
            btnAdd.UseVisualStyleBackColor = true;
            btnAdd.Click += btnAdd_Click;
            // 
            // btnUpdate
            // 
            btnUpdate.Location = new System.Drawing.Point(676, 337);
            btnUpdate.Name = "btnUpdate";
            btnUpdate.Size = new System.Drawing.Size(123, 56);
            btnUpdate.TabIndex = 41;
            btnUpdate.Text = "Update";
            btnUpdate.UseVisualStyleBackColor = true;
            btnUpdate.Click += btnUpdate_Click;
            // 
            // btnDelete
            // 
            btnDelete.Location = new System.Drawing.Point(676, 423);
            btnDelete.Name = "btnDelete";
            btnDelete.Size = new System.Drawing.Size(123, 56);
            btnDelete.TabIndex = 42;
            btnDelete.Text = "Delete";
            btnDelete.UseVisualStyleBackColor = true;
            btnDelete.Click += btnDelete_Click;
            // 
            // frmShopOwner
            // 
            AutoScaleDimensions = new System.Drawing.SizeF(8F, 20F);
            AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            ClientSize = new System.Drawing.Size(864, 910);
            Controls.Add(btnDelete);
            Controls.Add(btnUpdate);
            Controls.Add(btnAdd);
            Controls.Add(txtDescription);
            Controls.Add(txtShopId);
            Controls.Add(txtCateId);
            Controls.Add(txtPrice);
            Controls.Add(txtSQty);
            Controls.Add(txtAQty);
            Controls.Add(txtPname);
            Controls.Add(label8);
            Controls.Add(label7);
            Controls.Add(label6);
            Controls.Add(label5);
            Controls.Add(label4);
            Controls.Add(label3);
            Controls.Add(label2);
            Controls.Add(label1);
            Controls.Add(txtPid);
            Controls.Add(dgvProductSO);
            Name = "frmShopOwner";
            Text = "frmShopOwner";
            Load += frmShopOwner_Load;
            ((System.ComponentModel.ISupportInitialize)dgvProductSO).EndInit();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private System.Windows.Forms.DataGridView dgvProductSO;
        private System.Windows.Forms.TextBox txtDescription;
        private System.Windows.Forms.TextBox txtShopId;
        private System.Windows.Forms.TextBox txtCateId;
        private System.Windows.Forms.TextBox txtPrice;
        private System.Windows.Forms.TextBox txtSQty;
        private System.Windows.Forms.TextBox txtAQty;
        private System.Windows.Forms.TextBox txtPname;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txtPid;
        private System.Windows.Forms.Button btnAdd;
        private System.Windows.Forms.Button btnUpdate;
        private System.Windows.Forms.Button btnDelete;
    }
}