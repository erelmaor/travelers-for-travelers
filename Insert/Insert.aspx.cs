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
    public partial class WebForm1 : System.Web.UI.Page
    {
        public partial class _Default : System.Web.UI.Page
        {
            protected void Page_Load3(object sender, EventArgs e)
            {
                //DateTime d1 = DateTime.Now;
                //DateTime d2 =DateTime.Parse("03/05/2015");

                //TimeSpan t = d1 - d2;
                //double NrOfDays = t.TotalDays;
                //Response.Write(NrOfDays.ToString());

            }
            protected void InsertButton_Click(object sender, EventArgs e)
            {
                OleDbConnection Con1 = new OleDbConnection();
                Con1.ConnectionString = @"Provider=Microsoft.ACE.OLEDB.12.0; Data source=" + Server.MapPath("") + "\\MyUsrTbl.accdb";
                Con1.Open();
                string sqlstring = "INSERT INTO MyUsrTbl(MyUser, MYPassword) values ('" + Tuser.Text + "','1234')";

                OleDbCommand cmd = new OleDbCommand(sqlstring, Con1);
                int y = 0;
                y = cmd.ExecuteNonQuery();
                Response.Write(y);


            }
        }
    }
    }
}