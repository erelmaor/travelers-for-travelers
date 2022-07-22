<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Update.aspx.cs" Inherits="ErelsProject.Update" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div dir="rtl">
            <br /><br /><br /><br /><br /><br /><br /><br />
           <center>
               להחליף סיסמא <br />
            <asp:TextBox ID="NewPassword" runat="server"></asp:TextBox>
            <asp:Button ID="Button2" runat="server" Text="עדכן" OnClick="Button1_Click1" />
               <br />
               להחליף אימייל <br />
               <asp:TextBox ID="NewEmail" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="עדכן" OnClick="Button1_Click2" />
               <br />
               להחליף מספר טלפון <br />
               <asp:TextBox ID="NewPhoneNumber" runat="server"></asp:TextBox>
            <asp:Button ID="Button3" runat="server" Text="עדכן" OnClick="Button1_Click3" />
               <br />
               להחליף אזור מגורים <br />
                                       <asp:DropDownList ID="DropDownRegion" runat="server">  
                            <asp:ListItem Text="בחר אזור מגורים" Value="" Selected="True"></asp:ListItem>  
                            <asp:ListItem Text="צפון" Value="צפון"></asp:ListItem>  
                            <asp:ListItem Text="מרכז" Value="מרכז"></asp:ListItem>  
                            <asp:ListItem Text="דרום" Value="דרום"></asp:ListItem>  
                        </asp:DropDownList>   
         
            <asp:Button ID="Button4" runat="server" Text="עדכן" OnClick="Button1_Click4" />
               <br /><br /><br />
               לחזור לדף הבית <br />
               <asp:Button Text="לחץ" runat="server" OnClick="ButtonHome" />
           </center>
        </div>
    </form>
</body>
</html>
