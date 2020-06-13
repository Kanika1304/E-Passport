<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="EPassport.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            background-color: #FFFFFF;
        }
        .ss {
            background-image: url('Images/a2.jpg');
            background-color: #FFFFFF;
            background-size:100% 100%;
            height: 857px;
            font-weight: 700;
            text-align: left;
        }
        ul{
            list-style-type: none;
            margin:0;
            padding:0;
            overflow:hidden;
            background-color: #333;
            height: 48px;
        }
        li{
            float: left;
        }
        li a{
            display:block;
            color:white;
            text-align:center;
            padding:14px 16px;
            text-decoration:none;
        }
        li a:hover{
            background-color: yellow;
            color:black;
        }
    </style>
</head>
<body style="height: 879px">   
    <form id="form1" runat="server">
        <div class="ss">
            <ul>
                <li><a class="active" href="WebForm1.aspx"></a></li>
                <li><a  href="RegistrationForm.aspx">Register</a></li>
                 <li><a href="LoginPage.aspx">Login</a></li>
                <li><a  href="AdminPage.aspx">Admin</a></li>
                 <li><a  href="ContactUs.aspx">Contact Us</a></li>
            </ul>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Font-Underline="True" ForeColor="#000099" Text="Welcome to E-Passport!!!"></asp:Label>
            <br />
            <br />
            <br />
       
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:Image ID="Image1" runat="server" Height="152px" Width="162px" ImageUrl="data:image/jpeg;base64,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" style="margin-left: 50px"/>
      
        
       
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label2" runat="server" Font-Size="X-Large" ForeColor="Black" Text="Vision " Font-Bold="True" Font-Underline="True"></asp:Label>
       
        
        
       
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;
            <asp:Label ID="Label4" runat="server" Font-Italic="True" ForeColor="#3333CC" Text="&quot;To deliver passport services to citizens in a timely, transparent, more"></asp:Label>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label5" runat="server" Font-Italic="True" ForeColor="#0033CC" Text="accessible, reliable manner and in a comfortable environment through"></asp:Label>
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label6" runat="server" Font-Italic="True" ForeColor="#0033CC" Text="streamlined processes and committed, trained and motivated workforce&quot;"></asp:Label>
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label3" runat="server" Font-Size="X-Large" Font-Underline="True" Text="About Us"></asp:Label>
            <br />
            <br />
            <br />
            In recent years, the Government of India has taken many initiatives to usher in an era of e-Governance to improve the delivery of public services. The National e-Governance Plan (NeGP) includes many high impact e-Governance projects that have been identified as Mission Mode Projects (MMP&#39;s). One such project focuses on reforming Passport services in India. The Ministry of External Affairs (MEA) is responsible for issuance of Passports to Indian Citizens through a network of 36 Passport offices across the Country and 190 Indian Missions and Posts abroad. A Passport is an essential travel document for those who are traveling abroad for education, tourism, pilgrimage, medical attendance, business purposes and family visits. During the last few years, the growing economy and spreading globalization have led to an increased demand for Passport and related services. This increasing demand for passports and related services is coming from both large cities and smaller towns, creating a need 
            for wider reach and availability.<br />
            <br />
&nbsp;To augment and improve the delivery of passport services to Indian citizens, the Ministry of External Affairs (MEA) launched the Passport Seva Project (PSP) in May 2010. The project has been implemented in a Public Private Partnership (PPP) mode with Wipro Pvt ltd., selected through a public competitive procurement process. Under this program, the sovereign and fiduciary functions like verification, granting and issuing of passport have been retained by MEA.
            <br />
            <br />
            The ownership and strategic control of the core assets including data/information is with MEA. E- Passport enables simple, efficient and transparent processes for delivery of passport and related services. Apart from creating a countrywide networked environment for Government staff, it integrates with the State Police for physical verification of applicant&#39;s credentials and with India Post for delivery of passports.
            
        </div>
        <script type = "text/javascript" > 
    function preventBack(){window.history.forward();} 
    setTimeout("preventBack()", 0); 
    window.onunload=function(){null}; 
    </script>
    </form>
    
</body>
</html>
