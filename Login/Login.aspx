<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ErelsProject.Login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Login</title>
    <link href="StylesheetLogin.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <div class="background">
        <div class="shape"></div>
        <div class="shape"></div>
    </div>
    <form id="form1" runat="server" dir="rtl">
        <h3>ברוכים השבים</h3>
        <asp:TextBox ID="UserName" runat="server" placeholder="הכנס שם משתמש" dir="rtl"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UserName" ErrorMessage="יש למלא שדה זה" ForeColor="Red"></asp:RequiredFieldValidator>  
            


        <asp:TextBox ID="UserPassword" type="Password" runat="server" placeholder="הכנס סיסמא" dir="rtl"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="UserPassword" ErrorMessage="יש למלא שדה זה" ForeColor="Red"></asp:RequiredFieldValidator>  
            

        <br />
        <asp:Button ID="Button4" runat="server" Text="היכנס/י" BackColor="White" ForeColor="Black" Font-Bold="true" OnClick="Button1_Click1"/>
        <div class="social">
              <asp:Button Text="הרשמה" runat="server" OnClick="Button_To_Sign_Up" CausesValidation="false" /> 
            </div>
        
        
    </form>
</body>
</html>

