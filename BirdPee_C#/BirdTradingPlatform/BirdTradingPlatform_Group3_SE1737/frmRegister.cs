using DAO;
using Microsoft.IdentityModel.Tokens;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Net;
using System.Text;
using System.Text.RegularExpressions; // Add this using statement for regex
using System.Threading.Tasks;
using System.Windows.Forms;

namespace BirdTradingPlatform_Group3_SE1737
{
    public partial class frmRegister : Form
    {
        public frmRegister()
        {
            InitializeComponent();
        }

        private void frmRegister_Load(object sender, EventArgs e)
        {

        }
        private string? GetSelectedGender()
        {
            if (rbmale.Checked)
            {
                return "Male";
            }
            else if (rbfemale.Checked)
            {
                return "Female";
            }
            else if (rbunk.Checked)
            {
                return "Unknown";
            }
            else
            {
                return null; // No gender selected
            }
        }
        private void btnRegister_Click(object sender, EventArgs e)
        {
            int flag = 0;
            if (string.IsNullOrEmpty(txtusername.Text) ||
                string.IsNullOrEmpty(txtpass.Text) ||
                string.IsNullOrEmpty(txtconfpass.Text) ||
                string.IsNullOrEmpty(txtname.Text) ||
                string.IsNullOrEmpty(txtPhone.Text))
            {
                MessageBox.Show("Please fill all information to register!", "BirdPee", MessageBoxButtons.OK, MessageBoxIcon.Warning);
            }
            else
            {
                string username = txtusername.Text;
                string password = txtpass.Text;
                string confpass = txtconfpass.Text;
                string name = txtname.Text;
                string phone = txtPhone.Text;

                // Check if the phone number contains only digits and has exactly 10 digits
                if (!Regex.IsMatch(phone, @"^\d{10}$"))
                {
                    MessageBox.Show("Phone must contain 10 numbers!", "BirdPee", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    flag = 1;
                }

                // Check if the username contains capital letters or special characters
                if (username.Any(c => char.IsUpper(c) || !char.IsLetterOrDigit(c)))
                {
                    MessageBox.Show("Username cannot have capital letters or special characters or space!", "BirdPee", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    flag = 1;
                }

                // Check if the name contains characters other than letters and spaces
                if (name.Any(c => !char.IsLetter(c) && !char.IsWhiteSpace(c)))
                {
                    MessageBox.Show("Name cannot have special characters!", "BirdPee", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    flag = 1;
                }

                // Check if the password and confirm password match
                if (password != confpass)
                {
                    MessageBox.Show("Password and Confirm Password do not match!", "BirdPee", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    flag = 1;
                }

                // Check if the username already exists using the BTP_DAO
                if (BTP_DAO.IsUsernameExists(username))
                {
                    MessageBox.Show("Username already exists!", "BirdPee", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    flag = 1;
                }

                // Check if the phone already exists using the BTP_DAO
                if (BTP_DAO.IsPhoneExists(phone))
                {
                    MessageBox.Show("This phone already exists!", "BirdPee", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    flag = 1;
                }

                // Get the selected gender
                string? gender = GetSelectedGender();
                if (string.IsNullOrEmpty(gender))
                {
                    MessageBox.Show("Please select a gender!", "BirdPee", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    flag = 1;
                }

                if (flag == 0 && Repository.Repository.checkRegister(username, password, confpass, name, phone, gender))
                {
                    Repository.Repository.createCustomer(name, phone, username, password, gender);
                    MessageBox.Show("Register successfully!", "BirdPee", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    this.Hide();
                }


            }
        }

        private void btnReLogin_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}