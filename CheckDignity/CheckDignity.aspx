<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CheckDignity.aspx.cs" Inherits="ErelsProject.CheckDignity" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
                <br /><br /><br /><br /><br /><br />
                הכנס תעודת זהות של המטייל
                <br />
                <asp:TextBox ID="id" runat="server" dir="rtl" type="Text"/>
                            <asp:RegularExpressionValidator ID="regexIDValid" runat="server" ValidationExpression="^\d{9}$" ControlToValidate="id" ErrorMessage="מספר תעודת זהות לא תקין" ForeColor="Red"></asp:RegularExpressionValidator> 
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5"  runat="server" ControlToValidate="id" ErrorMessage="יש למלא שדה זה" ForeColor="Red"></asp:RequiredFieldValidator> 


                <br /><br />
                הכנס אימייל של המטייל
                <br />
                <asp:TextBox ID="email" runat="server" dir="rtl" type="Text" />
                            <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="email" ErrorMessage="תבנית מייל שגויה"></asp:RegularExpressionValidator>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="email" ErrorMessage="יש למלא שדה זה" ForeColor="Red"></asp:RequiredFieldValidator> 

                <br /><br />
                <asp:Button Text="לחץ לחפש" runat="server" OnClick="Button1_Click" />
                <br /><br /><br />
                <asp:Button Text="לדף הבית" runat="server" OnClick="Button1_Click1" CausesValidation="false" />
            </center>
        </div>
    </form>
</body>
</html>
