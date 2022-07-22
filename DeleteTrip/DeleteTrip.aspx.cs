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
    public partial class DeleteTrip : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click2(object sender, EventArgs e)
        {
            OleDbConnection Con1 = new OleDbConnection();
            Con1.ConnectionString = @"provider=Microsoft.ACE.OLEDB.12.0; Data source="
                + Server.MapPath("") + "\\UserTbl.accdb";
            Con1.Open();
            string sqlstring = "SELECT * FROM TripTbl1 where MyCreator ='" + Session["User"] + "'";
            OleDbCommand Cmd = new OleDbCommand(sqlstring, Con1);
            OleDbDataReader Dr = Cmd.ExecuteReader();
            Dr.Read();
            if ((Dr.HasRows && TripName.Text == Dr["MyTripName"].ToString()) || Session["admin"] != null)
            {
                sqlstring = "DELETE FROM TripTbl1 where MyTripName ='" + TripName.Text + "'";
                Cmd = new OleDbCommand(sqlstring, Con1);
                Dr = Cmd.ExecuteReader();
                Dr.Read();
                System.Windows.Forms.MessageBox.Show("ביי ביי טיול");
            }
            else
                System.Windows.Forms.MessageBox.Show("לא נאפשר לך למחוק טיול זה");

            if (Session["admin"] != null)
                Response.Redirect("AdminOnly.aspx");
            else
                Response.Redirect("Home.aspx");
            Con1.Close();
        }
    }
}