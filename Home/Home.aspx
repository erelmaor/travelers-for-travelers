 <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ErelsProject.Home" %>

<!DOCTYPE html>
<html>
    <head>
        <title></title>
        <link href="StyleSheeta1.css" rel="stylesheet" type="text/css" />
    </head>
<body>
<!-- Sidebar -->
    <div class="w3-sidebar w3-bar-block w3-card" style="width:25%;right:0;">
  <h3 class="w3-bar-item"> </h3>
        <center>
            <a href="#" class="w3-bar-item w3-button">בית</a>
            <a href="Trips.aspx" class="w3-bar-item w3-button">לוח טיולים</a>
            <a href="AddTrip.aspx" class="w3-bar-item w3-button">פרסם טיול</a>
            <a href="SearchUser.aspx" class="w3-bar-item w3-button">חפש שם משתמש</a>
            <a href="SearchTrip.aspx" class="w3-bar-item w3-button">חפש טיול לפי שם</a>
            <a href="LogOut.aspx" class="w3-bar-item w3-button">התנתק</a>
        </center>
    </div>

<!-- Page Content -->
    <form id="form1" runat="server">
<div style="margin-right:25%">

    <div class="w3-container w3-teal">
        <h1 dir="rtl">
            אהלן  <%= Session["User"] %>!
        </h1>
    </div>
    <br /><br />
    <div class="w3-container" dir="rtl">
        לחץ 
        <asp:Button Text="כאן" runat="server" OnClick="ButtonUpdate"/>
        כדי לעדכן את פרטי המשתמש שלך
        <br /><br />
        לחץ 
        <asp:Button Text="כאן" runat="server" OnClick="ButtonDelete"/>
        כדי למחוק משתמש                                   
        <br /><br />
        לחץ
        <asp:Button Text="כאן" runat="server" OnClick="ButtonNewTrip"/>
        כדי לפרסם טיול חדש
        <br /><br />
        לחץ
        <asp:Button Text="כאן" runat="server" OnClick="ButtonLogOut"/>
        כדי להתנתק
        <br /><br />
        טיולים ישנים שיצרת
                <div>
            <table border="1" dir="rtl" class="tabletable">
                    <tr>
                    <td style="background-color:red; height: 18px;"><asp:Label ID="Label7" runat="server" Text="שם" ForeColor="White"></asp:Label> </td>
                    <td style="background-color:red; height: 18px;"><asp:Label ID="Label1" runat="server" Text="כתובת" ForeColor="White"></asp:Label> </td>
                    <td style="background-color:red; height: 18px;"><asp:Label ID="Label3" runat="server" Text="יום" ForeColor="White"></asp:Label> </td>
                    <td style="background-color:red; height: 18px;"><asp:Label ID="Label4" runat="server" Text="חודש" ForeColor="White"></asp:Label> </td>
                    <td style="background-color:red; height: 18px;"><asp:Label ID="Label5" runat="server" Text="שעה" ForeColor="White"></asp:Label> </td>
                    <td style="background-color:red; height: 18px;"><asp:Label ID="Label6" runat="server" Text="זמן משוער" ForeColor="White"></asp:Label> </td>
                    </tr>
                <asp:Repeater ID="Repeater1" runat="server">
                            <ItemTemplate>
                                <tr>

                                    <td><%#DataBinder.Eval(Container.DataItem, "MyTripName") %></td>
                                    <td><%#DataBinder.Eval(Container.DataItem, "MyAddress") %></td>
                                    <td><%#DataBinder.Eval(Container.DataItem, "MyDay") %></td>
                                    <td><%#DataBinder.Eval(Container.DataItem, "MyMonth") %></td>
                                    <td><%#DataBinder.Eval(Container.DataItem, "MyTime") %></td>
                                    <td><%#DataBinder.Eval(Container.DataItem, "MyEstTime") %></td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
            </table>
        </div>
        
                טיולים ישנים שהצטרפת
                <div>
            <table border="1" dir="rtl" class="tabletable">
                    <tr>
                    <td style="background-color:red; height: 18px;"><asp:Label ID="Label2" runat="server" Text="שם הטיול" ForeColor="White"></asp:Label> </td>
                    </tr>
                <asp:Repeater ID="Repeater2" runat="server">
                            <ItemTemplate>
                                <tr>

                                    <td><%#DataBinder.Eval(Container.DataItem, "MyTripName") %></td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
            </table>
                    לעוד מידע לגבי טיולים יש לחפש את שם הטיול
        </div>
        <br /><br /><br />
        
        לחץ על מנת למחוק טיול שיצרת                               
        <br />
        <asp:Button Text="כאן" runat="server" OnClick="Button_DeleteTrip"/>


        <br /><br /><br />
        לחץ על מנת לוודא אמינות מטייל                               
        <br />
        <asp:Button Text="כאן" runat="server" OnClick="Button_Check"/>

        <br /><br /><br />
        הגעת לסוף
    </div>

</div>
      </form>
</body>
</html>

