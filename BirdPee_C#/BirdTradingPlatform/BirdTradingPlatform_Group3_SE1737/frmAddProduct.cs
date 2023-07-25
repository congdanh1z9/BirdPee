using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace BirdTradingPlatform_Group3_SE1737
{
    public partial class frmAddProduct : Form
    {
        int id = 0;
        public frmAddProduct(int accid)
        {
            InitializeComponent();
            id = accid;
        }

        private void btnSave_Click(object sender, EventArgs e)
        {
            if (txtPname.Text.Trim() == "" || txtAQty.Text.Trim() == "" || txtDescription.Text.Trim() == "" || txtCateId.Text.Trim() == "" || txtPrice.Text.Trim() == "")
            {
                MessageBox.Show("Please fill all input fields.", "BirdPee", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            else
            {
                int AQty;
                float Price;
                int cateid;

                if (!int.TryParse(txtAQty.Text, out AQty) || !float.TryParse(txtPrice.Text, out Price) || !int.TryParse(txtCateId.Text, out cateid))
                {
                    MessageBox.Show("Please enter valid numeric values for Quantity, Price, and Category ID.", "BirdPee", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
                else if (AQty < 0 || Price < 0)
                {
                    MessageBox.Show("Please input quantity and price greater than 0.", "BirdPee", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
                else if (System.Text.RegularExpressions.Regex.IsMatch(txtPname.Text, "^[0-9]+$"))
                {
                    MessageBox.Show("Product name cannot contain only numbers.", "BirdPee", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
                else
                {
                    string name = txtPname.Text;
                    string desc = txtDescription.Text;
                    int shopid = id;

                    if (cateid < 1 || cateid > 3)
                    {
                        MessageBox.Show("Category ID can only be 1 for Bird, 2 for Food, or 3 for Bage.", "BirdPee", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    }
                    else
                    {
                        Repository.Repository.insertNewProductByShop(name, AQty, 0, desc, cateid, shopid, Price);
                        this.Refresh();
                        this.Hide();
                    }
                }
            }
        }

        private void btnClose_Click(object sender, EventArgs e)
        {
            this.Hide();
        }
    }
}
