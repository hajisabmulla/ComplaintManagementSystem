<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserSignIn.aspx.cs" Inherits="ComplaintMgmtSystem.UserSignIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            color: #0066FF;
        }
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            text-align: right;
            width: 434px;
        }
        .auto-style5 {
            width: 434px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <h1 class="auto-style2"><strong>User Sign in</strong></h1>
        </div>
        <table class="auto-style3">
            <tr>
                <td class="auto-style4">User Name</td>
                <td>
                    <asp:TextBox ID="txtSignInUserName" runat="server" Width="150px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">Password</td>
                <td>
                    <asp:TextBox ID="txtSignInPassword" runat="server" TextMode="Password" Width="150px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td>
                    <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td>
                    <asp:Label ID="lblErrorMessage" runat="server" ForeColor="Red" Text="Incorrect User Credentials"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
