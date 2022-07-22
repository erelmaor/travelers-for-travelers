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
    public partial class Delete : System.Web.UI.Page
    {
        protected void Page_Load2(object sender, EventArgs e)
        {

        }

        protected void Button1_Click2(object sender, EventArgs e)
        {

            if (UserName.Text == Session["User"].ToString() || Session["admin"] != null)
            {
                OleDbConnection Con4 = new OleDbConnection();
                Con4.ConnectionString = @"provider=Microsoft.ACE.OLEDB.12.0; Data source=" + Server.MapPath("") + "\\UserTbl.accdb";
                Con4.Open();
                string sqlstring4 = "SELECT * FROM TripTbl2 where MyUserName ='" + UserName.Text + "'";
                OleDbCommand Cmd4 = new OleDbCommand(sqlstring4, Con4);
                OleDbDataReader Dr4 = Cmd4.ExecuteReader();
                Dr4.Read();
                if (Dr4.HasRows)
                {
                    OleDbConnection Con5 = new OleDbConnection();
                    Con5.ConnectionString = @"provider=Microsoft.ACE.OLEDB.12.0; Data source=" + Server.MapPath("") + "\\UserTbl.accdb";
                    Con5.Open();
                    string sqlstring5 = "DELETE FROM TripTbl2 where MyUserName ='" + UserName.Text + "'";
                    OleDbCommand Cmd5 = new OleDbCommand(sqlstring5, Con5);
                    OleDbDataReader Dr5 = Cmd5.ExecuteReader();
                    Dr5.Read();

                    Con4.Close();
                    Con5.Close();
                }

                int y = 0;

                OleDbConnection Con7 = new OleDbConnection();
                Con7.ConnectionString = @"provider=Microsoft.ACE.OLEDB.12.0; Data source=" + Server.MapPath("") + "\\UserTbl.accdb";
                Con7.Open();
                string sqlstring7 = "SELECT * FROM TripTbl1 where MyCreator ='" + UserName.Text + "'";
                OleDbCommand Cmd7 = new OleDbCommand(sqlstring7, Con7);
                OleDbDataReader Dr7 = Cmd7.ExecuteReader();
                Dr7.Read();
                if (Dr7.HasRows)
                {
                    OleDbConnection Con6 = new OleDbConnection();
                    Con6.ConnectionString = @"provider=Microsoft.ACE.OLEDB.12.0; Data source=" + Server.MapPath("") + "\\UserTbl.accdb";
                    Con6.Open();
                    string sqlstring6 = "DELETE FROM TripTbl1 where MyCreator ='" + UserName.Text + "'";
                    OleDbCommand Cmd6 = new OleDbCommand(sqlstring6, Con6);
                    OleDbDataReader Dr6 = Cmd6.ExecuteReader();
                    Dr6.Read();
                }

                int x = 0;

                OleDbConnection Con1 = new OleDbConnection();
                Con1.ConnectionString = @"provider=Microsoft.ACE.OLEDB.12.0; Data source=" + Server.MapPath("") + "\\UserTbl.accdb";
                Con1.Open();
                string sqlstring = "DELETE FROM UserTbl1 where MyUserName ='" + UserName.Text + "'";
                OleDbCommand Cmd = new OleDbCommand(sqlstring, Con1);
                OleDbDataReader Dr = Cmd.ExecuteReader();
                Dr.Read();

                System.Windows.Forms.MessageBox.Show("משתמש נמחק בהצלחה!");
                Response.Redirect("Login.aspx");
            }

            else
            {
                if (Session["admin"] != null)
                    Response.Redirect("AdminOnly.aspx");
                else
                {
                    System.Windows.Forms.MessageBox.Show("לא ניתן לך למחוק את המשתמש הזה!");
                    Response.Redirect("Home.aspx");
                }
            }
        }
    }
}