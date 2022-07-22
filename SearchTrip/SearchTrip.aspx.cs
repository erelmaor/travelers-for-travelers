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
    public partial class SearchTrip : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click3(object sender, EventArgs e)
        {
            OleDbConnection Con1 = new OleDbConnection();
            Con1.ConnectionString = @"provider=Microsoft.ACE.OLEDB.12.0; Data source=" + Server.MapPath("") + "\\UserTbl.accdb";
            Con1.Open();
            string sqlstring = "SELECT * FROM TripTbl1 where MyTripName='" + TripName.Text + "'";
            OleDbCommand Cmd = new OleDbCommand(sqlstring, Con1);
            OleDbDataReader Dr = Cmd.ExecuteReader();
            Dr.Read();

            if (!Dr.HasRows)
            {
                System.Windows.Forms.MessageBox.Show("no trip found");
                Con1.Close();
            }
            else
            {
                Session["MyTripName"] = TripName.Text;
                // Con1.Close();
                OleDbConnection Con3 = new OleDbConnection();
                Con3.ConnectionString = @"provider=Microsoft.ACE.OLEDB.12.0; Data source=" + Server.MapPath("") + "\\UserTbl.accdb";
                Con3.Open();
                string sqlstring3 = "SELECT MyUserName FROM TripTbl2 WHERE MyTripName='" + TripName.Text + "'";
                OleDbCommand Cmd3 = new OleDbCommand(sqlstring3, Con3);
                OleDbDataReader Dr3 = Cmd3.ExecuteReader();
                Dr3.Read();

                if (Dr3.HasRows && Dr3["MyUserName"].ToString() == Session["User"].ToString())
                {
                    System.Windows.Forms.MessageBox.Show("לא ניתן להצטרף לאותו טיול פעמיים!");
                    Con3.Close();
                }
                else
                {

                    OleDbConnection Con = new OleDbConnection();
                    Con.ConnectionString = @"Provider=Microsoft.ACE.OLEDB.12.0; Data source=" + Server.MapPath("") + "\\UserTbl.accdb";
                    Con.Open();
                    string sqlstring2 = "INSERT INTO TripTbl2(MyUserName, MyTripName) values ('" + Session["User"].ToString() + "','" + TripName.Text + "')";
                    OleDbCommand cmd2 = new OleDbCommand(sqlstring2, Con);
                    int y = 0;
                    y = cmd2.ExecuteNonQuery();
                    Con.Close();
                    Response.Redirect("ViewTrip.aspx");
                    Con3.Close();
                }
            }
        }

        protected void Button1_Click4(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}