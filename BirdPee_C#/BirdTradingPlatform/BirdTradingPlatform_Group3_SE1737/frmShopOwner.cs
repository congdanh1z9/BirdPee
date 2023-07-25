using DTO;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace BirdTradingPlatform_Group3_SE1737
{
    public partial class frmShopOwner : Form
    {
        Account acc = new Account();
        public frmShopOwner(Account account)
        {
            acc = account;
            InitializeComponent();
        }

        public frmShopOwner()
        {
        }

        private void frmShopOwner_Load(object sender, EventArgs e)
        {
            dgvProductSO.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
            List<Product> products = Repository.Repository.getAllProductByShopID(acc.id);
            dgvProductSO.DataSource = products;
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void btnAdd_Click(object sender, EventArgs e)
        {
            frmAddProduct frmadd = new frmAddProduct(acc.id);
            frmadd.ShowDialog();
            List<Product> products = Repository.Repository.getAllProductByShopID(acc.id);
            dgvProductSO.DataSource = products;
        }

        private void btnUpdate_Click(object sender, EventArgs e)
        {
            if (txtPid.Text.Trim() == "" || txtPname.Text.Trim() == "" || txtAQty.Text.Trim() == "" || txtSQty.Text.Trim() == "" || txtDescription.Text.Trim() == "" || txtCateId.Text.Trim() == "" || txtPrice.Text.Trim() == "")
            {
                MessageBox.Show("Please fill all input fields.", "BirdPee", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            else
            {
                int pid, AQty, SQQty, cateid;
                float Price;

                if (!int.TryParse(txtPid.Text, out pid) || !int.TryParse(txtAQty.Text, out AQty) || !int.TryParse(txtSQty.Text, out SQQty) || !float.TryParse(txtPrice.Text, out Price) || !int.TryParse(txtCateId.Text, out cateid))
                {
                    MessageBox.Show("Please enter valid numeric values for Product ID, Quantity, Stock Quantity, Price, and Category ID.", "BirdPee", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
                else if (AQty < 0 || SQQty < 0 || Price < 0)
                {
                    MessageBox.Show("Please input quantity, stock quantity, and price greater than 0.", "BirdPee", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
                else if (System.Text.RegularExpressions.Regex.IsMatch(txtPname.Text, "^[0-9]+$"))
                {
                    MessageBox.Show("Product name cannot contain only numbers.", "BirdPee", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
                else
                {
                    string name = txtPname.Text;
                    string desc = txtDescription.Text;

                    if (cateid < 1 || cateid > 3)
                    {
                        MessageBox.Show("Category ID can only be 1 for Bird, 2 for Food, or 3 for Bage.", "BirdPee", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                    else
                    {
                        Repository.Repository.updateProductByShop(name, AQty, SQQty, desc, cateid, Price, pid);
                        List<Product> products = Repository.Repository.getAllProductByShopID(acc.id);
                        dgvProductSO.DataSource = products;
                    }
                }
            }
        }
        /*
        private void btnDelete_Click(object sender, EventArgs e)
        {
            if (txtPid.Text.Equals(""))
            {
                MessageBox.Show("please choose product you want to delete");
            }
            else
            {
                int pid = int.Parse(txtPid.Text);
                Repository.Repository.deleteProductByShop(pid);
                List<Product> products = Repository.Repository.getAllProductByShopID(acc.id);
                dgvProductSO.DataSource = products;
            }
        }
        */
        private void btnDelete_Click(object sender, EventArgs e)
        {
            if (txtPid.Text.Equals(""))
            {
                MessageBox.Show("Please choose the product you want to delete.", "BirdPee", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            else
            {
                int pid = int.Parse(txtPid.Text);

                // Check if the product is still in any customer's cart before attempting to delete
                bool canDeleteProduct = Repository.Repository.deleteProductByShop(pid);

                if (canDeleteProduct)
                {
                    DialogResult result = MessageBox.Show("Are you sure you want to delete this product?", "Confirm Deletion", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
                    if (result == DialogResult.Yes)
                    {
                        MessageBox.Show("Product deleted successfully!", "BirdPee", MessageBoxButtons.OK, MessageBoxIcon.Information);

                        // Refresh the product list in the DataGridView
                        List<Product> products = Repository.Repository.getAllProductByShopID(acc.id);
                        dgvProductSO.DataSource = null;
                        dgvProductSO.DataSource = products;
                    }
                }
                else
                {
                    MessageBox.Show("This product cannot be deleted because it is still in a customer's cart.", "BirdPee", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                }
            }
        }

        private void dgvProductSO_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex >= 0)
            {
                DataGridViewRow dgvr = this.dgvProductSO.Rows[e.RowIndex];
                txtPid.Text = dgvr.Cells[0].Value.ToString();
                txtPname.Text = dgvr.Cells[1].Value.ToString();
                txtDescription.Text = dgvr.Cells[2].Value.ToString();
                txtAQty.Text = dgvr.Cells[3].Value.ToString();
                txtSQty.Text = dgvr.Cells[4].Value.ToString();
                txtCateId.Text = dgvr.Cells[5].Value.ToString();
                txtShopId.Text = dgvr.Cells[6].Value.ToString();
                txtPrice.Text = dgvr.Cells[7].Value.ToString();
            }
        }
    }
}
