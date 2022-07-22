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
using System.ComponentModel.DataAnnotations;

namespace ErelsProject
{
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load3(object sender, EventArgs e)
        {
        }
        protected void Button1_Click3(object sender, EventArgs e)
        {
            OleDbConnection Con2 = new OleDbConnection();
            Con2.ConnectionString = @"provider=Microsoft.ACE.OLEDB.12.0; Data source=" + Server.MapPath("") + "\\UserTbl.accdb";
            Con2.Open();
            string sqlstring2 = "SELECT * FROM UserTbl1 where MyUserName='" + UserName.Text + "'";
            OleDbCommand Cmd2 = new OleDbCommand(sqlstring2, Con2);
            OleDbDataReader Dr2 = Cmd2.ExecuteReader();
            Dr2.Read();

            if (Dr2.HasRows)
            {
                System.Windows.Forms.MessageBox.Show("שם המשתמש הזה תפוס!");
                Con2.Close();
            }
            else
            {
                if ((DropDownHobby1.SelectedValue == DropDownHobby2.SelectedValue || DropDownHobby2.SelectedValue == DropDownHobby3.SelectedValue) || (DropDownHobby1.SelectedValue == DropDownHobby3.SelectedValue))
                {
                    System.Windows.Forms.MessageBox.Show("אין לבחור באותו תחביב מספר פעמים!");
                }
                if ((DropDownDay.SelectedValue == "select" || DropDownMonth.SelectedValue == "select") || (DropDownRegion.SelectedValue == "select" || DropDownYear.SelectedValue == "select") || (DropDownHobby2.SelectedValue == "select" || DropDownHobby1.SelectedValue == "select") || DropDownHobby3.SelectedValue == "select")
                {
                    System.Windows.Forms.MessageBox.Show("לא להשאיר שום דבר ריק!");
                }
                else
                {
                    OleDbConnection Con1 = new OleDbConnection();
                    Con1.ConnectionString = @"Provider=Microsoft.ACE.OLEDB.12.0; Data source=" + Server.MapPath("") + "\\UserTbl.accdb";
                    Con1.Open();
                    string sqlstring = "INSERT INTO UserTbl1(MyFirstName, MyLastName, MyUserName, MyEmail, MyPassword, MyPhoneNumber, MyDay, MyMonth, MyYear, MyGender, MyRegion, MyHobby1, MyHobby2, MyHobby3) values ('" + FirstName.Text + "','" + LastName.Text + "','" + UserName.Text + "','" + UserEmail.Text + "','" + UserPassword.Text + "','" + UserPhoneNumber.Text + "','" + DropDownDay.SelectedValue + "','" + DropDownMonth.SelectedValue + "','" + DropDownYear.SelectedValue + "','" + RadioGender.SelectedValue + "','" + DropDownRegion.SelectedValue + "','" + DropDownHobby1.SelectedValue + "','" + DropDownHobby2.SelectedValue + "','" + DropDownHobby3.SelectedValue + "')";
                    OleDbCommand cmd = new OleDbCommand(sqlstring, Con1);
                    int y = 0;
                    y = cmd.ExecuteNonQuery();
                    Response.Redirect("Login.aspx");
                    Con1.Close();

                }

                
                Con2.Close();
            }

        }
        protected void Button_To_Home_Page(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
        protected void Button_To_Sign_In(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        /*public bool IsValidEmailAddress(string UserEmail)
        {
            if (!string.IsNullOrEmpty(UserEmail) && new EmailAddressAttribute().IsValid(UserEmail))
                return true;
            else
                return false;
        }
        */

    }
}
