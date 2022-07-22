<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Nopermission.aspx.cs" Inherits="ErelsProject.Nopermission" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            You have no permission to access this page. Click the button to return to the home page <br />
            <asp:Button Text="Home" runat="server" onclick="Button_No_Permission"/>
        </div>
    </form>
</body>
</html>
