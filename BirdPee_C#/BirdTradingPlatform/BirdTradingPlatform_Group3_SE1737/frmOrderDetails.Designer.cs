namespace BirdTradingPlatform_Group3_SE1737
{
    partial class frmOrderDetails
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
            dgvOrderHistory = new System.Windows.Forms.DataGridView();
            label1 = new System.Windows.Forms.Label();
            btnHomePage = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)dgvOrderHistory).BeginInit();
            SuspendLayout();
            // 
            // dgvOrderHistory
            // 
            dgvOrderHistory.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dgvOrderHistory.Location = new System.Drawing.Point(38, 65);
            dgvOrderHistory.Name = "dgvOrderHistory";
            dgvOrderHistory.RowHeadersWidth = 51;
            dgvOrderHistory.RowTemplate.Height = 29;
            dgvOrderHistory.Size = new System.Drawing.Size(947, 484);
            dgvOrderHistory.TabIndex = 0;
            dgvOrderHistory.CellContentClick += dgvOrderHistory_CellContentClick;
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Font = new System.Drawing.Font("Segoe UI", 13.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point);
            label1.Location = new System.Drawing.Point(425, 20);
            label1.Name = "label1";
            label1.Size = new System.Drawing.Size(161, 31);
            label1.TabIndex = 1;
            label1.Text = "Order History";
            // 
            // btnHomePage
            // 
            btnHomePage.Location = new System.Drawing.Point(824, 20);
            btnHomePage.Name = "btnHomePage";
            btnHomePage.Size = new System.Drawing.Size(161, 29);
            btnHomePage.TabIndex = 2;
            btnHomePage.Text = "Back To HomePage";
            btnHomePage.UseVisualStyleBackColor = true;
            btnHomePage.Click += btnHomePage_Click;
            // 
            // frmOrderDetails
            // 
            AutoScaleDimensions = new System.Drawing.SizeF(8F, 20F);
            AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            ClientSize = new System.Drawing.Size(1025, 589);
            Controls.Add(btnHomePage);
            Controls.Add(label1);
            Controls.Add(dgvOrderHistory);
            Name = "frmOrderDetails";
            StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            Text = "frmOrderDetails";
            Load += frmOrderDetails_Load;
            ((System.ComponentModel.ISupportInitialize)dgvOrderHistory).EndInit();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private System.Windows.Forms.DataGridView dgvOrderHistory;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button btnHomePage;
    }
}