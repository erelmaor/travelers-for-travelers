<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Delete.aspx.cs" Inherits="ErelsProject.Delete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br /><br /><br /><br /><br /><br />
            <center>
            תוודא את שם המשתמש שאתה מעוניין למחוק!<br />
            <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" Text="מחק" OnClick="Button1_Click2" />
        </center>
                </div>
    </form>
</body>
</html>
