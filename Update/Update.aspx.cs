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
    public partial class Update : System.Web.UI.Page
    {
        protected void Page_Load4(object sender, EventArgs e)
        {
            // hi
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            OleDbConnection Con1 = new OleDbConnection();
            Con1.ConnectionString = @"provider=Microsoft.ACE.OLEDB.12.0; Data source=" + Server.MapPath("") + "\\UserTbl.accdb";
            Con1.Open();
            // string sqlstring = "select * from UserTbl1 where MyFirstName='" + "" + "' "; //Session[\"user\"]
            string sqlstring = "UPDATE UserTbl1 SET MyPassword='" + NewPassword.Text + "' WHERE MyUserName='" + Session["User"] + "'";
            OleDbCommand Cmd = new OleDbCommand(sqlstring, Con1);
            int y = 0;
            y = Cmd.ExecuteNonQuery();
            Con1.Close();
        }
        protected void Button1_Click2(object sender, EventArgs e)
        {
            OleDbConnection Con1 = new OleDbConnection();
            Con1.ConnectionString = @"provider=Microsoft.ACE.OLEDB.12.0; Data source=" + Server.MapPath("") + "\\UserTbl.accdb";
            Con1.Open();
            // string sqlstring = "select * from UserTbl1 where MyFirstName='" + "" + "' "; //Session[\"user\"]
            string sqlstring = "UPDATE UserTbl1 SET MyEmail='" + NewEmail.Text + "' WHERE MyUserName='" + Session["User"] + "'";
            OleDbCommand Cmd = new OleDbCommand(sqlstring, Con1);
            int y = 0;
            y = Cmd.ExecuteNonQuery();
            Con1.Close();
        }
        protected void Button1_Click3(object sender, EventArgs e)
        {
            OleDbConnection Con1 = new OleDbConnection();
            Con1.ConnectionString = @"provider=Microsoft.ACE.OLEDB.12.0; Data source=" + Server.MapPath("") + "\\UserTbl.accdb";
            Con1.Open();
            // string sqlstring = "select * from UserTbl1 where MyFirstName='" + "" + "' "; //Session[\"user\"]
            string sqlstring = "UPDATE UserTbl1 SET MyPhoneNumber='" + NewPhoneNumber.Text + "' WHERE MyUserName='" + Session["User"] + "'";
            OleDbCommand Cmd = new OleDbCommand(sqlstring, Con1);
            int y = 0;
            y = Cmd.ExecuteNonQuery();
            Con1.Close();
        }
        protected void Button1_Click4(object sender, EventArgs e)
        {
            OleDbConnection Con1 = new OleDbConnection();
            Con1.ConnectionString = @"provider=Microsoft.ACE.OLEDB.12.0; Data source=" + Server.MapPath("") + "\\UserTbl.accdb";
            Con1.Open();
            // string sqlstring = "select * from UserTbl1 where MyFirstName='" + "" + "' "; //Session[\"user\"]
            string sqlstring = "UPDATE UserTbl1 SET MyRegion='" + DropDownRegion.SelectedValue + "' WHERE MyUserName='" + Session["User"] + "'";
            OleDbCommand Cmd = new OleDbCommand(sqlstring, Con1);
            int y = 0;
            y = Cmd.ExecuteNonQuery();
            Con1.Close();
        }

        protected void ButtonHome(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}