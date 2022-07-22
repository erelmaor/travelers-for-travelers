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
    public partial class AdminOnly : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button_to_sign_out(object sender, EventArgs e)
        {
            Session["admin"] = null;
            Response.Redirect("Login.aspx");
        }
        protected void Button_to_show_users(object sender, EventArgs e)
        {
            Response.Redirect("ShowUsers.aspx");
        }
        protected void Button_to_delete_users(object sender, EventArgs e)
        {
            Response.Redirect("Delete.aspx");
        }

        protected void Button_to_delete_trips(object sender, EventArgs e)
        {
            Response.Redirect("DeleteTrip.aspx");
        }
        protected void Button_to_update_others(object sender, EventArgs e)
        {
            Response.Redirect("SearchUserAdmin.aspx");
        }
    }
}