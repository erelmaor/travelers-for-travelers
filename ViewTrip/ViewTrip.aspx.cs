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
    public partial class ViewTrip : System.Web.UI.Page
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
                string sqlstring = "SELECT * FROM TripTbl1 where MyTripName='" + Session["MyTripName"].ToString() + "'";
                OleDbCommand Cmd = new OleDbCommand(sqlstring, Con);
                OleDbDataReader Dr = Cmd.ExecuteReader();
                Repeater1.DataSource = Dr;
                Repeater1.DataBind();


                OleDbConnection Con1 = new OleDbConnection();
                Con1.ConnectionString = @"provider=Microsoft.ACE.OLEDB.12.0; Data source=" + Server.MapPath("") + "\\UserTbl.accdb";
                Con1.Open();
                string sqlstring1 = "SELECT MyUserName FROM TripTbl2 where MyTripName='" + Session["MyTripName"].ToString() + "'";
                OleDbCommand Cmd1 = new OleDbCommand(sqlstring1, Con1);
                OleDbDataReader Dr1 = Cmd1.ExecuteReader();
                Repeater3.DataSource = Dr1;
                Repeater3.DataBind();

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

    }

}

