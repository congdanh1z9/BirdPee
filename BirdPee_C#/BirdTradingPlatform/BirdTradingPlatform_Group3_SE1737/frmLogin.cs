using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using DTO;
using Repository;
namespace BirdTradingPlatform_Group3_SE1737
{
    public partial class frmLogin : Form
    {

        public frmLogin()
        {
            InitializeComponent();
        }

        private void btnLogin_Click(object sender, EventArgs e)
        {
            var username = txtusername.Text;
            var pass = txtpass.Text;
            Account account = Repository.Repository.GetAccount(username, pass);
            if (account != null && account.status == 1)
            {
                txtusername.Text = string.Empty;
                txtpass.Text = string.Empty;
                if (Repository.Repository.Login(username, pass).Equals("AD"))
                {

                    FrmAdmin admin = new FrmAdmin();
                    admin.ShowDialog();
                }
                else if (Repository.Repository.Login(username, pass).Equals("SO"))
                {
                    frmShopOwner frmSO = new frmShopOwner(account);
                    frmSO.ShowDialog();

                }
                else if (Repository.Repository.Login(username, pass).Equals("CS"))
                {
                    frmProduct product = new frmProduct(account);
                    product.ShowDialog();
                }

            }
            else if (account != null && account.status == 0)
            {
                MessageBox.Show("Account is banned");
            }
            else
            {
                MessageBox.Show("Username or Password incorrect!");
            }

        }

        private void btnRegister_Click(object sender, EventArgs e)
        {
            frmRegister frmR = new frmRegister();
            frmR.ShowDialog();
            frmR.Owner = this;
        }

        private void frmLogin_Load(object sender, EventArgs e)
        {

        }

    }
}
