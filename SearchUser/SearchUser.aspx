<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchUser.aspx.cs" Inherits="ErelsProject.SearchUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div >
            <center>
                <br /><br />
                <h1>חפש לפי שם משתמש</h1>

                <br /><br /><br /><br /><br /><br /><br /><br />

                <asp:TextBox ID="UserName" runat="server" placeholder="הכנס שם משתמש" dir="rtl" Width="200px" Height="30px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="UserName" ErrorMessage="לא הכנסת שם משתמש" ForeColor="Red"></asp:RequiredFieldValidator> 
                <asp:Button ID="Button1" runat="server" Text="חפש" BackColor="White" ForeColor="Black" Font-Bold="true" OnClick="Button1_Click3" />
            <br /><br /><br /><br />
                <h3>לחזור לדף הבית</h3>
                <asp:Button Text="בית" runat="server" OnClick="Button1_Click4" CausesValidation="false"/>
            </center>
        </div>
    </form>
</body>
</html>
