<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowUsers.aspx.cs" Inherits="ErelsProject.ShowUsers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <center>
        <div>
            <table border="1">
                    <tr>
                    <td style="background-color:red; height: 18px;"><asp:Label ID="Label1" runat="server" Text="שם פרטי" ForeColor="White"></asp:Label> </td>
                    <td style="background-color:red; height: 18px;"><asp:Label ID="Label2" runat="server" Text="שם משפחה" ForeColor="White"></asp:Label> </td>
                    <td style="background-color:red; height: 18px;"><asp:Label ID="Label3" runat="server" Text="שם משתמש" ForeColor="White"></asp:Label> </td>
                    <td style="background-color:red; height: 18px;"><asp:Label ID="Label4" runat="server" Text="דואר אלקטרוני" ForeColor="White"></asp:Label> </td>
                    <td style="background-color:red; height: 18px;"><asp:Label ID="Label5" runat="server" Text="סיסמא" ForeColor="White"></asp:Label> </td>                        
                    <td style="background-color:red; height: 18px;"><asp:Label ID="Label6" runat="server" Text="מספר טלפון" ForeColor="White"></asp:Label> </td>
                    <td style="background-color:red; height: 18px;"><asp:Label ID="Label7" runat="server" Text="יום" ForeColor="White"></asp:Label> </td>
                    <td style="background-color:red; height: 18px;"><asp:Label ID="Label8" runat="server" Text="חודש" ForeColor="White"></asp:Label> </td>
                    <td style="background-color:red; height: 18px;"><asp:Label ID="Label9" runat="server" Text="שנה" ForeColor="White"></asp:Label> </td>
                    <td style="background-color:red; height: 18px;"><asp:Label ID="Label10" runat="server" Text="מין" ForeColor="White"></asp:Label> </td>
                    <td style="background-color:red; height: 18px;"><asp:Label ID="Label11" runat="server" Text="אזור מגורים" ForeColor="White"></asp:Label> </td>
                    <td style="background-color:red; height: 18px;"><asp:Label ID="Label12" runat="server" Text="תחביבים" ForeColor="White"></asp:Label> </td>
                    <td style="background-color:red; height: 18px;"><asp:Label ID="Label13" runat="server" Text="" ForeColor="White"></asp:Label> </td>
                    <td style="background-color:red; height: 18px;"><asp:Label ID="Label14" runat="server" Text="" ForeColor="White"></asp:Label> </td>
                </tr>
                        <asp:Repeater ID="Repeater1" runat="server">
                            <ItemTemplate>
                                <tr>
                                    <td><%#DataBinder.Eval(Container.DataItem, "MyFirstName") %></td>
                                    <td><%#DataBinder.Eval(Container.DataItem, "MyLastName") %></td>
                                    <td><%#DataBinder.Eval(Container.DataItem, "MyUserName") %></td>
                                    <td><%#DataBinder.Eval(Container.DataItem, "MyEmail") %></td>
                                    <td><%#DataBinder.Eval(Container.DataItem, "MyPassword") %></td>
                                    <td><%#DataBinder.Eval(Container.DataItem, "MyPhoneNumber") %></td>
                                    <td><%#DataBinder.Eval(Container.DataItem, "MyDay") %></td>
                                    <td><%#DataBinder.Eval(Container.DataItem, "MyMonth") %></td>
                                    <td><%#DataBinder.Eval(Container.DataItem, "MyYear") %></td>
                                    <td><%#DataBinder.Eval(Container.DataItem, "MyGender") %></td>
                                    <td><%#DataBinder.Eval(Container.DataItem, "MyRegion") %></td>
                                    <td><%#DataBinder.Eval(Container.DataItem, "MyHobby1") %></td>
                                    <td><%#DataBinder.Eval(Container.DataItem, "MyHobby2") %></td>
                                    <td><%#DataBinder.Eval(Container.DataItem, "MyHobby3") %></td>
                                </tr>
                            </ItemTemplate>
                        </asp:Repeater>
            </table>
                <br /><br />
            לדף הבית
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="לדף האדמין"></asp:Button>
        </div>
            </center>
    </form>
</body>
</html>
