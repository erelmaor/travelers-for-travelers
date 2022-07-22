 <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomeVisitor.aspx.cs" Inherits="ErelsProject.HomeVisitor" %>

<!DOCTYPE html>
<html>
    <head>
        <title></title>
        <link href="StyleSheeta1.css" rel="stylesheet" type="text/css" />
    </head>
<body>
    <form id="form1" runat="server">

    <div class="w3-container w3-teal">
        <h1 dir="rtl">
            <center>
            ברוכים הבאים לעמוד של חברכם
                <%= Session["Visitor"] %>
                !
                </center>
        </h1>
    </div>
    <div class="w3-container" dir="rtl">
        <h2> 
            <%= Session["VisitorFirst"] %>
            <%= Session["VisitorLast"] %>
        </h2>
        אימייל:
        <%= Session["VisitorEmail"] %>
        <br /><br />
        מין:
        <%= Session["VisitorGender"] %>
        <br /><br />
         אזור מגורים:
        <%= Session["VisitorRegion"] %>
        <br /><br />
        תחביבים:
        <%= Session["VisitorHobby1"] %> ,
        <%= Session["VisitorHobby2"] %> ,
        <%= Session["VisitorHobby3"] %> 
        <br /><br />
        טיולים:

        <div>
            <table border="1" dir="rtl" class="tabletable">
                    <tr>
                    <td style="background-color:red; height: 18px;"><asp:Label ID="Label1" runat="server" Text="כתובת" ForeColor="White"></asp:Label> </td>
                    <td style="background-color:red; height: 18px;"><asp:Label ID="Label3" runat="server" Text="יום" ForeColor="White"></asp:Label> </td>
                    <td style="background-color:red; height: 18px;"><asp:Label ID="Label4" runat="server" Text="חודש" ForeColor="White"></asp:Label> </td>
                    <td style="background-color:red; height: 18px;"><asp:Label ID="Label5" runat="server" Text="שעה" ForeColor="White"></asp:Label> </td>
                    <td style="background-color:red; height: 18px;"><asp:Label ID="Label6" runat="server" Text="זמן משוער" ForeColor="White"></asp:Label> </td>
                    </tr>
                <asp:Repeater ID="Repeater1" runat="server">
                            <ItemTemplate>
                                <tr>

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
        <br /><br /><br /><br />
        <asp:Button Text="לחזור לעמוד הבית" runat="server" OnClick="Button_Home"/>
    </div>
        </form>
</body>
</html>

