using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using ServiceReference1;
using WinFormsApp1;

namespace WinFormsApp1
{
    public partial class Form1 : Form
    {

        ServiceReference1.WebService1SoapClient obj = new WebService1SoapClient();
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(textBox1.Text);
            int email = Convert.ToInt32(textBox2.Text);
            bool flag = IsTrustedTraveler(id, email);
            MessageBox.Show("the traveler's dignity is " + flag);
            
        }

        private void Form1_Load(object sender, EventArgs e)
        {
        }
    }
}
