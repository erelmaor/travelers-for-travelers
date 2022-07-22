<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminOnly.aspx.cs" Inherits="ErelsProject.AdminOnly" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div dir="rtl">
            <center>
                <br /><br />
            מה קורה אדמין ימלך
                        <br /><br /> 
            <br /> אתה יכול להתנתק
            <asp:Button Text="התנתקות" runat="server" OnClick="Button_to_sign_out" />
                <br />
            <br /> הצג את כל המשתמשים באתר
            <asp:Button Text="הצג" runat="server" OnClick="Button_to_show_users" />
                <br />
            <br /> אתה יכול לעדכן פרטים של משתמשים אחרים
            <asp:Button Text="עדכן" runat="server" OnClick="Button_to_update_others" />
                <br />
                <br /> אתה יכול למחוק טיולים שנוצרו על ידי משתמשים אחרים
            <asp:Button Text="מחק" runat="server" OnClick="Button_to_delete_trips" />
                <br />
            <br /> מחק משתמש
            <asp:Button Text="מחק" runat="server" OnClick="Button_to_delete_users" />
</center>
        </div>
    </form>
</body>
</html>
