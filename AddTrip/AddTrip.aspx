<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddTrip.aspx.cs" Inherits="ErelsProject.AddTrip" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheetSignup.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <div class="background">
        <div class="shape"></div>
        <div class="shape"></div>
    </div>
    <form id="form1" runat="server" dir="rtl">
        <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
            <h3>ברוכים הבאים</h3>
        <br /><br />

            <asp:TextBox ID="MyTripName" runat="server" placeholder="הכנס שם כיפי לטיול" dir="rtl"></asp:TextBox> <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="MyTripName" ErrorMessage="יש למלא שדה זה" ForeColor="Red" Visible="false"></asp:RequiredFieldValidator>  
            
                            <asp:DropDownList ID="MyCity" runat="server" BackColor="black" Font-Size="Medium" Width="100px" Height="30px">  
                            <asp:ListItem Text="בחר עיר" Value="select" Selected="True"></asp:ListItem>  
                            <asp:ListItem Text="אילת" Value="אילת"></asp:ListItem>  
                            <asp:ListItem Text="אשדוד" Value="אשדוד"></asp:ListItem>
                            <asp:ListItem Text="אשקלון" Value="אשקלון"></asp:ListItem>  
                            <asp:ListItem Text="באר שבע" Value="באר שבע"></asp:ListItem>  
                            <asp:ListItem Text="בת ים" Value="בת ים"></asp:ListItem> 
                            <asp:ListItem Text="גבעתיים" Value="גבעתיים"></asp:ListItem>  
                            <asp:ListItem Text="הוד השרון" Value="הוד השרון"></asp:ListItem>  
                            <asp:ListItem Text="הרצליה" Value="הרצליה"></asp:ListItem> 
                            <asp:ListItem Text="חולון" Value="חולון"></asp:ListItem>  
                            <asp:ListItem Text="חיפה" Value="חיפה"></asp:ListItem>  
                            <asp:ListItem Text="טבריה" Value="טבריה"></asp:ListItem>
                            <asp:ListItem Text="יבנה" Value="יבנה"></asp:ListItem>  
                            <asp:ListItem Text="ירושלים" Value="ירושלים"></asp:ListItem> 
                            <asp:ListItem Text="מודיעין" Value="מודיעין"></asp:ListItem>  
                            <asp:ListItem Text="נתניה" Value="נתניה"></asp:ListItem>  
                            <asp:ListItem Text="פתח תקווה" Value="פתח תקווה"></asp:ListItem>
                            <asp:ListItem Text="ראשון לציון" Value="ראשון לציון"></asp:ListItem>
                            <asp:ListItem Text="רחובות" Value="רחובות"></asp:ListItem>
                            <asp:ListItem Text="רמת גן" Value="רמת גן"></asp:ListItem>
                            <asp:ListItem Text="רמת השרון" Value="רמת השרון"></asp:ListItem>
                            <asp:ListItem Text="תל אביב" Value="תל אביב"></asp:ListItem>
                        </asp:DropDownList>
        <br />

                    <asp:TextBox ID="MyAddress" runat="server" placeholder="הכנס את כתובת ההתחלה" dir="rtl"></asp:TextBox> <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="MyAddress" ErrorMessage="יש למלא שדה זה" ForeColor="Red"></asp:RequiredFieldValidator>  
            
            
            <div dir="rtl">יום
            &nbsp&nbsp
                        <asp:DropDownList ID="DropDownList1" runat="server" BackColor="black" Font-Size="Medium" Width="100px" Height="30px">  
                            <asp:ListItem Text="בחר יום" Value="select" Selected="True"></asp:ListItem>  
                            <asp:ListItem Text="1" Value="1"></asp:ListItem>  
                            <asp:ListItem Text="2" Value="2"></asp:ListItem>  
                            <asp:ListItem Text="3" Value="3"></asp:ListItem>
                            <asp:ListItem Text="4" Value="4"></asp:ListItem>  
                            <asp:ListItem Text="5" Value="5"></asp:ListItem>  
                            <asp:ListItem Text="6" Value="6"></asp:ListItem> 
                            <asp:ListItem Text="7" Value="7"></asp:ListItem>  
                            <asp:ListItem Text="8" Value="8"></asp:ListItem>  
                            <asp:ListItem Text="9" Value="9"></asp:ListItem> 
                            <asp:ListItem Text="10" Value="10"></asp:ListItem>  
                            <asp:ListItem Text="11" Value="11"></asp:ListItem>  
                            <asp:ListItem Text="12" Value="12"></asp:ListItem> 
                            <asp:ListItem Text="13" Value="13"></asp:ListItem>  
                            <asp:ListItem Text="14" Value="14"></asp:ListItem>  
                            <asp:ListItem Text="15" Value="15"></asp:ListItem> 
                            <asp:ListItem Text="16" Value="16"></asp:ListItem>  
                            <asp:ListItem Text="17" Value="17"></asp:ListItem>  
                            <asp:ListItem Text="18" Value="18"></asp:ListItem>
                            <asp:ListItem Text="19" Value="19"></asp:ListItem>
                            <asp:ListItem Text="20" Value="20"></asp:ListItem>
                            <asp:ListItem Text="21" Value="21"></asp:ListItem>
                            <asp:ListItem Text="22" Value="22"></asp:ListItem>
                            <asp:ListItem Text="23" Value="23"></asp:ListItem>
                            <asp:ListItem Text="24" Value="24"></asp:ListItem>
                            <asp:ListItem Text="25" Value="25"></asp:ListItem>
                            <asp:ListItem Text="26" Value="26"></asp:ListItem>
                            <asp:ListItem Text="27" Value="27"></asp:ListItem>
                            <asp:ListItem Text="28" Value="28"></asp:ListItem>
                            <asp:ListItem Text="29" Value="29"></asp:ListItem>
                            <asp:ListItem Text="30" Value="30"></asp:ListItem>
                            <asp:ListItem Text="31" Value="31"></asp:ListItem>
                        </asp:DropDownList>
                &nbsp&nbsp
                   חודש
            &nbsp&nbsp
                    <asp:DropDownList ID="DropDownList2" runat="server" BackColor="black" Font-Size="Medium" Width="100px" Height="30px">  
                            <asp:ListItem Text="בחר חודש" Value="select" Selected="True"></asp:ListItem>  
                            <asp:ListItem Text="1" Value="1"></asp:ListItem>  
                            <asp:ListItem Text="2" Value="2"></asp:ListItem>  
                            <asp:ListItem Text="3" Value="3"></asp:ListItem>
                            <asp:ListItem Text="4" Value="4"></asp:ListItem>  
                            <asp:ListItem Text="5" Value="5"></asp:ListItem>  
                            <asp:ListItem Text="6" Value="6"></asp:ListItem> 
                            <asp:ListItem Text="7" Value="7"></asp:ListItem>  
                            <asp:ListItem Text="8" Value="8"></asp:ListItem>  
                            <asp:ListItem Text="9" Value="9"></asp:ListItem> 
                            <asp:ListItem Text="10" Value="10"></asp:ListItem>  
                            <asp:ListItem Text="11" Value="11"></asp:ListItem>  
                            <asp:ListItem Text="12" Value="12"></asp:ListItem>
                        </asp:DropDownList>
                   </div>
        <br /><br />
                    <div dir="rtl">שעה
            &nbsp&nbsp
                    <asp:DropDownList ID="DropDownList3" runat="server" BackColor="black" Font-Size="Medium" Width="100px" Height="30px">  
                            <asp:ListItem Text="בחר שעת התחלה" Value="select" Selected="True"></asp:ListItem>  
                            <asp:ListItem Text="1:00" Value="1"></asp:ListItem> 
                            <asp:ListItem Text="1:30" Value="1.5"></asp:ListItem>

                            <asp:ListItem Text="2:00" Value="2"></asp:ListItem>  
                        <asp:ListItem Text="2:30" Value="2.5"></asp:ListItem> 

                            <asp:ListItem Text="3:00" Value="3"></asp:ListItem>
                        <asp:ListItem Text="3:30" Value="3.5"></asp:ListItem> 

                            <asp:ListItem Text="4:00" Value="4"></asp:ListItem> 
                        <asp:ListItem Text="4:30" Value="4.5"></asp:ListItem> 

                            <asp:ListItem Text="5:00" Value="5"></asp:ListItem>
                        <asp:ListItem Text="5:30" Value="5.5"></asp:ListItem> 

                            <asp:ListItem Text="6:00" Value="6"></asp:ListItem>
                        <asp:ListItem Text="6:30" Value="6.5"></asp:ListItem> 

                            <asp:ListItem Text="7:00" Value="7"></asp:ListItem> 
                        <asp:ListItem Text="7:30" Value="7.5"></asp:ListItem> 

                            <asp:ListItem Text="8:00" Value="8"></asp:ListItem> 
                        <asp:ListItem Text="8:30" Value="8.5"></asp:ListItem> 

                            <asp:ListItem Text="9:00" Value="9"></asp:ListItem> 
                        <asp:ListItem Text="9:30" Value="9.5"></asp:ListItem> 

                            <asp:ListItem Text="10:00" Value="10"></asp:ListItem> 
                        <asp:ListItem Text="10:30" Value="10.5"></asp:ListItem> 

                            <asp:ListItem Text="11:00" Value="11"></asp:ListItem> 
                        <asp:ListItem Text="11:30" Value="11.5"></asp:ListItem> 

                            <asp:ListItem Text="12:00" Value="12"></asp:ListItem>
                        <asp:ListItem Text="12:30" Value="12.5"></asp:ListItem> 

                            <asp:ListItem Text="13:00" Value="13"></asp:ListItem> 
                        <asp:ListItem Text="13:30" Value="13.5"></asp:ListItem> 

                            <asp:ListItem Text="14:00" Value="14"></asp:ListItem>
                        <asp:ListItem Text="14:30" Value="14.5"></asp:ListItem> 

                            <asp:ListItem Text="15:00" Value="15"></asp:ListItem>
                        <asp:ListItem Text="15:30" Value="15.5"></asp:ListItem> 

                            <asp:ListItem Text="16:00" Value="16"></asp:ListItem> 
                        <asp:ListItem Text="16:30" Value="16.5"></asp:ListItem> 

                            <asp:ListItem Text="17:00" Value="17"></asp:ListItem> 
                        <asp:ListItem Text="17:30" Value="17.5"></asp:ListItem> 

                            <asp:ListItem Text="18:00" Value="18"></asp:ListItem>
                        <asp:ListItem Text="18:30" Value="18.5"></asp:ListItem> 

                            <asp:ListItem Text="19:00" Value="19"></asp:ListItem>
                        <asp:ListItem Text="19:30" Value="19.5"></asp:ListItem> 

                            <asp:ListItem Text="20:00" Value="20"></asp:ListItem>
                        <asp:ListItem Text="20:30" Value="20.5"></asp:ListItem> 

                            <asp:ListItem Text="21:00" Value="21"></asp:ListItem>
                        <asp:ListItem Text="21:30" Value="21.5"></asp:ListItem> 

                            <asp:ListItem Text="22:00" Value="22"></asp:ListItem>
                        <asp:ListItem Text="22:30" Value="22.5"></asp:ListItem> 

                            <asp:ListItem Text="23:00" Value="23"></asp:ListItem>
                        <asp:ListItem Text="23:30" Value="23.5"></asp:ListItem> 

                            <asp:ListItem Text="24:00" Value="24"></asp:ListItem>
                        <asp:ListItem Text="00:30" Value="24.5"></asp:ListItem> 
                        </asp:DropDownList>
                   </div>
        <br /><br />
                <div dir="rtl">זמן משוער
            &nbsp&nbsp
                    <asp:DropDownList ID="DropDownList4" runat="server" BackColor="black" Font-Size="Medium" Width="100px" Height="30px">  
                            <asp:ListItem Text="בחר משך זמן בשעות" Value="select" Selected="True"></asp:ListItem>  
                            <asp:ListItem Text="0.5" Value="0.5"></asp:ListItem>  
                            <asp:ListItem Text="1" Value="1"></asp:ListItem>  
                            <asp:ListItem Text="1.5" Value="1.5"></asp:ListItem>
                            <asp:ListItem Text="2" Value="2"></asp:ListItem>  
                            <asp:ListItem Text="2.5" Value="2.5"></asp:ListItem>  
                            <asp:ListItem Text="3" Value="3"></asp:ListItem> 
                            <asp:ListItem Text="4" Value="4"></asp:ListItem>  
                            <asp:ListItem Text="5" Value="5"></asp:ListItem>  
                            <asp:ListItem Text="6" Value="6"></asp:ListItem> 
                            <asp:ListItem Text="7" Value="7"></asp:ListItem>  
                            <asp:ListItem Text="8" Value="8"></asp:ListItem>  
                            <asp:ListItem Text="כולל לינה" Value="99"></asp:ListItem>
                        </asp:DropDownList>
                   </div>

        <br /><br />

        <div dir="rtl">

            אם כבר ביצעת את מסלול הטיול, נשמח שתמלא עוד מעט פרטים:
            <br /><br />
            <asp:DropDownList ID="TripLevel" runat="server" BackColor="black" Font-Size="Medium" Width="100px" Height="30px">  
                            <asp:ListItem Text="בחר רמת קושי" Value="" Selected="True"></asp:ListItem>  
                            <asp:ListItem Text="קל" Value="קל"></asp:ListItem> 
                            <asp:ListItem Text="בינוני" Value="בינוני"></asp:ListItem>  
                            <asp:ListItem Text="קשה" Value="קשה"></asp:ListItem>
                        </asp:DropDownList>

            <br /><br />
                    <asp:TextBox ID="TripDistance" runat="server" placeholder="הכנס את מרחק הטיול בקילומטרים" dir="rtl"></asp:TextBox>
            
            <br />
                    רשום קצת מידע על הטיול - האם נגיש לכולם, במה צריך להצטייד בטיול
                    <asp:TextBox ID="TripComments" runat="server" dir="rtl"></asp:TextBox> <br />
        
        </div>
                    <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
                    <br /><br /><br /><br /><br />
            <asp:Button ID="Button1" runat="server" Text="צור טיול" BackColor="White" ForeColor="Black" Font-Bold="true" OnClick="Button1_Click3" />
            
<br />   
    </form>
</body>
</html>
