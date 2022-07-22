<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Trips.aspx.cs" Inherits="ErelsProject.Trips" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center><h1>
            ברוכים הבאים ללוח הטיולים של האתר! פה תאכלו לראות את כל הטיולים ואם מעניין אתכם, תלחצו על אחד לעוד פרטים
                </h1>
            <br /><br /><br />
            <table border="1" dir="rtl">
                    <tr>
                    <td style="background-color:red; height: 30px;"><asp:Label ID="Label1" runat="server" Text="שם היוצר" ForeColor="White"></asp:Label> </td>
                    <td style="background-color:red; height: 30px;"><asp:Label ID="Label3" runat="server" Text="שם הטיול" ForeColor="White"></asp:Label> </td>
                    <td style="background-color:red; height: 30px;"><asp:Label ID="Label8" runat="server" Text="עיר" ForeColor="White"></asp:Label> </td>
                    <td style="background-color:red; height: 30px;"><asp:Label ID="Label2" runat="server" Text="כתובת" ForeColor="White"></asp:Label> </td>
                    <td style="background-color:red; height: 30px;"><asp:Label ID="Label4" runat="server" Text="יום" ForeColor="White"></asp:Label> </td>
                    <td style="background-color:red; height: 30px;"><asp:Label ID="Label5" runat="server" Text="חודש" ForeColor="White"></asp:Label> </td>
                    <td style="background-color:red; height: 30px;"><asp:Label ID="Label6" runat="server" Text="שעה" ForeColor="White"></asp:Label> </td>
                    <td style="background-color:red; height: 30px;"><asp:Label ID="Label7" runat="server" Text="זמן משוער" ForeColor="White"></asp:Label> </td>
                    <td style="background-color:red; height: 30px;"><asp:Label ID="Label13" runat="server" Text="רמת קושי" ForeColor="White"></asp:Label> </td>
                    <td style="background-color:red; height: 30px;"><asp:Label ID="Label14" runat="server" Text="מרחק בקילומטרים" ForeColor="White"></asp:Label> </td>
                    <td style="background-color:red; height: 30px;"><asp:Label ID="Label10" runat="server" Text="תחביבי היוצר" ForeColor="White"></asp:Label> </td>
                    <td style="background-color:red; height: 30px;"><asp:Label ID="Label11" runat="server" Text="" ForeColor="White"></asp:Label> </td>
                    <td style="background-color:red; height: 30px;"><asp:Label ID="Label9" runat="server" Text="" ForeColor="White"></asp:Label> </td>
                    </tr>
                <asp:Repeater ID="Repeater1" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td><%#DataBinder.Eval(Container.DataItem, "MyCreator") %></td>
                                    <td><%#DataBinder.Eval(Container.DataItem, "MyTripName") %></td>
                                    <td><%#DataBinder.Eval(Container.DataItem, "MyCity") %></td>
                                    <td><%#DataBinder.Eval(Container.DataItem, "MyAddress") %></td>
                                    <td><%#DataBinder.Eval(Container.DataItem, "MyDay") %></td>
                                    <td><%#DataBinder.Eval(Container.DataItem, "MyMonth") %></td>
                                    <td><%#DataBinder.Eval(Container.DataItem, "MyTime") %></td>
                                    <td><%#DataBinder.Eval(Container.DataItem, "MyEstTime") %></td>
                                    <td><%#DataBinder.Eval(Container.DataItem, "MyLevel") %></td>
                                    <td><%#DataBinder.Eval(Container.DataItem, "MyDistance") %></td>
                                    <td><%#DataBinder.Eval(Container.DataItem, "MyHobby1") %></td>
                                    <td><%#DataBinder.Eval(Container.DataItem, "MyHobby2") %></td>
                                    <td><%#DataBinder.Eval(Container.DataItem, "MyHobby3") %></td>

                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>

                                <asp:Repeater ID="Repeater2" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td><%#DataBinder.Eval(Container.DataItem, "MyUserName") %></td>

                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>

            </table>
                <br /><br />
            לדף הבית
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Go Back Home"></asp:Button>
        </center>
                </div>
    </form>
</body>
</html>
