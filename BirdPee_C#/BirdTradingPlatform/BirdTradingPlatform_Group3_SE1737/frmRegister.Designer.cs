namespace BirdTradingPlatform_Group3_SE1737
{
    partial class frmRegister
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
            label1 = new System.Windows.Forms.Label();
            label2 = new System.Windows.Forms.Label();
            label3 = new System.Windows.Forms.Label();
            label4 = new System.Windows.Forms.Label();
            label5 = new System.Windows.Forms.Label();
            btnRegister = new System.Windows.Forms.Button();
            txtusername = new System.Windows.Forms.TextBox();
            txtpass = new System.Windows.Forms.TextBox();
            txtconfpass = new System.Windows.Forms.TextBox();
            txtname = new System.Windows.Forms.TextBox();
            label6 = new System.Windows.Forms.Label();
            btnReLogin = new System.Windows.Forms.Button();
            lbphone = new System.Windows.Forms.Label();
            txtPhone = new System.Windows.Forms.TextBox();
            lbgender = new System.Windows.Forms.Label();
            rbmale = new System.Windows.Forms.RadioButton();
            rbfemale = new System.Windows.Forms.RadioButton();
            rbunk = new System.Windows.Forms.RadioButton();
            SuspendLayout();
            // 
            // label1
            // 
            label1.AutoSize = true;
            label1.Location = new System.Drawing.Point(107, 49);
            label1.Name = "label1";
            label1.Size = new System.Drawing.Size(75, 20);
            label1.TabIndex = 0;
            label1.Text = "Username";
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Location = new System.Drawing.Point(107, 103);
            label2.Name = "label2";
            label2.Size = new System.Drawing.Size(70, 20);
            label2.TabIndex = 1;
            label2.Text = "Password";
            // 
            // label3
            // 
            label3.AutoSize = true;
            label3.Location = new System.Drawing.Point(107, 155);
            label3.Name = "label3";
            label3.Size = new System.Drawing.Size(93, 20);
            label3.TabIndex = 2;
            label3.Text = "Confirm Pass";
            // 
            // label4
            // 
            label4.AutoSize = true;
            label4.Location = new System.Drawing.Point(107, 204);
            label4.Name = "label4";
            label4.Size = new System.Drawing.Size(49, 20);
            label4.TabIndex = 3;
            label4.Text = "Name";
            // 
            // label5
            // 
            label5.AutoSize = true;
            label5.Location = new System.Drawing.Point(399, 239);
            label5.Name = "label5";
            label5.Size = new System.Drawing.Size(0, 20);
            label5.TabIndex = 4;
            // 
            // btnRegister
            // 
            btnRegister.Location = new System.Drawing.Point(206, 364);
            btnRegister.Name = "btnRegister";
            btnRegister.Size = new System.Drawing.Size(106, 38);
            btnRegister.TabIndex = 5;
            btnRegister.Text = "Register";
            btnRegister.UseVisualStyleBackColor = true;
            btnRegister.Click += btnRegister_Click;
            // 
            // txtusername
            // 
            txtusername.Location = new System.Drawing.Point(206, 49);
            txtusername.Name = "txtusername";
            txtusername.Size = new System.Drawing.Size(286, 27);
            txtusername.TabIndex = 6;
            // 
            // txtpass
            // 
            txtpass.Location = new System.Drawing.Point(206, 103);
            txtpass.Name = "txtpass";
            txtpass.PasswordChar = '*';
            txtpass.Size = new System.Drawing.Size(286, 27);
            txtpass.TabIndex = 7;
            // 
            // txtconfpass
            // 
            txtconfpass.Location = new System.Drawing.Point(206, 155);
            txtconfpass.Name = "txtconfpass";
            txtconfpass.PasswordChar = '*';
            txtconfpass.Size = new System.Drawing.Size(286, 27);
            txtconfpass.TabIndex = 8;
            // 
            // txtname
            // 
            txtname.Location = new System.Drawing.Point(206, 209);
            txtname.Name = "txtname";
            txtname.Size = new System.Drawing.Size(286, 27);
            txtname.TabIndex = 9;
            // 
            // label6
            // 
            label6.AutoSize = true;
            label6.Location = new System.Drawing.Point(117, 268);
            label6.Name = "label6";
            label6.Size = new System.Drawing.Size(0, 20);
            label6.TabIndex = 10;
            // 
            // btnReLogin
            // 
            btnReLogin.Location = new System.Drawing.Point(386, 364);
            btnReLogin.Name = "btnReLogin";
            btnReLogin.Size = new System.Drawing.Size(106, 38);
            btnReLogin.TabIndex = 11;
            btnReLogin.Text = "Return Login";
            btnReLogin.UseVisualStyleBackColor = true;
            btnReLogin.Click += btnReLogin_Click;
            // 
            // lbphone
            // 
            lbphone.AutoSize = true;
            lbphone.Location = new System.Drawing.Point(107, 258);
            lbphone.Name = "lbphone";
            lbphone.Size = new System.Drawing.Size(50, 20);
            lbphone.TabIndex = 12;
            lbphone.Text = "Phone";
            // 
            // txtPhone
            // 
            txtPhone.Location = new System.Drawing.Point(206, 258);
            txtPhone.Name = "txtPhone";
            txtPhone.Size = new System.Drawing.Size(286, 27);
            txtPhone.TabIndex = 13;
            // 
            // lbgender
            // 
            lbgender.AutoSize = true;
            lbgender.Location = new System.Drawing.Point(107, 305);
            lbgender.Name = "lbgender";
            lbgender.Size = new System.Drawing.Size(57, 20);
            lbgender.TabIndex = 14;
            lbgender.Text = "Gender";
            // 
            // rbmale
            // 
            rbmale.AutoSize = true;
            rbmale.Location = new System.Drawing.Point(206, 305);
            rbmale.Name = "rbmale";
            rbmale.Size = new System.Drawing.Size(63, 24);
            rbmale.TabIndex = 15;
            rbmale.TabStop = true;
            rbmale.Text = "Male";
            rbmale.UseVisualStyleBackColor = true;
            // 
            // rbfemale
            // 
            rbfemale.AutoSize = true;
            rbfemale.Location = new System.Drawing.Point(284, 305);
            rbfemale.Name = "rbfemale";
            rbfemale.Size = new System.Drawing.Size(78, 24);
            rbfemale.TabIndex = 16;
            rbfemale.TabStop = true;
            rbfemale.Text = "Female";
            rbfemale.UseVisualStyleBackColor = true;
            // 
            // rbunk
            // 
            rbunk.AutoSize = true;
            rbunk.Location = new System.Drawing.Point(368, 305);
            rbunk.Name = "rbunk";
            rbunk.Size = new System.Drawing.Size(205, 24);
            rbunk.TabIndex = 17;
            rbunk.TabStop = true;
            rbunk.Text = "Unknown/Prefer not to say";
            rbunk.UseVisualStyleBackColor = true;
            // 
            // frmRegister
            // 
            AutoScaleDimensions = new System.Drawing.SizeF(8F, 20F);
            AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            ClientSize = new System.Drawing.Size(654, 450);
            Controls.Add(rbunk);
            Controls.Add(rbfemale);
            Controls.Add(rbmale);
            Controls.Add(lbgender);
            Controls.Add(txtPhone);
            Controls.Add(lbphone);
            Controls.Add(btnReLogin);
            Controls.Add(label6);
            Controls.Add(txtname);
            Controls.Add(txtconfpass);
            Controls.Add(txtpass);
            Controls.Add(txtusername);
            Controls.Add(btnRegister);
            Controls.Add(label5);
            Controls.Add(label4);
            Controls.Add(label3);
            Controls.Add(label2);
            Controls.Add(label1);
            MaximizeBox = false;
            Name = "frmRegister";
            StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            Text = "frmRegister";
            Load += frmRegister_Load;
            ResumeLayout(false);
            PerformLayout();
        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Button btnRegister;
        private System.Windows.Forms.TextBox txtusername;
        private System.Windows.Forms.TextBox txtpass;
        private System.Windows.Forms.TextBox txtconfpass;
        private System.Windows.Forms.TextBox txtname;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Button btnReLogin;
        private System.Windows.Forms.Label lbphone;
        private System.Windows.Forms.TextBox txtPhone;
        private System.Windows.Forms.Label lbgender;
        private System.Windows.Forms.RadioButton rbmale;
        private System.Windows.Forms.RadioButton rbfemale;
        private System.Windows.Forms.RadioButton rbunk;
    }
}