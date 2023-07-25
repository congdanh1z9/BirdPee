using DTO;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Internal;
using Repository;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using static System.Windows.Forms.VisualStyles.VisualStyleElement;

namespace BirdTradingPlatform_Group3_SE1737
{
    public partial class FrmAdmin : Form
    {
        public FrmAdmin()
        {
            InitializeComponent();
        }

        private void FrmAdmin_Load(object sender, EventArgs e)
        {
            List<Shop> shops = Repository.Repository.GetShops();
            dgvShop.DataSource = shops;
            List<Customer> customers = Repository.Repository.GetCustomers();
            dgvCustomer.DataSource = customers;


        }

        private void btnFindShop_Click(object sender, EventArgs e)
        {
            if (txtShop.Text.Equals(""))
            {
                MessageBox.Show("Please input info name shop", "BirdPee", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
            else
            {
                string name = txtShop.Text;
                List<Shop> shops = Repository.Repository.SearchShops(name);
                dgvShop.DataSource = shops;
            }

        }

        private void btnFindCustomer_Click(object sender, EventArgs e)
        {
            if (txtCustomer.Text.Equals(""))
            {
                MessageBox.Show("Please input info name's customer", "BirdPee", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
            else
            {
                string name = txtCustomer.Text;
                List<Customer> customers = Repository.Repository.SearchCustomers(name);
                dgvCustomer.DataSource = customers;
            }

        }

        private void btnLogOut_Click(object sender, EventArgs e)
        {
            this.Hide();
        }

        private void dgvShop_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void dgvCustomer_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {


        }

        private void btnBANSHOP_Click(object sender, EventArgs e)
        {
            if (txtShopID.Text.Equals(""))
            {

                MessageBox.Show("Please choose account you want ban");
            }
            else
            {
                int shopid = int.Parse(txtShopID.Text);
                Repository.Repository.BANANDUNBANSHOP("BAN", shopid);
                List<Shop> shops = Repository.Repository.GetShops();
                dgvShop.DataSource = shops;
            }

        }

        private void btnUNBANSHOP_Click(object sender, EventArgs e)
        {

            if (txtShopID.Text.Equals(""))
            {

                MessageBox.Show("Please choose account you want unban");
            }
            else
            {
                int shopid = int.Parse(txtShopID.Text);
                Repository.Repository.BANANDUNBANSHOP("UNBAN", shopid);
                List<Shop> shops = Repository.Repository.GetShops();
                dgvShop.DataSource = shops;
            }

        }

        private void btnBANCS_Click(object sender, EventArgs e)
        {

            if (txtcsid.Text.Equals(""))
            {
                MessageBox.Show("Please choose account you want ban");
            }
            else
            {
                int csid = int.Parse(txtcsid.Text);
                Repository.Repository.BANANDUNBANSHOP("BAN", csid);
                List<Customer> customers = Repository.Repository.GetCustomers();
                dgvCustomer.DataSource = customers;
            }

        }

        private void btnUNBANCS_Click(object sender, EventArgs e)
        {
            if (txtcsid.Text.Equals(""))
            {
                MessageBox.Show("Please choose account you want unban");
            }
            else
            {
                int csid = int.Parse(txtcsid.Text);
                Repository.Repository.BANANDUNBANSHOP("UNBAN", csid);
                List<Customer> customers = Repository.Repository.GetCustomers();
                dgvCustomer.DataSource = customers;
            }

        }

        private void dgvShop_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex >= 0)
            {
                DataGridViewRow dgvr = this.dgvShop.Rows[e.RowIndex];
                txtShopName.Text = dgvr.Cells[1].Value.ToString();
                txtShopID.Text = dgvr.Cells[0].Value.ToString();
                txtDescription.Text = dgvr.Cells[2].Value.ToString();

            }
        }

        private void dgvCustomer_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex >= 0)
            {
                DataGridViewRow dgvr = this.dgvCustomer.Rows[e.RowIndex];
                txtcsname.Text = dgvr.Cells[1].Value.ToString();
                txtcsid.Text = dgvr.Cells[0].Value.ToString();
                txtcsdescription.Text = dgvr.Cells[2].Value.ToString();

            }
        }

        private void dgvShop_CellContentClick_1(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void txtShop_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
