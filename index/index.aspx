<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="ErelsProject.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="index1.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="centered">
            אהלן! לחצו על מנת להתחבר או להיכנס
            <br /><br />
            <div class="social">
                <asp:Button Text="הירשמ/י" runat="server" OnClick="Button_to_signup" Font-Size="40px"/>
                &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
                <asp:Button Text="היכנס/י" runat="server" OnClick="Button_to_login" Font-Size="40px"/>
            </div>
        </div>
    </form>
</body>
</html>
