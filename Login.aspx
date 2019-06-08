<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="TravelDiary2.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="jquery.min.js"></script>
    <script src="script.js"></script>
    <link rel="stylesheet" type="text/css" href="style.css">
    <title>Welcome to the Travel Diary</title>
</head>
<body>
    <form id="form2" runat="server">
        <h1>Welcome to the Travel Diary</h1>
        
        <div id="login1">  
            <table id="tabela">  
              
                <tr>  
                    <td class="style2">  
Username:</td>  
                    <td>  
                        <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>  
                    </td>  
                    
                </tr>  
                <tr>  
                    <td class="style2">  
Password:</td>  
                    <td>  
                        <asp:TextBox ID="TextBox2" TextMode="password" runat="server"></asp:TextBox>  
                    </td>  
                    
                </tr>  
                <tr>  
                    <td class="style2">  
 </td>  
                    <td>  
 </td>  
                    <td>  
 </td>  
                </tr>  
                <tr>  
                    <td class="style2">  
 </td>  
                    <td>  
                        <asp:Button ID="Button1" runat="server" Text="Log In" onclick="Button1_Click" />  
                    </td>  
                    <td>  
                        <asp:Label ID="Label1" runat="server"></asp:Label>  
                    </td>  
                </tr>  
                </table>  
            <br />
            <br />


            <div id="register2">
                <h2>Don't have an account? What are you waiting for?</h2>
                <asp:TextBox ID="user1" runat="server" placeholder="Username" Height="40px" Width="20%"></asp:TextBox>
                    <br />
                <asp:TextBox ID="pw1" runat="server" placeholder="Password" TextMode="Password" Height="40px" Width="20%"></asp:TextBox>
                    <br />
                <asp:TextBox ID="pw2"  runat="server" placeholder="Confirm Password" TextMode="Password" Height="40px" Width="20%"></asp:TextBox>
                    
                <asp:CompareValidator id="comparePasswords" 
              runat="server"
              ControlToCompare="pw1"
              ControlToValidate="pw2"
              ErrorMessage="Your passwords do not match up!"
              Display="Dynamic" />
                    <br />
                <asp:TextBox ID="email1" runat="server" placeholder="Email" Height="40px" Width="20%"></asp:TextBox>
                    <br />
                <asp:Button ID="reg1" runat="server" Text="Register here" OnClick="reg1_Click" />
                    <br />
                 <asp:Label ID="lbl2" runat="server"></asp:Label>


            </div>
        </div>  
       
    </form>  
</body>
</html>
