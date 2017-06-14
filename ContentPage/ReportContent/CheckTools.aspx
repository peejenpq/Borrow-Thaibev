<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="CheckTools.aspx.cs" Inherits="BorrowAutomation.ContentPage.ReportContent.CheckTools" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style3 {
        height: 23px;
    }
    .auto-style4 {
        height: 23px;
        text-align: right;
    }
    .auto-style5 {
        text-align: right;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:HyperLink ID="hplSumarize" runat="server" NavigateUrl="~/ContentPage/Report.aspx">Sumarize</asp:HyperLink>
&nbsp;<asp:HyperLink ID="hplCheckTools" runat="server" NavigateUrl="~/ContentPage/ReportContent/CheckTools.aspx">CheckTools</asp:HyperLink>
        <table class="auto-style1">
            <tr>
                <td class="auto-style5">Select Date :</td>
                <td>
                    <asp:TextBox ID="txtSelectDate" runat="server" TextMode="Date" Width="150px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">To Date :</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtToDate" runat="server" TextMode="Date" Width="150px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style3">
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Defective</asp:ListItem>
                        <asp:ListItem>Repair</asp:ListItem>
                        <asp:ListItem>Disappear</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style3">
                    <asp:ImageButton ID="btnCheckTool" runat="server" BorderStyle="Outset" Height="50px" ImageUrl="~/Image/SearchButton.png" OnClick="btnCheckTools_Click" />
                    <asp:ImageButton ID="btnExport" runat="server" BorderStyle="Outset" Height="50px" ImageUrl="~/Image/xlsSaveButton.png" OnClick="btnExportStatus_Click" />
                </td>
            </tr>
        </table>
        <div class="auto-style2">
            <asp:GridView ID="gvShow" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="CountBorrow" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="CountBorrow" HeaderText="CountBorrow" InsertVisible="False" ReadOnly="True" SortExpression="CountBorrow" />
                    <asp:BoundField DataField="DateBorrow" DataFormatString="{0:d}" HeaderText="DateBorrow" SortExpression="DateBorrow" />
                    <asp:BoundField DataField="DateReturn" DataFormatString="{0:d}" HeaderText="DateReturn" SortExpression="DateReturn" />
                    <asp:BoundField DataField="IDTool" HeaderText="IDTool" SortExpression="IDTool" />
                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                    <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                    <asp:BoundField DataField="Detail" HeaderText="Detail" SortExpression="Detail" />
                    <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                    <asp:BoundField DataField="IDEmp" HeaderText="IDEmp" SortExpression="IDEmp" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BorrowConnectionString %>" SelectCommand="SELECT * FROM [Borrow] WHERE ([Status] IS NOT NULL)"></asp:SqlDataSource>
        <div class="auto-style2">
            <asp:GridView ID="gvCheck" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="CountBorrow" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:BoundField DataField="CountBorrow" HeaderText="CountBorrow" InsertVisible="False" ReadOnly="True" SortExpression="CountBorrow" />
                    <asp:BoundField DataField="DateBorrow" DataFormatString="{0:d}" HeaderText="DateBorrow" SortExpression="DateBorrow" />
                    <asp:BoundField DataField="DateReturn" DataFormatString="{0:d}" HeaderText="DateReturn" SortExpression="DateReturn" />
                    <asp:BoundField DataField="IDTool" HeaderText="IDTool" SortExpression="IDTool" />
                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                    <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                    <asp:BoundField DataField="Detail" HeaderText="Detail" SortExpression="Detail" />
                    <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                    <asp:BoundField DataField="IDEmp" HeaderText="IDEmp" SortExpression="IDEmp" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <RowStyle ForeColor="#000066" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#007DBB" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#00547E" />
            </asp:GridView>
        </div>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BorrowConnectionString %>" SelectCommand="SELECT * FROM [Borrow] WHERE (([DateBorrow] &gt;= @DateBorrow) AND ([DateBorrow] &lt;= @DateBorrow2) AND ([Status] LIKE '%' + @Status + '%'))">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtSelectDate" DbType="Date" Name="DateBorrow" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtToDate" DbType="Date" Name="DateBorrow2" PropertyName="Text" />
                <asp:ControlParameter ControlID="DropDownList1" Name="Status" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
    </p>
</asp:Content>
