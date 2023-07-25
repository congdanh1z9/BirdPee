using DTO;
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
    public partial class frmOrderDetails : Form
    {
        int customerid = 0;
        public frmOrderDetails(int custid)
        {
            customerid = custid;
            InitializeComponent();
        }

        private void frmOrderDetails_Load(object sender, EventArgs e)
        {

            List<Order_Detail> listo = Repository.Repository.GetOrder_Details(customerid);
            dgvOrderHistory.DataSource = listo;
        }

        private void btnHomePage_Click(object sender, EventArgs e) => this.Hide();

        private void dgvOrderHistory_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }
    }
}
