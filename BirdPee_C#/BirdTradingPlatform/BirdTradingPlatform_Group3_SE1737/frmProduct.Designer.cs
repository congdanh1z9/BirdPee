namespace BirdTradingPlatform_Group3_SE1737
{
    partial class frmProduct
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
            components = new System.ComponentModel.Container();
            dgvProduct = new System.Windows.Forms.DataGridView();
            btnSearch = new System.Windows.Forms.Button();
            btnAddToCart = new System.Windows.Forms.Button();
            txtSearch = new System.Windows.Forms.TextBox();
            cbCategory = new System.Windows.Forms.ComboBox();
            btnCategory = new System.Windows.Forms.Button();
            txtPid = new System.Windows.Forms.TextBox();
            productBindingSource = new System.Windows.Forms.BindingSource(components);
            label1 = new System.Windows.Forms.Label();
            label2 = new System.Windows.Forms.Label();
            label3 = new System.Windows.Forms.Label();
            label4 = new System.Windows.Forms.Label();
            label5 = new System.Windows.Forms.Label();
            label6 = new System.Windows.Forms.Label();
            label7 = new System.Windows.Forms.Label();
            label8 = new System.Windows.Forms.Label();
            txtPname = new System.Windows.Forms.TextBox();
            productBindingSource1 = new System.Windows.Forms.BindingSource(components);
            txtAQty = new System.Windows.Forms.TextBox();
            productBindingSource2 = new System.Windows.Forms.BindingSource(components);
            txtSQty = new System.Windows.Forms.TextBox();
            productBindingSource3 = new System.Windows.Forms.BindingSource(components);
            txtPrice = new System.Windows.Forms.TextBox();
            productBindingSource4 = new System.Windows.Forms.BindingSource(components);
            txtCateId = new System.Windows.Forms.TextBox();
            productBindingSource5 = new System.Windows.Forms.BindingSource(components);
            txtShopId = new System.Windows.Forms.TextBox();
            productBindingSource6 = new System.Windows.Forms.BindingSource(components);
            txtDescription = new System.Windows.Forms.TextBox();
            productBindingSource7 = new System.Windows.Forms.BindingSource(components);
            btnViewOrder = new System.Windows.Forms.Button();
            sqlCommand1 = new Microsoft.Data.SqlClient.SqlCommand();
            cbSort = new System.Windows.Forms.ComboBox();
            btnSort = new System.Windows.Forms.Button();
            accountBindingSource = new System.Windows.Forms.BindingSource(components);
            accountBindingSource1 = new System.Windows.Forms.BindingSource(components);
            btnLogOut = new System.Windows.Forms.Button();
            btnViewCart = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)dgvProduct).BeginInit();
            ((System.ComponentModel.ISupportInitialize)productBindingSource).BeginInit();
            ((System.ComponentModel.ISupportInitialize)productBindingSource1).BeginInit();
            ((System.ComponentModel.ISupportInitialize)productBindingSource2).BeginInit();
            ((System.ComponentModel.ISupportInitialize)productBindingSource3).BeginInit();
            ((System.ComponentModel.ISupportInitialize)productBindingSource4).BeginInit();
            ((System.ComponentModel.ISupportInitialize)productBindingSource5).BeginInit();
            ((System.ComponentModel.ISupportInitialize)productBindingSource6).BeginInit();
            ((System.ComponentModel.ISupportInitialize)productBindingSource7).BeginInit();
            ((System.ComponentModel.ISupportInitialize)accountBindingSource).BeginInit();
            ((System.ComponentModel.ISupportInitialize)accountBindingSource1).BeginInit();
            SuspendLayout();
            // 
            // dgvProduct
            // 
            dgvProduct.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dgvProduct.Location = new System.Drawing.Point(11, 47);
            dgvProduct.Name = "dgvProduct";
            dgvProduct.ReadOnly = true;
            dgvProduct.RowHeadersWidth = 51;
            dgvProduct.RowTemplate.Height = 29;
            dgvProduct.Size = new System.Drawing.Size(790, 325);
            dgvProduct.TabIndex = 0;
            dgvProduct.CellClick += dgvProduct_CellContentClick;
            dgvProduct.CellContentClick += dgvProduct_CellContentClick;
            // 
            // btnSearch
            // 
            btnSearch.Location = new System.Drawing.Point(707, 10);
            btnSearch.Name = "btnSearch";
            btnSearch.Size = new System.Drawing.Size(94, 29);
            btnSearch.TabIndex = 1;
            btnSearch.Text = "Search";
            btnSearch.UseVisualStyleBackColor = true;
            btnSearch.Click += btnSearch_Click;
            // 
            // btnAddToCart
            // 
            btnAddToCart.Location = new System.Drawing.Point(613, 404);
            btnAddToCart.Name = "btnAddToCart";
            btnAddToCart.Size = new System.Drawing.Size(174, 72);
            btnAddToCart.TabIndex = 2;
            btnAddToCart.Text = "Add To Cart";
            btnAddToCart.UseVisualStyleBackColor = true;
            btnAddToCart.Click += btnAddToCart_Click;
            // 
            // txtSearch
            // 
            txtSearch.Location = new System.Drawing.Point(473, 10);
            txtSearch.Name = "txtSearch";
            txtSearch.Size = new System.Drawing.Size(228, 27);
            txtSearch.TabIndex = 5;
            // 
            // cbCategory
            // 
            cbCategory.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            cbCategory.FormattingEnabled = true;
            cbCategory.Location = new System.Drawing.Point(11, 9);
            cbCategory.Name = "cbCategory";
            cbCategory.Size = new System.Drawing.Size(151, 28);
            cbCategory.TabIndex = 6;
            cbCategory.SelectedIndexChanged += cbCategory_SelectedIndexChanged_1;
            // 
            // btnCategory
            // 
            btnCategory.Location = new System.Drawing.Point(169, 8);
            btnCategory.Name = "btnCategory";
            btnCategory.Size = new System.Drawing.Size(94, 29);
            btnCategory.TabIndex = 7;
            btnCategory.Text = "Filting";
            btnCategory.UseVisualStyleBackColor = true;
            btnCategory.Click += btnCategory_Click;
            // 
            // txtPid
            // 
            txtPid.DataBindings.Add(new System.Windows.Forms.Binding("Text", productBindingSource, "id", true));
            txtPid.Location = new System.Drawing.Point(169, 404);
            txtPid.Name = "txtPid";
            txtPid.ReadOnly = true;
            txtPid.Size = new System.Drawing.Size(414, 27);
            txtPid.TabIndex = 8;
            // 
            // productBindingSource
            // 
            productBindingSource.DataSource = typeof(DTO.Product);
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Location = new System.Drawing.Point(25, 408);
            label1.Name = "label1";
            label1.Size = new System.Drawing.Size(73, 20);
            label1.TabIndex = 9;
            label1.Text = "ProductId";
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Location = new System.Drawing.Point(25, 475);
            label2.Name = "label2";
            label2.Size = new System.Drawing.Size(100, 20);
            label2.TabIndex = 10;
            label2.Text = "ProductName";
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.Location = new System.Drawing.Point(25, 537);
            label3.Name = "label3";
            label3.Size = new System.Drawing.Size(131, 20);
            label3.TabIndex = 11;
            label3.Text = "Available Quantity";
            // 
            // label4
            // 
            label4.AutoSize = true;
            label4.Location = new System.Drawing.Point(25, 588);
            label4.Name = "label4";
            label4.Size = new System.Drawing.Size(99, 20);
            label4.TabIndex = 12;
            label4.Text = "Sold Quantity";
            // 
            // label5
            // 
            label5.AutoSize = true;
            label5.Location = new System.Drawing.Point(25, 800);
            label5.Name = "label5";
            label5.Size = new System.Drawing.Size(85, 20);
            label5.TabIndex = 13;
            label5.Text = "Description";
            // 
            // label6
            // 
            label6.AutoSize = true;
            label6.Location = new System.Drawing.Point(25, 699);
            label6.Name = "label6";
            label6.Size = new System.Drawing.Size(82, 20);
            label6.TabIndex = 14;
            label6.Text = "CategoryId";
            // 
            // label7
            // 
            label7.AutoSize = true;
            label7.Location = new System.Drawing.Point(25, 756);
            label7.Name = "label7";
            label7.Size = new System.Drawing.Size(56, 20);
            label7.TabIndex = 15;
            label7.Text = "ShopId";
            // 
            // label8
            // 
            label8.AutoSize = true;
            label8.Location = new System.Drawing.Point(25, 641);
            label8.Name = "label8";
            label8.Size = new System.Drawing.Size(41, 20);
            label8.TabIndex = 16;
            label8.Text = "Price";
            // 
            // txtPname
            // 
            txtPname.DataBindings.Add(new System.Windows.Forms.Binding("Text", productBindingSource1, "name", true));
            txtPname.Location = new System.Drawing.Point(169, 464);
            txtPname.Name = "txtPname";
            txtPname.ReadOnly = true;
            txtPname.Size = new System.Drawing.Size(414, 27);
            txtPname.TabIndex = 17;
            // 
            // productBindingSource1
            // 
            productBindingSource1.DataSource = typeof(DTO.Product);
            // 
            // txtAQty
            // 
            txtAQty.DataBindings.Add(new System.Windows.Forms.Binding("Text", productBindingSource2, "availabe_qty", true));
            txtAQty.Location = new System.Drawing.Point(169, 527);
            txtAQty.Name = "txtAQty";
            txtAQty.ReadOnly = true;
            txtAQty.Size = new System.Drawing.Size(414, 27);
            txtAQty.TabIndex = 18;
            // 
            // productBindingSource2
            // 
            productBindingSource2.DataSource = typeof(DTO.Product);
            // 
            // txtSQty
            // 
            txtSQty.DataBindings.Add(new System.Windows.Forms.Binding("Text", productBindingSource3, "sold_qty", true));
            txtSQty.Location = new System.Drawing.Point(169, 577);
            txtSQty.Name = "txtSQty";
            txtSQty.ReadOnly = true;
            txtSQty.Size = new System.Drawing.Size(414, 27);
            txtSQty.TabIndex = 19;
            // 
            // productBindingSource3
            // 
            productBindingSource3.DataSource = typeof(DTO.Product);
            // 
            // txtPrice
            // 
            txtPrice.DataBindings.Add(new System.Windows.Forms.Binding("Text", productBindingSource4, "price", true));
            txtPrice.Location = new System.Drawing.Point(169, 631);
            txtPrice.Name = "txtPrice";
            txtPrice.ReadOnly = true;
            txtPrice.Size = new System.Drawing.Size(414, 27);
            txtPrice.TabIndex = 20;
            // 
            // productBindingSource4
            // 
            productBindingSource4.DataSource = typeof(DTO.Product);
            // 
            // txtCateId
            // 
            txtCateId.DataBindings.Add(new System.Windows.Forms.Binding("Text", productBindingSource5, "cate_id", true));
            txtCateId.Location = new System.Drawing.Point(169, 688);
            txtCateId.Name = "txtCateId";
            txtCateId.ReadOnly = true;
            txtCateId.Size = new System.Drawing.Size(414, 27);
            txtCateId.TabIndex = 21;
            // 
            // productBindingSource5
            // 
            productBindingSource5.DataSource = typeof(DTO.Product);
            // 
            // txtShopId
            // 
            txtShopId.DataBindings.Add(new System.Windows.Forms.Binding("Text", productBindingSource6, "shop_id", true));
            txtShopId.Location = new System.Drawing.Point(169, 745);
            txtShopId.Name = "txtShopId";
            txtShopId.ReadOnly = true;
            txtShopId.Size = new System.Drawing.Size(414, 27);
            txtShopId.TabIndex = 22;
            // 
            // productBindingSource6
            // 
            productBindingSource6.DataSource = typeof(DTO.Product);
            // 
            // txtDescription
            // 
            txtDescription.DataBindings.Add(new System.Windows.Forms.Binding("Text", productBindingSource7, "description", true));
            txtDescription.Location = new System.Drawing.Point(169, 797);
            txtDescription.Multiline = true;
            txtDescription.Name = "txtDescription";
            txtDescription.ReadOnly = true;
            txtDescription.Size = new System.Drawing.Size(618, 85);
            txtDescription.TabIndex = 23;
            // 
            // productBindingSource7
            // 
            productBindingSource7.DataSource = typeof(DTO.Product);
            // 
            // btnViewOrder
            // 
            btnViewOrder.Location = new System.Drawing.Point(613, 485);
            btnViewOrder.Name = "btnViewOrder";
            btnViewOrder.Size = new System.Drawing.Size(174, 72);
            btnViewOrder.TabIndex = 24;
            btnViewOrder.Text = "View Order";
            btnViewOrder.UseVisualStyleBackColor = true;
            btnViewOrder.Click += btnViewOrder_Click;
            // 
            // sqlCommand1
            // 
            sqlCommand1.CommandTimeout = 30;
            sqlCommand1.EnableOptimizedParameterBinding = false;
            // 
            // cbSort
            // 
            cbSort.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            cbSort.FormattingEnabled = true;
            cbSort.Items.AddRange(new object[] { "A-Z", "Z-A", "NEW", "ALL" });
            cbSort.Location = new System.Drawing.Point(285, 9);
            cbSort.Name = "cbSort";
            cbSort.Size = new System.Drawing.Size(105, 28);
            cbSort.TabIndex = 25;
            // 
            // btnSort
            // 
            btnSort.Location = new System.Drawing.Point(396, 8);
            btnSort.Name = "btnSort";
            btnSort.Size = new System.Drawing.Size(58, 29);
            btnSort.TabIndex = 26;
            btnSort.Text = "Sort";
            btnSort.UseVisualStyleBackColor = true;
            btnSort.Click += btnSort_Click;
            // 
            // accountBindingSource
            // 
            accountBindingSource.DataSource = typeof(DTO.Account);
            // 
            // accountBindingSource1
            // 
            accountBindingSource1.DataSource = typeof(DTO.Account);
            // 
            // btnLogOut
            // 
            btnLogOut.Location = new System.Drawing.Point(613, 563);
            btnLogOut.Name = "btnLogOut";
            btnLogOut.Size = new System.Drawing.Size(174, 75);
            btnLogOut.TabIndex = 27;
            btnLogOut.Text = "Log Out\r\n";
            btnLogOut.UseVisualStyleBackColor = true;
            btnLogOut.Click += btnLogOut_Click;
            // 
            // btnViewCart
            // 
            btnViewCart.Location = new System.Drawing.Point(613, 644);
            btnViewCart.Name = "btnViewCart";
            btnViewCart.Size = new System.Drawing.Size(174, 75);
            btnViewCart.TabIndex = 28;
            btnViewCart.Text = "View Cart";
            btnViewCart.UseVisualStyleBackColor = true;
            btnViewCart.Click += btnViewCart_Click;
            // 
            // frmProduct
            // 
            AutoScaleDimensions = new System.Drawing.SizeF(8F, 20F);
            AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            ClientSize = new System.Drawing.Size(813, 993);
            Controls.Add(btnViewCart);
            Controls.Add(btnLogOut);
            Controls.Add(btnSort);
            Controls.Add(cbSort);
            Controls.Add(btnViewOrder);
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
            Controls.Add(btnCategory);
            Controls.Add(cbCategory);
            Controls.Add(txtSearch);
            Controls.Add(btnAddToCart);
            Controls.Add(btnSearch);
            Controls.Add(dgvProduct);
            Name = "frmProduct";
            StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            Text = "frmProduct";
            Load += frmProduct_Load;
            ((System.ComponentModel.ISupportInitialize)dgvProduct).EndInit();
            ((System.ComponentModel.ISupportInitialize)productBindingSource).EndInit();
            ((System.ComponentModel.ISupportInitialize)productBindingSource1).EndInit();
            ((System.ComponentModel.ISupportInitialize)productBindingSource2).EndInit();
            ((System.ComponentModel.ISupportInitialize)productBindingSource3).EndInit();
            ((System.ComponentModel.ISupportInitialize)productBindingSource4).EndInit();
            ((System.ComponentModel.ISupportInitialize)productBindingSource5).EndInit();
            ((System.ComponentModel.ISupportInitialize)productBindingSource6).EndInit();
            ((System.ComponentModel.ISupportInitialize)productBindingSource7).EndInit();
            ((System.ComponentModel.ISupportInitialize)accountBindingSource).EndInit();
            ((System.ComponentModel.ISupportInitialize)accountBindingSource1).EndInit();
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private System.Windows.Forms.DataGridView dgvProduct;
        private System.Windows.Forms.Button btnSearch;
        private System.Windows.Forms.Button btnAddToCart;
        private System.Windows.Forms.TextBox txtSearch;
        private System.Windows.Forms.ComboBox cbCategory;
        private System.Windows.Forms.Button btnCategory;
        private System.Windows.Forms.TextBox txtPid;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.TextBox txtPname;
        private System.Windows.Forms.TextBox txtAQty;
        private System.Windows.Forms.TextBox txtSQty;
        private System.Windows.Forms.TextBox txtPrice;
        private System.Windows.Forms.TextBox txtCateId;
        private System.Windows.Forms.TextBox txtShopId;
        private System.Windows.Forms.TextBox txtDescription;
        private System.Windows.Forms.Button btnViewOrder;
        private Microsoft.Data.SqlClient.SqlCommand sqlCommand1;
        private System.Windows.Forms.ComboBox cbSort;
        private System.Windows.Forms.Button btnSort;
        private System.Windows.Forms.BindingSource productBindingSource;
        private System.Windows.Forms.BindingSource productBindingSource1;
        private System.Windows.Forms.BindingSource productBindingSource2;
        private System.Windows.Forms.BindingSource productBindingSource3;
        private System.Windows.Forms.BindingSource productBindingSource4;
        private System.Windows.Forms.BindingSource productBindingSource5;
        private System.Windows.Forms.BindingSource productBindingSource6;
        private System.Windows.Forms.BindingSource productBindingSource7;
        private System.Windows.Forms.BindingSource accountBindingSource;
        private System.Windows.Forms.BindingSource accountBindingSource1;
        private System.Windows.Forms.Button btnLogOut;
        private System.Windows.Forms.Button btnViewCart;
    }
}