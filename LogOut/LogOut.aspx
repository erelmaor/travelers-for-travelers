<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogOut.aspx.cs" Inherits="ErelsProject.LogOut" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div dir="rtl">
            <center>
                    <br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
        <asp:Button Text="לחץ כאן כדי להתנתק" runat="server" OnClick="ButtonLogOut" Width="200px" Height="30px"/>

        <br /><br /><br /><br />
            <asp:Button Text="לחץ כאן כדי לחזור לעמוד הבית" runat="server" OnClick="ButtonHome" Width="200px" Height="30px"/>

                </center>
        </div>
    </form>
</body>
</html>
