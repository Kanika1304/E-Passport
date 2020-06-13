<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserMainPage.aspx.cs" Inherits="EPassport.UserMainPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
         .ss {
            background-image: url('Images/a4.jpg');
            background-color: #FFFFFF;
            background-size:100% 100%;
            height: 744px;
        }
    </style>
</head>
<body style="text-align: center; height: 522px;">
    <form id="form1" runat="server">
        <div class="ss">
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Font-Underline="True" Text="User Main Page"></asp:Label>
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server"  Text="Fill Application Form" OnClick="Button1_Click" Height="34px" />
       
            <br />
       
        <p>
            <asp:Button ID="Button2" runat="server" Text="View Application Form" OnClick="Button2_Click" Height="38px" />
        </p>
        <p>
            <asp:Button ID="Button3" runat="server"  Text="Upload Documents" OnClick="Button3_Click" Height="33px"  />
        </p>
        <p>
            <asp:Button ID="Button4" runat="server"  Text="Request For Appointment" OnClick="Button4_Click" Height="38px"  />
        </p>
            <p>
            <asp:Button ID="Button5" runat="server"  Text="Check Appointment Status"  Height="38px" OnClick="Button5_Click"  />
        </p>
            <p>
                <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="LOG OUT" Height="33px" Width="88px" />
        </p>
             </div>
        <script type = "text/javascript" > 
    function preventBack(){window.history.forward();} 
    setTimeout("preventBack()", 0); 
    window.onunload=function(){null}; 
    </script>
    </form>
</body>
</html>
