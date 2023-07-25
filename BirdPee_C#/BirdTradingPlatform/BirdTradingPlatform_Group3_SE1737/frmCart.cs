using DTO;
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

namespace BirdTradingPlatform_Group3_SE1737
{
    public partial class frmCart : Form
    {
        Account ac = new Account();
        public frmCart(Account acc)
        {
            ac = acc;
            InitializeComponent();
        }

        private void frmCart_Load(object sender, EventArgs e)
        {

            dgvAddToCart.SelectionMode = DataGridViewSelectionMode.FullRowSelect;
            List<Cart> cart = Repository.Repository.GetCart(ac.id);
            dgvAddToCart.DataSource = cart;


        }

        private void dgvAddToCart_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex >= 0)
            {
                DataGridViewRow dgvr = this.dgvAddToCart.Rows[e.RowIndex];
                mkQuantity.Text = dgvr.Cells[1].Value.ToString();
                txtProductId.Text = dgvr.Cells[3].Value.ToString();

            }
        }

        private void btnUpdate_Click(object sender, EventArgs e)
        {
            if (txtProductId.Text.Equals(""))
            {
                MessageBox.Show("Please choose product");
            }
            else
            {
                int id = int.Parse(txtProductId.Text);
                Product products = Repository.Repository.getProductByID(id);
                int quantity = int.Parse(mkQuantity.Text);
                if (quantity >= products.availabe_qty)
                {
                    MessageBox.Show("limited of availabe quantity");
                }
                else
                {
                    Repository.Repository.UpdateQuantity(id, quantity);
                    List<Cart> list = Repository.Repository.GetCart(ac.id);
                    dgvAddToCart.DataSource = list;
                }
            }

        }

        private void btnDelete_Click(object sender, EventArgs e)
        {
            if (txtProductId.Text.Equals(""))
            {
                MessageBox.Show("Please choose product!");
            }
            else
            {
                int id = int.Parse(txtProductId.Text);
                Repository.Repository.DeleteCart(id);
                List<Cart> list = Repository.Repository.GetCart(ac.id);
                dgvAddToCart.DataSource = list;
            }

        }

        private void btnCheckOut_Click(object sender, EventArgs e)
        {
            Product p1 = new Product();
            List<Cart> list = Repository.Repository.GetCart(ac.id);
            foreach (Cart c in list)
            {
                string pname = "";
                List<Product> product = Repository.Repository.getAllProducts();
                foreach (Product p in product)
                {
                    if (p.id == c.productid)
                    {
                        pname = p.name;
                        p1 = Repository.Repository.getProductByID(p.id);

                    }
                }
                int shopid = Repository.Repository.getShopId(c.productid);
                Repository.Repository.insertOrder(c.customerid, c.price, shopid);
                Repository.Repository.insertOrderDetails(c.productid, pname, c.price, c.quantity);
                Repository.Repository.updateShopQuantity(p1.id, c.quantity, p1.availabe_qty, p1.sold_qty);

            }
            this.Close();
        }
        private void btnClearCart_Click(object sender, EventArgs e)
        {
            Repository.Repository.clearCart(ac.id);
            List<Cart> list = Repository.Repository.GetCart(ac.id);
            dgvAddToCart.DataSource = list;
        }
    }
}
