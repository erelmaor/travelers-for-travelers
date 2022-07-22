<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="ErelsProject.Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Sign Up </title>
    <link href="StyleSheetSignup.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <div class="background">
        <div class="shape"></div>
        <div class="shape"></div>
    </div>
    <form id="form1" runat="server">
        <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
            <h3>ברוכים הבאים</h3>
        <br /><br />
            <asp:TextBox ID="FirstName" runat="server" placeholder="הכנס שם פרטי" dir="rtl"></asp:TextBox> <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="FirstName" ErrorMessage="יש למלא שדה זה" ForeColor="Red"></asp:RequiredFieldValidator>  
            
            <asp:TextBox ID="LastName" runat="server" placeholder="הכנס שם משפחה" dir="rtl"></asp:TextBox> <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="LastName" ErrorMessage="יש למלא שדה זה" ForeColor="Red"></asp:RequiredFieldValidator>  
            
            <asp:TextBox ID="UserName" runat="server" placeholder="הכנס שם משתמש" dir="rtl"></asp:TextBox> <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="UserName" ErrorMessage="יש למלא שדה זה" ForeColor="Red"></asp:RequiredFieldValidator> 
            
            <asp:TextBox ID="UserEmail" runat="server" placeholder="הכנס דואל אלקטרוני" dir="rtl"></asp:TextBox> <br />
            <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="UserEmail" ErrorMessage="תבנית מייל שגויה"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="UserEmail" ErrorMessage="יש למלא שדה זה" ForeColor="Red"></asp:RequiredFieldValidator> 

            <asp:TextBox ID="UserPassword" type="Password" runat="server" placeholder="הכנס סיסמא" dir="rtl"></asp:TextBox> <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="UserPassword" ErrorMessage="יש למלא שדה זה" ForeColor="Red"></asp:RequiredFieldValidator> 
            
            <asp:TextBox ID="UserPhoneNumber" runat="server" placeholder="הכנס מספר טלפון" dir="rtl"></asp:TextBox> <br />
            <asp:RegularExpressionValidator ID="regexPhoneValid" runat="server" ValidationExpression="^\d?(?:(?:[\+]?(?:[\d]{1,3}(?:[ ]+|[\-.])))?[(]?(?:[\d]{3})[\-/)]?(?:[ ]+)?)?(?:[a-zA-Z2-9][a-zA-Z0-9 \-.]{6,})(?:(?:[ ]+|[xX]|(i:ext[\.]?)){1,2}(?:[\d]{1,5}))?$" ControlToValidate="UserPhoneNumber" ErrorMessage="מספר טלפון לא תקין" ForeColor="Red"></asp:RegularExpressionValidator> 
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5"  runat="server" ControlToValidate="UserPhoneNumber" ErrorMessage="יש למלא שדה זה" ForeColor="Red"></asp:RequiredFieldValidator> 


        <div dir="rtl">
            &nbsp&nbsp
                        <asp:DropDownList ID="DropDownDay" runat="server" BackColor="black" Font-Size="Medium" Width="90px" Height="30px">  
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
                    <asp:DropDownList ID="DropDownMonth" runat="server" BackColor="black" Font-Size="Medium" Width="90px" Height="30px">  
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
            &nbsp&nbsp
                    <asp:DropDownList ID="DropDownYear" runat="server" BackColor="black" Font-Size="Medium" Width="90px" Height="30px">  
                            <asp:ListItem Text="בחר שנה" Value="select" Selected="True"></asp:ListItem>
                            <asp:ListItem Text="2001" Value="2001"></asp:ListItem>  
                            <asp:ListItem Text="2000" Value="2000"></asp:ListItem>
                            <asp:ListItem Text="1999" Value="1999"></asp:ListItem>  
                            <asp:ListItem Text="1998" Value="1998"></asp:ListItem>  
                            <asp:ListItem Text="1997" Value="1997"></asp:ListItem> 
                            <asp:ListItem Text="1996" Value="1996"></asp:ListItem>  
                            <asp:ListItem Text="1995" Value="1995"></asp:ListItem>  
                            <asp:ListItem Text="1994" Value="1994"></asp:ListItem> 
                            <asp:ListItem Text="1993" Value="1993"></asp:ListItem>  
                            <asp:ListItem Text="1992" Value="1992"></asp:ListItem>  
                            <asp:ListItem Text="1991" Value="1991"></asp:ListItem>
                            <asp:ListItem Text="1990" Value="1990"></asp:ListItem>
                            <asp:ListItem Text="1989" Value="1989"></asp:ListItem>
                            <asp:ListItem Text="1988" Value="1988"></asp:ListItem>
                            <asp:ListItem Text="1987" Value="1987"></asp:ListItem>
                            <asp:ListItem Text="1986" Value="1986"></asp:ListItem>
                            <asp:ListItem Text="1985" Value="1985"></asp:ListItem>
                            <asp:ListItem Text="1984" Value="1984"></asp:ListItem>
                            <asp:ListItem Text="1983" Value="1983"></asp:ListItem>
                            <asp:ListItem Text="1982" Value="1982"></asp:ListItem>
                            <asp:ListItem Text="1981" Value="1981"></asp:ListItem>
                            <asp:ListItem Text="1980" Value="1980"></asp:ListItem>
                            <asp:ListItem Text="1979" Value="1979"></asp:ListItem>
                            <asp:ListItem Text="1978" Value="1978"></asp:ListItem>
                            <asp:ListItem Text="1977" Value="1977"></asp:ListItem>
                            <asp:ListItem Text="1976" Value="1976"></asp:ListItem>
                            <asp:ListItem Text="1975" Value="1975"></asp:ListItem>
                            <asp:ListItem Text="1974" Value="1974"></asp:ListItem>
                            <asp:ListItem Text="1973" Value="1973"></asp:ListItem>
                            <asp:ListItem Text="1972" Value="1972"></asp:ListItem>
                            <asp:ListItem Text="1971" Value="1971"></asp:ListItem>
                            <asp:ListItem Text="1970" Value="1970"></asp:ListItem>
                            <asp:ListItem Text="1969" Value="1969"></asp:ListItem>
                            <asp:ListItem Text="1968" Value="1968"></asp:ListItem>
                            <asp:ListItem Text="1967" Value="1967"></asp:ListItem>
                            <asp:ListItem Text="1966" Value="1966"></asp:ListItem>
                            <asp:ListItem Text="1965" Value="1965"></asp:ListItem>
                            <asp:ListItem Text="1964" Value="1964"></asp:ListItem>
                            <asp:ListItem Text="1963" Value="1963"></asp:ListItem>
                            <asp:ListItem Text="1962" Value="1962"></asp:ListItem>
                            <asp:ListItem Text="1961" Value="1961"></asp:ListItem>
                            <asp:ListItem Text="1960" Value="1960"></asp:ListItem>
                        </asp:DropDownList>


                   </div>

        <br /><br />

            <div dir="rtl">

                    מין  <asp:RadioButtonList ID="RadioGender" CssClass="RadioGender" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Value="זכר">
                        &nbsp&nbsp
                        זכר
                        &nbsp&nbsp
                    </asp:ListItem>
                    <asp:ListItem Value="נקבה">
                        &nbsp&nbsp
                        נקבה
                        &nbsp&nbsp
                    </asp:ListItem>
                    <asp:ListItem Value="אחר">
                        &nbsp&nbsp
                        אחר
                        &nbsp&nbsp
                    </asp:ListItem>
                       
                </asp:RadioButtonList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="RadioGender" ErrorMessage="יש למלא שדה זה" ForeColor="Red"></asp:RequiredFieldValidator>
                    
            </div>
            <br /><br /><br /><br /><br /><br /><br /><br />
        <div dir="rtl">אזור מגורים
            &nbsp&nbsp
                        <asp:DropDownList ID="DropDownRegion" runat="server" BackColor="black" Font-Size="Medium" Width="200px" Height="30px">  
                            <asp:ListItem Text="בחר אזור מגורים" Value="select" Selected="True"></asp:ListItem>  
                            <asp:ListItem Text="צפון" Value="צפון"></asp:ListItem>  
                            <asp:ListItem Text="מרכז" Value="מרכז"></asp:ListItem>  
                            <asp:ListItem Text="דרום" Value="דרום"></asp:ListItem>  
                        </asp:DropDownList>
                   </div>

        <br /><br />
                        <asp:DropDownList ID="DropDownHobby1" runat="server" BackColor="black" Font-Size="Medium" Width="100px" Height="30px">  
                            <asp:ListItem Text="תחביב 1" Value="select" Selected="True"></asp:ListItem>
                            <asp:ListItem Text="ספורט" Value="ספורט"></asp:ListItem>  
                            <asp:ListItem Text="בישול" Value="בישול"></asp:ListItem>  
                            <asp:ListItem Text="ציור" Value="ציור"></asp:ListItem>
                            <asp:ListItem Text="ריקוד" Value="ריקוד"></asp:ListItem>  
                            <asp:ListItem Text="שירה" Value="שירה"></asp:ListItem>  
                            <asp:ListItem Text="כתיבה" Value="כתיבה"></asp:ListItem> 
                            <asp:ListItem Text="סדרות/סרטים" Value="סדרות/סרטים"></asp:ListItem>  
                            <asp:ListItem Text="משחקי מחשב" Value="משחקי מחשב"></asp:ListItem>  
                            <asp:ListItem Text="אקטואליה" Value="אקטואליה"></asp:ListItem> 
                        </asp:DropDownList>

                        <asp:DropDownList ID="DropDownHobby2" runat="server" BackColor="black" Font-Size="Medium" Width="100px" Height="30px">  
                            <asp:ListItem Text="תחביב 2" Value="select" Selected="True"></asp:ListItem>
                            <asp:ListItem Text="ספורט" Value="ספורט"></asp:ListItem>  
                            <asp:ListItem Text="בישול" Value="בישול"></asp:ListItem>  
                            <asp:ListItem Text="ציור" Value="ציור"></asp:ListItem>
                            <asp:ListItem Text="ריקוד" Value="ריקוד"></asp:ListItem>  
                            <asp:ListItem Text="שירה" Value="שירה"></asp:ListItem>  
                            <asp:ListItem Text="כתיבה" Value="כתיבה"></asp:ListItem> 
                            <asp:ListItem Text="סדרות/סרטים" Value="סדרות/סרטים"></asp:ListItem>  
                            <asp:ListItem Text="משחקי מחשב" Value="משחקי מחשב"></asp:ListItem>  
                            <asp:ListItem Text="אקטואליה" Value="אקטואליה"></asp:ListItem> 
                        </asp:DropDownList>

                        <asp:DropDownList ID="DropDownHobby3" runat="server" BackColor="black" Font-Size="Medium" Width="100px" Height="30px">  
                            <asp:ListItem Text="תחביב 3" Value="select" Selected="True"></asp:ListItem>
                            <asp:ListItem Text="ספורט" Value="ספורט"></asp:ListItem>  
                            <asp:ListItem Text="בישול" Value="בישול"></asp:ListItem>  
                            <asp:ListItem Text="ציור" Value="ציור"></asp:ListItem>
                            <asp:ListItem Text="ריקוד" Value="ריקוד"></asp:ListItem>  
                            <asp:ListItem Text="שירה" Value="שירה"></asp:ListItem>  
                            <asp:ListItem Text="כתיבה" Value="כתיבה"></asp:ListItem> 
                            <asp:ListItem Text="סדרות/סרטים" Value="סדרות/סרטים"></asp:ListItem>  
                            <asp:ListItem Text="משחקי מחשב" Value="משחקי מחשב"></asp:ListItem>  
                            <asp:ListItem Text="אקטואליה" Value="אקטואליה"></asp:ListItem> 
                        </asp:DropDownList>
        <br /><br />
            <asp:Button ID="Button1" runat="server" Text="הירשם/י" BackColor="White" ForeColor="Black" Font-Bold="true" OnClick="Button1_Click3" />
            
        <div class="social">
              <asp:Button Text="כניסה" runat="server" OnClick="Button_To_Sign_In" CausesValidation="false"/> 
            </div><br />
            
    </form>
</body>
</html>

