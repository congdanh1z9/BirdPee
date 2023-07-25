using DAO;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Repository;
using DTO;
using System.Diagnostics.Eventing.Reader;
using Microsoft.IdentityModel.Tokens;

namespace BirdTradingPlatform_Group3_SE1737
{
    public partial class frmProduct : Form
    {
        Account acc = new Account();

        public frmProduct(Account account)
        {
            acc = account;
            InitializeComponent();
        }

        private void dgvProduct_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex >= 0)
            {
                DataGridViewRow dgvr = this.dgvProduct.Rows[e.RowIndex];
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

        private void frmProduct_Load(object sender, EventArgs e)
        {
            dgvProduct.SelectionMode = DataGridViewSelectionMode.FullRowSelect;


            List<Product> listproducts = Repository.Repository.getAllProducts();
            dgvProduct.DataSource = listproducts;


            List<string> liststring = new List<string>();
            List<Category> categories = Repository.Repository.GetCategories();
            liststring.Add("Default");
            foreach (Category category in categories)
            {
                liststring.Add(category.name);

            }
            cbCategory.DataSource = liststring;

        }
        //get id of category
        private int getCateidByName(String name)
        {
            int id = 0;
            List<Category> categories = Repository.Repository.GetCategories();
            foreach (Category category in categories)
            {
                if (category.name.Equals(name))
                {
                    id = category.id;
                    break;
                }
            }
            return id;
        }

        private void btnCategory_Click(object sender, EventArgs e)
        {
            String name = cbCategory.Text;
            int id = -1;
            List<Product> listproducts = new List<Product>();
            if (!name.Equals("Default"))
            {
                id = getCateidByName(name);
                listproducts = Repository.Repository.GetProductsByCate(id);
            }
            else
            {
                listproducts = Repository.Repository.GetProductsByCate(0);
            }
            dgvProduct.DataSource = listproducts;
        }

        private void cbCategory_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void btnSearch_Click(object sender, EventArgs e)
        {
            string name = txtSearch.Text;
            List<Product> listproducts = Repository.Repository.SearchProductsByName(name);
            if (listproducts.Count == 0)
            {
                MessageBox.Show("No product has this name!", "BirdPee", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                txtSearch.Text = string.Empty;
                listproducts = Repository.Repository.SearchProductsByName("");
            }
            dgvProduct.DataSource = listproducts;
        }

        private void txtSearch_TextChanged(object sender, EventArgs e)
        {

        }

        private void btnSort_Click(object sender, EventArgs e)
        {
            String ca = cbSort.Text;
            List<Product> listproducts = Repository.Repository.SortProducts(ca);
            dgvProduct.DataSource = listproducts;
        }

        private void btnViewOrder_Click(object sender, EventArgs e)
        {

            frmOrderDetails frm = new frmOrderDetails(acc.id);
            frm.Show();
        }
        private static int CheckExistedCart(List<Cart> carts, int pid)
        {
            int quantity = 0;
            foreach (Cart c in carts)
            {
                if (c.productid == pid)
                {
                    quantity = c.quantity;
                    return quantity;
                }

            }

            return quantity;
        }



        private void btnAddToCart_Click(object sender, EventArgs e)
        {
            List<Cart> clist = Repository.Repository.GetCart(acc.id);
            if (txtPrice.Text.Equals(""))
            {
                MessageBox.Show("Please choose poroduct");
            }
            else
            {
                float price = float.Parse(txtPrice.Text);
                int id = int.Parse(txtPid.Text);
                int Aquantity = int.Parse(txtAQty.Text);
                int flag = 0;
                foreach (Cart c in clist)
                {
                    if (c.productid == id)
                    {
                        if (c.quantity < Aquantity)
                        {
                            int quantity = c.quantity + 1;
                            Repository.Repository.UpdateQuantity(id, quantity);

                        }
                        else
                        {
                            MessageBox.Show("Quantity must be lower than " + Aquantity, "BirdPee", MessageBoxButtons.OK, MessageBoxIcon.Warning);

                        }
                        flag = 1;
                        break;
                    }
                }
                if (flag == 0)
                {
                    Repository.Repository.addToCart(1, price, id, acc.id);
                }
            }

        }

        private void btnLogOut_Click(object sender, EventArgs e) => this.Close();

        private void cbSort_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void btnViewCart_Click(object sender, EventArgs e)
        {
            frmCart frmCart = new frmCart(acc);
            frmCart.ShowDialog();
            frmProduct_Load( sender,  e);

        }

        private void cbCategory_SelectedIndexChanged_1(object sender, EventArgs e)
        {

        }
    }
}
