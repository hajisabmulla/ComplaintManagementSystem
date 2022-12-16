<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="ComplaintMgmtSystem.AdminPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 961px;
        }
        .auto-style2 {
            text-align: center;
            color: #800000;
        }
        .auto-style5 {
            text-align: center;
            text-decoration: underline;
        }
        .auto-style11 {
            text-align: center;
            }
        .auto-style13 {
            width: 482px;
        }
        .auto-style14 {
            text-align: left;
        }
        .auto-style15 {
            text-align: center;
            height: 23px;
        }
        .auto-style16 {
            width: 482px;
            height: 23px;
        }
        .auto-style17 {
            height: 23px;
        }
        .auto-style18 {
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td colspan="2">
                    <h2 class="auto-style2">Administration Desk</h2>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style18">
                    <asp:Button ID="btnSignOut" runat="server" OnClick="btnSignOut_Click" Text="Sign Out" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5" colspan="2">
                    <asp:Button ID="btnUserMgmt" runat="server" Text="User Management" PostBackUrl="~/UserManagement.aspx" />
                </td>
            </tr>
            <tr>
                <td class="auto-style16"></td>
                <td class="auto-style17"></td>
            </tr>
            <tr>
                <td class="auto-style15" colspan="2">
                    <asp:Button ID="btnComplaintMgmt" runat="server" Text="Complaint Management" PostBackUrl="~/ComplaintMgmt.aspx" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td class="auto-style11" colspan="2">
                    &nbsp;</td>
            </tr>
            </table>
        <div class="auto-style14">
        </div>
    </form>
</body>
</html>
