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
    public partial class HomeVisitor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            OleDbConnection Con1 = new OleDbConnection();
            Con1.ConnectionString = @"provider=Microsoft.ACE.OLEDB.12.0; Data source=" + Server.MapPath("") + "\\UserTbl.accdb";
            Con1.Open();
            // string sqlstring = "select * from UserTbl1 where MyFirstName='" + "" + "' ";
            string sqlstring = "SELECT * FROM UserTbl1 WHERE MyUserName='" + Session["Visitor"].ToString() + "'";
            OleDbCommand Cmd = new OleDbCommand(sqlstring, Con1);
            OleDbDataReader Dr = Cmd.ExecuteReader();
            Dr.Read();

            Session["VisitorFirst"] = Dr["MyFirstName"];
            Session["VisitorLast"] = Dr["MyLastName"];
            Session["VisitorEmail"] = Dr["MyEmail"];
            Session["VisitorGender"] = Dr["MyGender"];
            Session["VisitorRegion"] = Dr["MyRegion"];
            // Session["VisitorBirth"] = Dr["MyGender"];
            Session["VisitorHobby1"] = Dr["MyHobby1"];
            Session["VisitorHobby2"] = Dr["MyHobby2"];
            Session["VisitorHobby3"] = Dr["MyHobby3"];
            // visitor old trips

            Con1.Close();

            OleDbConnection Con2 = new OleDbConnection();
            Con2.ConnectionString = @"provider=Microsoft.ACE.OLEDB.12.0; Data source=" + Server.MapPath("") + "\\UserTbl.accdb";
            Con2.Open();
            string sqlstring1 = "select * from TripTbl1  WHERE MyCreator='" + Session["Visitor"].ToString() + "'";
            OleDbCommand Cmd1 = new OleDbCommand(sqlstring1, Con2);
            OleDbDataReader Dr1 = Cmd1.ExecuteReader();
            Repeater1.DataSource = Dr1;
            Repeater1.DataBind();

        }

        protected void Button_Home(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}

    