using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ErelsProject
{
    public partial class LogOut : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ButtonLogOut(object sender, EventArgs e)
        {
            Session["user"] = null;
            Response.Redirect("Login.aspx");
            System.Windows.Forms.MessageBox.Show("מקווים שתחזור מהר!");
        }
        protected void ButtonHome(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}