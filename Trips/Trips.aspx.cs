using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.OleDb;

namespace ErelsProject
{
    public partial class Trips : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*if (Session["admin"] == null)
                Response.Redirect("nopermission.aspx");
            */
            if (!IsPostBack)
            {
                OleDbConnection Con = new OleDbConnection();
                Con.ConnectionString = @"provider=Microsoft.ACE.OLEDB.12.0; Data source=" + Server.MapPath("") + "\\UserTbl.accdb";
                Con.Open();
                string sqlstring = "select * from TripTbl1";
                OleDbCommand Cmd = new OleDbCommand(sqlstring, Con);
                OleDbDataReader Dr = Cmd.ExecuteReader();
                Repeater1.DataSource = Dr;
                Repeater1.DataBind();

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        protected void Button_Add(object sender, EventArgs e)
        {
            OleDbConnection Con2 = new OleDbConnection();
            Con2.ConnectionString = @"Provider=Microsoft.ACE.OLEDB.12.0; Data source=" + Server.MapPath("") + "\\UserTbl.accdb";
            Con2.Open();
            string sqlstring2 = "INSERT INTO TripTbl2(MyUserName, MyTripName) values ('" + Session["User"].ToString() + "','" + Session["MyTripName"].ToString() + "')";
            OleDbCommand cmd2 = new OleDbCommand(sqlstring2, Con2);
            int y2 = 0;
            y2 = cmd2.ExecuteNonQuery();
            Con2.Close();
            
        }
    }

}
    
