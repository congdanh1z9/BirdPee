namespace BirdTradingPlatform_Group3_SE1737
{
    partial class frmCart
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
            dgvAddToCart = new System.Windows.Forms.DataGridView();
            btnClearCart = new System.Windows.Forms.Button();
            btnCheckOut = new System.Windows.Forms.Button();
            label1 = new System.Windows.Forms.Label();
            btnUpdate = new System.Windows.Forms.Button();
            mkQuantity = new System.Windows.Forms.MaskedTextBox();
            label2 = new System.Windows.Forms.Label();
            txtProductId = new System.Windows.Forms.TextBox();
            btnDelete = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)dgvAddToCart).BeginInit();
            SuspendLayout();
            // 
            // dgvAddToCart
            // 
            dgvAddToCart.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dgvAddToCart.Location = new System.Drawing.Point(31, 87);
            dgvAddToCart.Name = "dgvAddToCart";
            dgvAddToCart.RowHeadersWidth = 51;
            dgvAddToCart.RowTemplate.Height = 29;
            dgvAddToCart.Size = new System.Drawing.Size(1003, 497);
            dgvAddToCart.TabIndex = 0;
            dgvAddToCart.CellClick += dgvAddToCart_CellClick;
            // 
            // btnClearCart
            // 
            btnClearCart.Location = new System.Drawing.Point(700, 5);
            btnClearCart.Name = "btnClearCart";
            btnClearCart.Size = new System.Drawing.Size(166, 70);
            btnClearCart.TabIndex = 8;
            btnClearCart.Text = "Clear Cart";
            btnClearCart.UseVisualStyleBackColor = true;
            btnClearCart.Click += btnClearCart_Click;
            // 
            // btnCheckOut
            // 
            btnCheckOut.Location = new System.Drawing.Point(872, 5);
            btnCheckOut.Name = "btnCheckOut";
            btnCheckOut.Size = new System.Drawing.Size(162, 70);
            btnCheckOut.TabIndex = 9;
            btnCheckOut.Text = "Check Out";
            btnCheckOut.UseVisualStyleBackColor = true;
            btnCheckOut.Click += btnCheckOut_Click;
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Location = new System.Drawing.Point(31, 53);
            label1.Name = "label1";
            label1.Size = new System.Drawing.Size(65, 20);
            label1.TabIndex = 10;
            label1.Text = "Quantity";
            // 
            // btnUpdate
            // 
            btnUpdate.Location = new System.Drawing.Point(361, 6);
            btnUpdate.Name = "btnUpdate";
            btnUpdate.Size = new System.Drawing.Size(167, 68);
            btnUpdate.TabIndex = 12;
            btnUpdate.Text = "Update";
            btnUpdate.UseVisualStyleBackColor = true;
            btnUpdate.Click += btnUpdate_Click;
            // 
            // mkQuantity
            // 
            mkQuantity.Location = new System.Drawing.Point(120, 46);
            mkQuantity.Name = "mkQuantity";
            mkQuantity.Size = new System.Drawing.Size(211, 27);
            mkQuantity.TabIndex = 13;
            mkQuantity.ValidatingType = typeof(int);
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Location = new System.Drawing.Point(31, 20);
            label2.Name = "label2";
            label2.Size = new System.Drawing.Size(73, 20);
            label2.TabIndex = 14;
            label2.Text = "ProductId";
            // 
            // txtProductId
            // 
            txtProductId.Location = new System.Drawing.Point(120, 12);
            txtProductId.Name = "txtProductId";
            txtProductId.ReadOnly = true;
            txtProductId.Size = new System.Drawing.Size(211, 27);
            txtProductId.TabIndex = 15;
            // 
            // btnDelete
            // 
            btnDelete.Location = new System.Drawing.Point(534, 6);
            btnDelete.Name = "btnDelete";
            btnDelete.Size = new System.Drawing.Size(160, 67);
            btnDelete.TabIndex = 16;
            btnDelete.Text = "Delete";
            btnDelete.UseVisualStyleBackColor = true;
            btnDelete.Click += btnDelete_Click;
            // 
            // frmCart
            // 
            AutoScaleDimensions = new System.Drawing.SizeF(8F, 20F);
            AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            ClientSize = new System.Drawing.Size(1077, 606);
            Controls.Add(btnDelete);
            Controls.Add(txtProductId);
            Controls.Add(label2);
            Controls.Add(mkQuantity);
            Controls.Add(btnUpdate);
            Controls.Add(label1);
            Controls.Add(btnCheckOut);
            Controls.Add(btnClearCart);
            Controls.Add(dgvAddToCart);
            Name = "frmCart";
            StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            Text = "frmAddToCart";
            Load += frmCart_Load;
            ((System.ComponentModel.ISupportInitialize)dgvAddToCart).EndInit();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private System.Windows.Forms.DataGridView dgvAddToCart;
        private System.Windows.Forms.Button btnClearCart;
        private System.Windows.Forms.Button btnCheckOut;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button btnUpdate;
        private System.Windows.Forms.MaskedTextBox mkQuantity;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txtProductId;
        private System.Windows.Forms.Button btnDelete;
    }
}