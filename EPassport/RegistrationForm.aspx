<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationForm.aspx.cs" Inherits="EPassport.RegistrationForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style type="text/css">
        #form1 {
            background-color: #FFFFFF;
        }
        .ss {
            background-image: url('Images/s7.png');
            background-color: #FFFFFF;
            background-size:100% 100%;
        }
         .auto-style1 {
             text-decoration: none;
         }
    </style>
</head>
<body style="height: 529px">
    <form id="form1" runat="server">
        <div class="ss">
<a href="WebForm1.aspx" class="auto-style1"><h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Registration Form</h1></a>  
       
         <p style="margin-left: 40px; width: 481px; z-index: auto; font-size: x-large; color: #800080;">
            <asp:Label ID="Label1" runat="server" Text="First Name:"  ToolTip="Enter First Name" BorderStyle="None"  ></asp:Label>
           
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" Width="135px" CausesValidation="True" ></asp:TextBox>   
             <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*First Name is Required" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
         </p>

       
        <p style="margin-left: 40px; width: 479px; z-index: auto; font-size: x-large; color: #800080;">
            <asp:Label ID="Label2" runat="server" Text="Last Name:"  ToolTip="Enter Password" BorderStyle="None" ></asp:Label>
           
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" Width="134px" ></asp:TextBox>
            
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*Last Name is Required" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
            
         </p>
         <p style="margin-left: 40px; width: 479px; z-index: auto; font-size: x-large; color: #800080;">
            <asp:Label ID="Label3" runat="server" Text="Date of birth:"  BorderStyle="None"></asp:Label>
           
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server" TextMode="Date" placeholder="Date-Month-Year" Width="133px" ></asp:TextBox>   
             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="*Date of Birth is Required" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
         </p>

        <p style="margin-left: 40px; width: 482px; z-index: auto; font-size: x-large; color: #800080;">
            <asp:Label ID="Label4" runat="server" Text="Gender:"></asp:Label>
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="RadioButton1" runat="server" Text="Male"  GroupName="gen" Font-Bold="False" Font-Italic="True" Font-Size="Large" ForeColor="Black" OnCheckedChanged="RadioButton1_CheckedChanged"  />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="RadioButton2" Text="Female" GroupName="gen" runat="server" Font-Italic="True" Font-Size="Large" ForeColor="Black" OnCheckedChanged="RadioButton2_CheckedChanged" />
             
        &nbsp;
             
        </p>

        <p style="margin-left: 40px; width: 477px; z-index: auto; font-size: x-large; color: #800080;">
            <asp:Label ID="Label5" runat="server" Text="Password:"  BorderStyle="None"></asp:Label>
           
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox5" runat="server" Width="132px"  TextMode="Password"></asp:TextBox>   
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox5" ErrorMessage="*Password is Required" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
         </p>

        <p style="margin-left: 40px; width: 478px; z-index: auto; font-size: x-large; color: #800080;">
            <asp:Label ID="Label6" runat="server" Text="Phone No.:" BorderStyle="None"></asp:Label>
           
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox6" runat="server" Width="134px" TextMode="Phone"></asp:TextBox>   
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox6" ErrorMessage="*Phone No. is Required" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
         </p>
        <p style="margin-left: 40px; width: 478px; z-index: auto; font-size: x-large; color: #800080;">
            <asp:Label ID="Label7" runat="server" Text="Email Id:" BorderStyle="None"></asp:Label>
           
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox7" runat="server" Width="134px" TextMode="Email"></asp:TextBox>   
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox7" ErrorMessage="*E-mail ID is Required" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
         </p>
        <p style="margin-left: 40px; width: 457px; z-index: auto; font-size: x-large; color: #800080;">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Height="35px" OnClick="Button2_Click" Text="Sign In" Width="72px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" Height="38px" OnClick="Button3_Click" Text="Cancel" Width="64px" />
         </p>
            <p style="margin-left: 40px; width: 457px; z-index: auto; font-size: x-large; color: #800080;">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label8" runat="server" Font-Size="Small" ForeColor="#660066" Text="Note: Click on &quot;Registration Form&quot; to go back"></asp:Label>
         </p>
      
    &nbsp;&nbsp; 
       </div>
        <script type = "text/javascript" > 
    function preventBack(){window.history.forward();} 
    setTimeout("preventBack()", 0); 
    window.onunload=function(){null}; 
    </script>
    </form>
</body>
</html>
