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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click1(object sender, EventArgs e)
        {
            OleDbConnection Con1 = new OleDbConnection();
            Con1.ConnectionString = @"provider=Microsoft.ACE.OLEDB.12.0; Data source=" + Server.MapPath("") + "\\UserTbl.accdb";
            Con1.Open();
            string sqlstring = "SELECT * FROM UserTbl1 where MyPassword='" + UserPassword.Text + "' AND MyUserName='" + UserName.Text + "'";
            OleDbCommand Cmd = new OleDbCommand(sqlstring, Con1);
            OleDbDataReader Dr = Cmd.ExecuteReader();
            Dr.Read();

            /* int y = 0;
            y = Cmd.ExecuteNonQuery();
            Response.Write(y);
            */

            if (UserName.Text == "erelmaor" && UserPassword.Text == "123123")
            {
                Session["admin"] = Dr["MyUserName"];
                Session["User"] = Dr["MyUserName"];
                Response.Redirect("AdminOnly.aspx");
            }

            if (Dr.HasRows)
            {
                //Session["user"] = Dr["MyEmail"];
                // Response.Redirect("Welcome.aspx");
                Session["user"] = Dr["MyUserName"];
                Session["UserHobby1"] = Dr["MyHobby1"];
                Session["UserHobby2"] = Dr["MyHobby2"];
                Session["UserHobby3"] = Dr["MyHobby3"];
                Session["UserGender"] = Dr["MyGender"];
                Response.Redirect("Home.aspx");
                Con1.Close();
            }
            else
            {
                //  Response.Redirect("RegisterForm.aspx");
                System.Windows.Forms.MessageBox.Show("שם המשתמש או הסיסמא שגויים.");

            }
            Con1.Close();
        }

        protected void Button_To_Sign_Up(object sender, EventArgs e)
        {
            Response.Redirect("Signup.aspx");
        }
        protected void Button_Forgot(object sender, EventArgs e)
        {
            Response.Redirect("Nopermission.aspx");
        }
    }
}