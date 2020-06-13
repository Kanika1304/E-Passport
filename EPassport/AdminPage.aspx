<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="EPassport.LoginPageAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 361px">
    <form id="form1" runat="server">
        <div>
         <p style="margin-left: 40px; width: 457px; z-index: auto; font-size: x-large; ">
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; Admin Page</p>
            <p style="margin-left: 40px; width: 457px; z-index: auto; font-size: x-large; color: #800080;">
            <asp:Label ID="Label1" runat="server" Text="Admin ID:"  ToolTip="Enter Admin Id" BorderStyle="None" Font-Size="Large" ></asp:Label>
           
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" Width="135px" ></asp:TextBox>
            
             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Admin ID is Required" Font-Size="Small" ForeColor="#CC0000"></asp:RequiredFieldValidator>
            
         </p>

       
        <p style="margin-left: 40px; width: 457px; z-index: auto; font-size: x-large; color: #800080;">
            <asp:Label ID="Label2" runat="server" Text="Password:" TextMode="Password" ToolTip="Enter Password" BorderStyle="None" Font-Size="Large" ></asp:Label>
           
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" Width="134px" TextMode="Password" ></asp:TextBox>
            
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*Password is Required" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
            
         </p>
        <p style="width: 450px; z-index: auto; font-size: x-large; color: #800080; margin-left: 40px; height: 34px;">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Height="29px" OnClick="Button1_Click" Text="Login" Width="62px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </p>
            <h1>&nbsp;</h1>
        </div>
    </form>
</body>
</html>
