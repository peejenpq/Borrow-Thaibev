<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChangePassword.aspx.cs" Inherits="BorrowAutomation.Login.ChangePassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            text-align: right;
            width: 539px;
            color: #009933;
        }
        .auto-style4 {
            text-align: left;
        }
        .auto-style5 {
            text-align: right;
            width: 539px;
            color: #009933;
            height: 26px;
        }
        .auto-style6 {
            text-align: left;
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1">
    
        <asp:Image ID="Image1" runat="server" ImageUrl="~/Image/Changepassword_Icon.jpg" />
        <br />
        <table class="auto-style2">
            <tr>
                <td class="auto-style3">UserName :</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtUser" runat="server" Width="200px"></asp:TextBox>
                    <asp:Label ID="lbUser" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">OldPassword :</td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtOldPass" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
                    <asp:Label ID="lbOldPassword" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">NewPassword :</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtNewPass" runat="server" Width="200px"></asp:TextBox>
                    <asp:Label ID="lbNewPassword" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">ConfirmPassword :</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtConfirm" runat="server" Width="200px"></asp:TextBox>
                    <asp:Label ID="lbConfirm" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">
                    <asp:ImageButton ID="btnSave" runat="server" BorderStyle="Outset" Height="60px" ImageUrl="~/Image/SaveButton.png" OnClick="btnSave_Click" />
&nbsp;<asp:ImageButton ID="btnLogin" runat="server" BorderStyle="Inset" Height="61px" ImageUrl="~/Image/LoginButto.png" OnClick="btnLogin_Click" />
                    <br />
                    <asp:Label ID="lbStatus" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
