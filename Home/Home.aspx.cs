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
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            OleDbConnection Con2 = new OleDbConnection();
            Con2.ConnectionString = @"provider=Microsoft.ACE.OLEDB.12.0; Data source=" + Server.MapPath("") + "\\UserTbl.accdb";
            Con2.Open();
            string sqlstring1 = "SELECT * FROM TripTbl1 where MyCreator='" + Session["User"].ToString() + "'";
            OleDbCommand Cmd1 = new OleDbCommand(sqlstring1, Con2);
            OleDbDataReader Dr1 = Cmd1.ExecuteReader();
            if (Dr1.HasRows)
            {

                Repeater1.DataSource = Dr1;
                Repeater1.DataBind();
            }

            OleDbConnection Con = new OleDbConnection();
            Con.ConnectionString = @"provider=Microsoft.ACE.OLEDB.12.0; Data source=" + Server.MapPath("") + "\\UserTbl.accdb";
            Con.Open();
            string sqlstring = "SELECT * FROM TripTbl2 WHERE MyUserName='" + Session["User"].ToString() + "'";
            OleDbCommand Cmd = new OleDbCommand(sqlstring, Con);
            OleDbDataReader Dr2 = Cmd.ExecuteReader();
            if (Dr2.HasRows)
            {
                Repeater2.DataSource = Dr2;
                Repeater2.DataBind();
            }

        }
        
        protected void ButtonUpdate(object sender, EventArgs e)
        {
            Response.Redirect("Update.aspx");
        }
        protected void ButtonDelete(object sender, EventArgs e)
        {
            Response.Redirect("Delete.aspx");
            /* OleDbConnection Con1 = new OleDbConnection();
            Con1.ConnectionString = @"provider=Microsoft.ACE.OLEDB.12.0; Data source=" + Server.MapPath("") + "\\UserTbl.accdb";
            Con1.Open();
            string sqlstring = "SELECT * FROM UserTbl1 where MyUserName ='" + Session["User"].ToString() + "'";
            OleDbCommand Cmd = new OleDbCommand(sqlstring, Con1);
            OleDbDataReader Dr = Cmd.ExecuteReader();
            Dr.Read();

            sqlstring = "DELETE FROM UserTbl1 where MyUserName ='" + Session["User"].ToString() + "'";
            Cmd = new OleDbCommand(sqlstring, Con1);
            Dr = Cmd.ExecuteReader();
            Dr.Read();
            Response.Redirect("SignUp.aspx");
            Con1.Close();
            */
        }
        /*
        protected void ButtonOldTrips(object sender, EventArgs e)
        {
            OleDbConnection Con1 = new OleDbConnection();
            Con1.ConnectionString = @"provider=Microsoft.ACE.OLEDB.12.0; Data source=" + Server.MapPath("") + "\\UserTbl.accdb";
            Con1.Open();
            string sqlstring = "SELECT * FROM TripTbl1 where MyUserName ='" + Session["User"].ToString() + "'";
            OleDbCommand Cmd = new OleDbCommand(sqlstring, Con1);
            OleDbDataReader Dr = Cmd.ExecuteReader();
            Dr.Read();
            if (Dr.HasRows)
            {
                
            }
            else
                System.Windows.Forms.MessageBox.Show("עדיין לא נכחת בטיול");
            Con1.Close();
        }
        */
        protected void ButtonLogOut(object sender, EventArgs e)
        {
            Session["User"] = null;
            Response.Redirect("Login.aspx");
            System.Windows.Forms.MessageBox.Show("מקווים שתחזור מהר!");
        }
        protected void ButtonNewTrip(object sender, EventArgs e)
        {
            Response.Redirect("AddTrip.aspx");
        }

        protected void Button_DeleteTrip(object sender, EventArgs e)
        {
            Response.Redirect("DeleteTrip.aspx");
        }

        protected void Button_Check(object sender, EventArgs e)
        {
            Response.Redirect("CheckDignity.aspx");
        }
    }
}