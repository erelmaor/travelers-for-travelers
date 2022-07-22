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
    public partial class SearchUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click3(object sender, EventArgs e)
        {
            OleDbConnection Con1 = new OleDbConnection();
            Con1.ConnectionString = @"provider=Microsoft.ACE.OLEDB.12.0; Data source=" + Server.MapPath("") + "\\UserTbl.accdb";
            Con1.Open();
            // string sqlstring = "select * from UserTbl1 where MyFirstName='" + "" + "' ";
            string sqlstring = "SELECT * FROM UserTbl1 where MyUserName='" + UserName.Text + "'";
            OleDbCommand Cmd = new OleDbCommand(sqlstring, Con1);
            OleDbDataReader Dr = Cmd.ExecuteReader();
            Dr.Read();

            /* int y = 0;
            y = Cmd.ExecuteNonQuery();
            Response.Write(y);
            */

            if (Dr.HasRows)
            {
                //Session["user"] = Dr["MyEmail"];
                // Response.Redirect("Welcome.aspx");
                //Response.Redirect("a1visitor.aspx");
                if (Session["User"].ToString() == UserName.Text)
                    Response.Redirect("a1.aspx");
                else
                {
                    Session["Visitor"] = UserName.Text;
                    Response.Redirect("HomeVisitor.aspx");
                }
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
            Response.Redirect("Home.aspx");
        }
        }
}