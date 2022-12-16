<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ComplaintMgmt.aspx.cs" Inherits="ComplaintMgmtSystem.ComplaintMgmt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            color: #0000FF;
        }
        .auto-style2 {
            text-align: left;
        }
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            width: 274px;
        }
        .auto-style5 {
            width: 274px;
            height: 30px;
        }
        .auto-style6 {
            height: 30px;
            text-align: left;
        }
        .auto-style7 {
            text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style7">
        <div class="auto-style1">
            <h2 class="auto-style2">Complaint Management</h2>
        </div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [ComplaintTable]"></asp:SqlDataSource>
            <asp:Button ID="btnSignOut" runat="server" OnClick="btnSignOut_Click" Text="Sign Out" />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="ComplaintId" DataSourceID="SqlDataSource1" GridLines="Vertical" Width="722px">
                <AlternatingRowStyle BackColor="Gainsboro" />
                <Columns>
                    <asp:BoundField DataField="ComplaintId" HeaderText="ComplaintId" ReadOnly="True" SortExpression="ComplaintId" />
                    <asp:BoundField DataField="ComplaintDate" HeaderText="ComplaintDate" SortExpression="ComplaintDate" />
                    <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                    <asp:BoundField DataField="HOD" HeaderText="HOD" SortExpression="HOD" />
                    <asp:BoundField DataField="MachineSN" HeaderText="MachineSN" SortExpression="MachineSN" />
                    <asp:BoundField DataField="Problem" HeaderText="Problem" SortExpression="Problem" />
                    <asp:BoundField DataField="RequiredMaterial" HeaderText="RequiredMaterial" SortExpression="RequiredMaterial" />
                    <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
            <table class="auto-style3">
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">Complaint ID</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtComplaintID" runat="server" Width="50px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Material to be purchased</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtMaterial" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Status of Complaint</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="txtStatus" runat="server" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5"></td>
                    <td class="auto-style6">
                        <asp:Button ID="btnUpdate" runat="server" OnClick="btnUpdate_Click" Text="Update" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style2">
                        <asp:Button ID="btnReport" runat="server" Text="Generate Report" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
