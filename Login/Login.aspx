<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BorrowAutomation.Login.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            width: 100%;
        }
        .auto-style5 {
            text-align: right;
            width: 561px;
        }
        .auto-style6 {
            color: #FF0000;
        }
    </style>
</head>
<body style="background-color: #FFFFFF">
    <form id="form1" runat="server">
    <div class="auto-style3">
    
        <br />
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Image/admin_login.gif" />
        <br />
        <table class="auto-style4">
            <tr>
                <td class="auto-style5">UserName :
        
        </td>
                <td style="text-align: left">
        
        <asp:TextBox ID="txtUser"  runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Password : </td>
                <td style="text-align: left">
        
        <asp:TextBox ID="txtPassword"  runat="server" Width="200px" style="text-align: left" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td style="text-align: left">
        <asp:ImageButton ID="btnLogin" runat="server" Height="60px" ImageUrl="~/Image/LoginButto.png" Width="60px" BorderStyle="Outset" OnClick="btnLogin_Click" />
        <asp:ImageButton ID="btnChangePass" runat="server" Height="61px" ImageUrl="~/Image/ChangePassword.png" BorderStyle="Outset" OnClick="btnChangePass_Click" />
                    <br />
                    <asp:Label ID="lbStatus" runat="server" CssClass="auto-style6" Visible="False"></asp:Label>
                </td>
            </tr>
        </table>
        <br />
        </div>
    </form>
</body>
</html>
