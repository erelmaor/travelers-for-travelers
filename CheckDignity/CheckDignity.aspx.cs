using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.OleDb;

namespace ErelsProject
{
    public partial class CheckDignity : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Tripper.WebService1 webService1 = new Tripper.WebService1();
            bool IsKnown = webService1.IsTrustedTraveler(Convert.ToInt32(id.Text), email.ToString());
            if (IsKnown)
            {
                System.Windows.Forms.MessageBox.Show("המטייל הוכח כאמין");
            }
            else

                System.Windows.Forms.MessageBox.Show("אין פרטים על אמינות המטייל");
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
        }
}