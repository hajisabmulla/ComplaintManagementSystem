<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserPage.aspx.cs" Inherits="ComplaintMgmtSystem.UserPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: right;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            height: 23px;
        }
        .auto-style4 {
            height: 21px;
            text-align: center;
            color: #6600FF;
        }
        .auto-style5 {
            width: 205px;
        }
        .auto-style6 {
            height: 23px;
            width: 205px;
            text-align: left;
        }
        .auto-style7 {
            width: 205px;
            text-align: left;
        }
        .auto-style8 {
            width: 205px;
            text-align: left;
            height: 26px;
        }
        .auto-style9 {
            height: 26px;
        }
        .auto-style10 {
            width: 205px;
            height: 23px;
        }
        .auto-style11 {
            text-align: left;
        }
        .auto-style12 {
            width: 205px;
            text-align: left;
            height: 40px;
        }
        .auto-style13 {
            height: 40px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:Button ID="btnSgnOut" runat="server" Text="Sign Out" OnClick="btnSgnOut_Click" />
        </div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style4" colspan="2">
                    <h2 class="auto-style11">Complaint Registration Form</h2>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">Complaint Number</td>
                <td>
                    <asp:TextBox ID="txtComplaintNo" runat="server" Width="150px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Complaint Date</td>
                <td class="auto-style9">
                    <asp:TextBox ID="txtComplaintDate" runat="server" Width="150px" TextMode="Date"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">User Name</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtUserName" runat="server" Width="150px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style8">Head of the Department</td>
                <td class="auto-style9">
                    <asp:TextBox ID="txtHOD" runat="server" Width="150px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Machine S/N</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtMachineSN" runat="server" Width="150px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">Brief description of problem</td>
                <td class="auto-style13">
                    <asp:TextBox ID="txtBrProblem" runat="server" Width="150px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10"></td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td>
                    <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" Text="Submit" />
                </td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [ComplaintTable]"></asp:SqlDataSource>
                </td>
                <td>
                    <asp:Label ID="Label1" runat="server" ForeColor="#009933" Text="Massage"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
