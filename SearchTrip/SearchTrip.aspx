<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchTrip.aspx.cs" Inherits="ErelsProject.SearchTrip" %>

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
                <h1>חפש את שם הטיול על מנת להצטרף אליו</h1>

                <br /><br /><br /><br /><br /><br /><br /><br />

                <asp:TextBox ID="TripName" runat="server" placeholder="הכנס שם טיול" dir="rtl" Width="200px" Height="30px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TripName" ErrorMessage="לא הכנסת שם טיול" ForeColor="Red"></asp:RequiredFieldValidator> 
                <asp:Button ID="Button1" runat="server" Text="הצטרף" BackColor="White" ForeColor="Black" Font-Bold="true" OnClick="Button1_Click3" />
            <br /><br /><br /><br />
                <h3>לחזור לדף הבית</h3>
                <asp:Button Text="בית" runat="server" OnClick="Button1_Click4" CausesValidation="false"/>
            </center>
        </div>
    </form>
</body>
</html>
