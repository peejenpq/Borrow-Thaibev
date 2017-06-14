<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Report.aspx.cs" Inherits="BorrowAutomation.ContentPage.Report" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            text-align: right;
        }
        .auto-style4 {
            text-align: center;
            width: 531px;
            color: #009933;
        }
        .auto-style5 {
            text-align: center;
            color: #009933;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:HyperLink ID="hplSumarize" runat="server" NavigateUrl="~/ContentPage/Report.aspx">Sumarize</asp:HyperLink>
&nbsp;<asp:HyperLink ID="hplCheckTools" runat="server" NavigateUrl="~/ContentPage/ReportContent/CheckTools.aspx">CheckTools</asp:HyperLink>
    </p>
    <table class="auto-style1">
        <tr>
            <td class="auto-style4"><strong>Report Borrow</strong></td>
            <td class="auto-style5"><strong>NotReturn</strong></td>
        </tr>
    </table>
    <table class="auto-style1">
        <tr>
            <td class="auto-style3">Select Date :</td>
            <td>
                <asp:TextBox ID="txtSelectDate" runat="server" TextMode="Date" Width="150px"></asp:TextBox>
            </td>
            <td class="auto-style3">

                Select Date :</td>
            <td>

                <asp:TextBox ID="txtSelectDate1" runat="server" TextMode="Date" Width="150px"></asp:TextBox>

            </td>
        </tr>
        <tr>
            <td class="auto-style3">To Date :</td>
            <td>
                <asp:TextBox ID="txtToDate" runat="server" TextMode="Date" Width="150px"></asp:TextBox>
            </td>
            <td class="auto-style3">

                To Date :</td>
            <td>

                <asp:TextBox ID="txtToDate1" runat="server" TextMode="Date" Width="150px"></asp:TextBox>

            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                &nbsp;</td>
            <td>
                <asp:ImageButton ID="btnSearch" runat="server" BorderStyle="Outset" Height="50px" ImageUrl="~/Image/SearchButton.png" OnClick="btnSearch_Click" />
                <asp:ImageButton ID="btnExport" runat="server" BorderStyle="Outset" Height="50px" ImageUrl="~/Image/xlsSaveButton.png" OnClick="btnExport_Click" />
            </td>
            <td class="auto-style3">

            </td>
            <td>

                <asp:ImageButton ID="btnSearch0" runat="server" BorderStyle="Outset" Height="50px" ImageUrl="~/Image/SearchButton.png" OnClick="btnSearch1_Click" />
                <asp:ImageButton ID="btnExport1" runat="server" BorderStyle="Outset" Height="50px" ImageUrl="~/Image/xlsSaveButton.png" OnClick="btnExport1_Click" />

            </td>
        </tr>
    </table>
    <br />
    <div class="auto-style2">
    <asp:GridView ID="gvHistory" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="CountBorrow" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="CountBorrow" HeaderText="CountBorrow" InsertVisible="False" ReadOnly="True" SortExpression="CountBorrow" />
            <asp:BoundField DataField="DateBorrow" HeaderText="DateBorrow" SortExpression="DateBorrow" DataFormatString="{0:dd/MM/yyyy}"/>
            <asp:BoundField DataField="DateReturn" HeaderText="DateReturn" SortExpression="DateReturn" DataFormatString="{0:dd/MM/yyyy}"/>
            <asp:BoundField DataField="IDTool" HeaderText="IDTool" SortExpression="IDTool" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
            <asp:BoundField DataField="Detail" HeaderText="Detail" SortExpression="Detail" />
            <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
            <asp:BoundField DataField="IDEmp" HeaderText="IDEmp" SortExpression="IDEmp" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>
    </div>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BorrowConnectionString %>" SelectCommand="SELECT * FROM [Borrow] WHERE (([DateBorrow] &gt;= @DateBorrow) AND ([DateBorrow] &lt;= @DateBorrow2))">
        <SelectParameters>
            <asp:ControlParameter ControlID="txtSelectDate" DbType="Date" Name="DateBorrow" PropertyName="Text" />
            <asp:ControlParameter ControlID="txtToDate" DbType="Date" Name="DateBorrow2" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
    <div class="auto-style2">
    <asp:GridView ID="gvNotReturn" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="CountBorrow" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:BoundField DataField="CountBorrow" HeaderText="CountBorrow" InsertVisible="False" ReadOnly="True" SortExpression="CountBorrow" />
            <asp:BoundField DataField="DateBorrow" HeaderText="DateBorrow" SortExpression="DateBorrow" DataFormatString="{0:dd/MM/yyyy}"/>
            <asp:BoundField DataField="DateReturn" HeaderText="DateReturn" SortExpression="DateReturn" DataFormatString="{0:dd/MM/yyyy}"/>
            <asp:BoundField DataField="IDTool" HeaderText="IDTool" SortExpression="IDTool" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
            <asp:BoundField DataField="Detail" HeaderText="Detail" SortExpression="Detail" />
            <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
            <asp:BoundField DataField="IDEmp" HeaderText="IDEmp" SortExpression="IDEmp" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>
    </div>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BorrowConnectionString %>" SelectCommand="SELECT * FROM [Borrow] WHERE (([DateReturn] IS NULL) AND ([DateBorrow] &gt;= @DateBorrow) AND ([DateBorrow] &lt;= @DateBorrow2))">
        <SelectParameters>
            <asp:ControlParameter ControlID="txtSelectDate1" DbType="Date" Name="DateBorrow" PropertyName="Text" />
            <asp:ControlParameter ControlID="txtToDate1" DbType="Date" Name="DateBorrow2" PropertyName="Text" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
