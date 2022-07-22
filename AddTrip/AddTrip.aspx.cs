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
    public partial class AddTrip : System.Web.UI.Page
    {
        protected void Page_Load3(object sender, EventArgs e)
        {
        }
        protected void Button1_Click3(object sender, EventArgs e)
        {
            OleDbConnection Con2 = new OleDbConnection();
            Con2.ConnectionString = @"provider=Microsoft.ACE.OLEDB.12.0; Data source=" + Server.MapPath("") + "\\UserTbl.accdb";
            Con2.Open();
            string sqlstring2 = "SELECT * FROM TripTbl1 where MyTripName='" + MyTripName.Text + "'";
            OleDbCommand Cmd2 = new OleDbCommand(sqlstring2, Con2);
            OleDbDataReader Dr2 = Cmd2.ExecuteReader();
            Dr2.Read();

            if (Dr2.HasRows)
            {
                System.Windows.Forms.MessageBox.Show("שם הטיול הזה תפוס!");
                Con2.Close();
            }

            OleDbConnection Con1 = new OleDbConnection();
            Con1.ConnectionString = @"Provider=Microsoft.ACE.OLEDB.12.0; Data source=" + Server.MapPath("") + "\\UserTbl.accdb";
            Con1.Open();

            if ((DropDownList1.SelectedValue == "select" || DropDownList2.SelectedValue == "select") || (DropDownList3.SelectedValue == "select" || DropDownList4.SelectedValue == "select") || MyCity.SelectedValue == "select")
            {
                System.Windows.Forms.MessageBox.Show("לא להשאיר שום דבר ריק!");
                Con1.Close();
            }

            else
            {
                string sqlstring = "INSERT INTO TripTbl1(MyCreator, MyTripName, MyCity, MyAddress, MyDay, MyMonth, MyTime, MyEstTime, MyLevel, MyDistance, MyComments, MyHobby1, MyHobby2, MyHobby3) values ('" + Session["User"].ToString() + "','" + MyTripName.Text + "','" + MyCity.SelectedValue + "','" + MyAddress.Text + "','" + DropDownList1.SelectedValue + "','" + DropDownList2.SelectedValue + "','" + DropDownList3.SelectedValue + "','" + DropDownList4.SelectedValue + "','" + TripLevel.SelectedValue + "','" + TripDistance.Text + "','" + TripComments.Text + "','" + Session["UserHobby1"].ToString() + "','" + Session["UserHobby2"].ToString() + "','" + Session["UserHobby3"].ToString() + "')";
                OleDbCommand cmd = new OleDbCommand(sqlstring, Con1);
                int y = 0;
                y = cmd.ExecuteNonQuery();
                Response.Redirect("Home.aspx");
                Con1.Close();
                Con2.Close();
            }
        }


        protected void Button_To_Home_Page(object sender, EventArgs e)
        {
            Response.Redirect("a1.aspx");
        }
        protected void Button_To_Sign_In(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}
