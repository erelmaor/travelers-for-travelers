using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ErelsProject
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button_to_signup(object sender, EventArgs e)
        {
            Response.Redirect("Signup.aspx");
        }

        protected void Button_to_login(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}