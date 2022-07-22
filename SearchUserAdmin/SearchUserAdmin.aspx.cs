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
    public partial class SearchUserAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click3(object sender, EventArgs e)
        {
            OleDbConnection Con1 = new OleDbConnection();
            Con1.ConnectionString = @"provider=Microsoft.ACE.OLEDB.12.0; Data source=" + Server.MapPath("") + "\\UserTbl.accdb";
            Con1.Open();
            string sqlstring = "SELECT * FROM UserTbl1 where MyUserName='" + UserName.Text + "'";
            OleDbCommand Cmd = new OleDbCommand(sqlstring, Con1);
            OleDbDataReader Dr = Cmd.ExecuteReader();
            Dr.Read();


            if (Dr.HasRows)
            {
                Session["UpdatedUser"] = UserName.Text;
                Response.Redirect("UpdateByAdmin.aspx");

                Con1.Close();
            }
            else
            {

                System.Windows.Forms.MessageBox.Show("לא קיים משתמש כזה");
            }
            Con1.Close();
        }

        protected void Button1_Click4(object sender, EventArgs e)
        {
            Response.Redirect("AdminOnly.aspx");
        }
    }
}