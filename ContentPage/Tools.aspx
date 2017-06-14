<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Tools.aspx.cs" Inherits="BorrowAutomation.ContentPage.Tool" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style3">ID Tool :</td>
            <td>
                                <asp:TextBox ID="tbIDTool" runat="server" BorderStyle="Outset" Width="120px"></asp:TextBox>
                            </td>
            <td class="auto-style3">ID Tool :</td>
            <td>
                                <asp:TextBox ID="tbIDTool1" runat="server" BorderStyle="Outset" Width="120px" Enabled="False"></asp:TextBox>
                            <asp:CheckBox ID="cbIDTools" runat="server" OnCheckedChanged="cbIDTools_CheckedChanged" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Name Tool :</td>
            <td>
                                <asp:TextBox ID="tbNameTool" runat="server" BorderStyle="Outset" Width="120px"></asp:TextBox>
                            </td>
            <td class="auto-style3">Name Tool :</td>
            <td>
                                <asp:TextBox ID="tbNameTool1" runat="server" BorderStyle="Outset" Width="120px" Enabled="False"></asp:TextBox>
                            <asp:CheckBox ID="cbDescrip" runat="server" OnCheckedChanged="cbDecsrip_CheckedChanged" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>
                <asp:ImageButton ID="btnSave" runat="server" BorderStyle="Outset" Height="50px" ImageUrl="~/Image/SaveButton.png" OnClick="btnSave_Click" />
                <asp:ImageButton ID="btnReset" runat="server" BorderStyle="Inset" Height="50px" ImageUrl="~/Image/ClearButton.png" OnClick="btnReset_Click" />
            </td>
            <td class="auto-style3">&nbsp;</td>
            <td>
                <asp:ImageButton ID="btnSearch" runat="server" Height="50px" ImageUrl="~/Image/SearchButton.png" OnClick="btnSearch_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>
                                <asp:Label ID="lbStatus" runat="server" ForeColor="White" style="font-weight: 700; font-size: large"></asp:Label>
                            </td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <br />
    <asp:GridView ID="gvShow" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="CountTool" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="CountTool" HeaderText="CountTool" InsertVisible="False" ReadOnly="True" SortExpression="CountTool" />
            <asp:BoundField DataField="IDTool" HeaderText="IDTool" SortExpression="IDTool" />
            <asp:BoundField DataField="DateInvoice" DataFormatString="{0:d}" HeaderText="DateInvoice" SortExpression="DateInvoice" />
            <asp:BoundField DataField="InvoiceNumber" HeaderText="InvoiceNumber" SortExpression="InvoiceNumber" />
            <asp:BoundField DataField="DeliveryDates" DataFormatString="{0:d}" HeaderText="DeliveryDates" SortExpression="DeliveryDates" />
            <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
            <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
            <asp:BoundField DataField="Unit" HeaderText="Unit" SortExpression="Unit" />
            <asp:BoundField DataField="Price1" HeaderText="Price1" SortExpression="Price1" />
            <asp:BoundField DataField="Price2" HeaderText="Price2" SortExpression="Price2" />
            <asp:BoundField DataField="CostCenter" HeaderText="CostCenter" SortExpression="CostCenter" />
            <asp:BoundField DataField="CostCenterName" HeaderText="CostCenterName" SortExpression="CostCenterName" />
            <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
            <asp:BoundField DataField="ResponsiblePerson" HeaderText="ResponsiblePerson" SortExpression="ResponsiblePerson" />
            <asp:BoundField DataField="RegisterDepartment" HeaderText="RegisterDepartment" SortExpression="RegisterDepartment" />
            <asp:BoundField DataField="RegisterSAP" HeaderText="RegisterSAP" SortExpression="RegisterSAP" />
            <asp:BoundField DataField="RegisterAS400" HeaderText="RegisterAS400" SortExpression="RegisterAS400" />
            <asp:BoundField DataField="EV_Group" HeaderText="EV_Group" SortExpression="EV_Group" />
            <asp:BoundField DataField="InternalOrder" HeaderText="InternalOrder" SortExpression="InternalOrder" />
            <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
            <asp:BoundField DataField="DocWithdrawNumber" HeaderText="DocWithdrawNumber" SortExpression="DocWithdrawNumber" />
            <asp:BoundField DataField="DateWithdraw" DataFormatString="{0:d}" HeaderText="DateWithdraw" SortExpression="DateWithdraw" />
            <asp:BoundField DataField="FromTranfer" HeaderText="FromTranfer" SortExpression="FromTranfer" />
            <asp:BoundField DataField="DocTranfer" HeaderText="DocTranfer" SortExpression="DocTranfer" />
            <asp:BoundField DataField="Note" HeaderText="Note" SortExpression="Note" />
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BorrowConnectionString %>" DeleteCommand="DELETE FROM [Tool] WHERE [CountTool] = @CountTool" InsertCommand="INSERT INTO [Tool] ([IDTool], [DateInvoice], [InvoiceNumber], [DeliveryDates], [Description], [Amount], [Unit], [Price1], [Price2], [CostCenter], [CostCenterName], [Location], [ResponsiblePerson], [RegisterDepartment], [RegisterSAP], [RegisterAS400], [EV_Group], [InternalOrder], [Type], [DocWithdrawNumber], [DateWithdraw], [FromTranfer], [DocTranfer], [Note]) VALUES (@IDTool, @DateInvoice, @InvoiceNumber, @DeliveryDates, @Description, @Amount, @Unit, @Price1, @Price2, @CostCenter, @CostCenterName, @Location, @ResponsiblePerson, @RegisterDepartment, @RegisterSAP, @RegisterAS400, @EV_Group, @InternalOrder, @Type, @DocWithdrawNumber, @DateWithdraw, @FromTranfer, @DocTranfer, @Note)" SelectCommand="SELECT * FROM [Tool]" UpdateCommand="UPDATE [Tool] SET [IDTool] = @IDTool, [DateInvoice] = @DateInvoice, [InvoiceNumber] = @InvoiceNumber, [DeliveryDates] = @DeliveryDates, [Description] = @Description, [Amount] = @Amount, [Unit] = @Unit, [Price1] = @Price1, [Price2] = @Price2, [CostCenter] = @CostCenter, [CostCenterName] = @CostCenterName, [Location] = @Location, [ResponsiblePerson] = @ResponsiblePerson, [RegisterDepartment] = @RegisterDepartment, [RegisterSAP] = @RegisterSAP, [RegisterAS400] = @RegisterAS400, [EV_Group] = @EV_Group, [InternalOrder] = @InternalOrder, [Type] = @Type, [DocWithdrawNumber] = @DocWithdrawNumber, [DateWithdraw] = @DateWithdraw, [FromTranfer] = @FromTranfer, [DocTranfer] = @DocTranfer, [Note] = @Note WHERE [CountTool] = @CountTool">
        <DeleteParameters>
            <asp:Parameter Name="CountTool" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="IDTool" Type="Double" />
            <asp:Parameter Name="DateInvoice" Type="DateTime" />
            <asp:Parameter Name="InvoiceNumber" Type="String" />
            <asp:Parameter Name="DeliveryDates" Type="DateTime" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Amount" Type="Double" />
            <asp:Parameter Name="Unit" Type="String" />
            <asp:Parameter Name="Price1" Type="Double" />
            <asp:Parameter Name="Price2" Type="Double" />
            <asp:Parameter Name="CostCenter" Type="Double" />
            <asp:Parameter Name="CostCenterName" Type="String" />
            <asp:Parameter Name="Location" Type="Double" />
            <asp:Parameter Name="ResponsiblePerson" Type="String" />
            <asp:Parameter Name="RegisterDepartment" Type="String" />
            <asp:Parameter Name="RegisterSAP" Type="String" />
            <asp:Parameter Name="RegisterAS400" Type="String" />
            <asp:Parameter Name="EV_Group" Type="Double" />
            <asp:Parameter Name="InternalOrder" Type="String" />
            <asp:Parameter Name="Type" Type="String" />
            <asp:Parameter Name="DocWithdrawNumber" Type="Double" />
            <asp:Parameter Name="DateWithdraw" Type="DateTime" />
            <asp:Parameter Name="FromTranfer" Type="String" />
            <asp:Parameter Name="DocTranfer" Type="String" />
            <asp:Parameter Name="Note" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="IDTool" Type="Double" />
            <asp:Parameter Name="DateInvoice" Type="DateTime" />
            <asp:Parameter Name="InvoiceNumber" Type="String" />
            <asp:Parameter Name="DeliveryDates" Type="DateTime" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Amount" Type="Double" />
            <asp:Parameter Name="Unit" Type="String" />
            <asp:Parameter Name="Price1" Type="Double" />
            <asp:Parameter Name="Price2" Type="Double" />
            <asp:Parameter Name="CostCenter" Type="Double" />
            <asp:Parameter Name="CostCenterName" Type="String" />
            <asp:Parameter Name="Location" Type="Double" />
            <asp:Parameter Name="ResponsiblePerson" Type="String" />
            <asp:Parameter Name="RegisterDepartment" Type="String" />
            <asp:Parameter Name="RegisterSAP" Type="String" />
            <asp:Parameter Name="RegisterAS400" Type="String" />
            <asp:Parameter Name="EV_Group" Type="Double" />
            <asp:Parameter Name="InternalOrder" Type="String" />
            <asp:Parameter Name="Type" Type="String" />
            <asp:Parameter Name="DocWithdrawNumber" Type="Double" />
            <asp:Parameter Name="DateWithdraw" Type="DateTime" />
            <asp:Parameter Name="FromTranfer" Type="String" />
            <asp:Parameter Name="DocTranfer" Type="String" />
            <asp:Parameter Name="Note" Type="String" />
            <asp:Parameter Name="CountTool" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <div class="auto-style2">
        <asp:GridView ID="gvSearchID" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="CountTool" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="CountTool" HeaderText="CountTool" InsertVisible="False" ReadOnly="True" SortExpression="CountTool" />
                <asp:BoundField DataField="IDTool" HeaderText="IDTool" SortExpression="IDTool" />
                <asp:BoundField DataField="DateInvoice" DataFormatString="{0:d}" HeaderText="DateInvoice" SortExpression="DateInvoice" />
                <asp:BoundField DataField="InvoiceNumber" HeaderText="InvoiceNumber" SortExpression="InvoiceNumber" />
                <asp:BoundField DataField="DeliveryDates" DataFormatString="{0:d}" HeaderText="DeliveryDates" SortExpression="DeliveryDates" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                <asp:BoundField DataField="Unit" HeaderText="Unit" SortExpression="Unit" />
                <asp:BoundField DataField="Price1" HeaderText="Price1" SortExpression="Price1" />
                <asp:BoundField DataField="Price2" HeaderText="Price2" SortExpression="Price2" />
                <asp:BoundField DataField="CostCenter" HeaderText="CostCenter" SortExpression="CostCenter" />
                <asp:BoundField DataField="CostCenterName" HeaderText="CostCenterName" SortExpression="CostCenterName" />
                <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
                <asp:BoundField DataField="ResponsiblePerson" HeaderText="ResponsiblePerson" SortExpression="ResponsiblePerson" />
                <asp:BoundField DataField="RegisterDepartment" HeaderText="RegisterDepartment" SortExpression="RegisterDepartment" />
                <asp:BoundField DataField="RegisterSAP" HeaderText="RegisterSAP" SortExpression="RegisterSAP" />
                <asp:BoundField DataField="RegisterAS400" HeaderText="RegisterAS400" SortExpression="RegisterAS400" />
                <asp:BoundField DataField="EV_Group" HeaderText="EV_Group" SortExpression="EV_Group" />
                <asp:BoundField DataField="InternalOrder" HeaderText="InternalOrder" SortExpression="InternalOrder" />
                <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                <asp:BoundField DataField="DocWithdrawNumber" HeaderText="DocWithdrawNumber" SortExpression="DocWithdrawNumber" />
                <asp:BoundField DataField="DateWithdraw" DataFormatString="{0:d}" HeaderText="DateWithdraw" SortExpression="DateWithdraw" />
                <asp:BoundField DataField="FromTranfer" HeaderText="FromTranfer" SortExpression="FromTranfer" />
                <asp:BoundField DataField="DocTranfer" HeaderText="DocTranfer" SortExpression="DocTranfer" />
                <asp:BoundField DataField="Note" HeaderText="Note" SortExpression="Note" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
    </div>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BorrowConnectionString %>" DeleteCommand="DELETE FROM [Tool] WHERE [CountTool] = @CountTool" InsertCommand="INSERT INTO [Tool] ([IDTool], [DateInvoice], [InvoiceNumber], [DeliveryDates], [Description], [Amount], [Unit], [Price1], [Price2], [CostCenter], [CostCenterName], [Location], [ResponsiblePerson], [RegisterDepartment], [RegisterSAP], [RegisterAS400], [EV_Group], [InternalOrder], [Type], [DocWithdrawNumber], [DateWithdraw], [FromTranfer], [DocTranfer], [Note]) VALUES (@IDTool, @DateInvoice, @InvoiceNumber, @DeliveryDates, @Description, @Amount, @Unit, @Price1, @Price2, @CostCenter, @CostCenterName, @Location, @ResponsiblePerson, @RegisterDepartment, @RegisterSAP, @RegisterAS400, @EV_Group, @InternalOrder, @Type, @DocWithdrawNumber, @DateWithdraw, @FromTranfer, @DocTranfer, @Note)" SelectCommand="SELECT * FROM [Tool] WHERE ([IDTool] = @IDTool)" UpdateCommand="UPDATE [Tool] SET [IDTool] = @IDTool, [DateInvoice] = @DateInvoice, [InvoiceNumber] = @InvoiceNumber, [DeliveryDates] = @DeliveryDates, [Description] = @Description, [Amount] = @Amount, [Unit] = @Unit, [Price1] = @Price1, [Price2] = @Price2, [CostCenter] = @CostCenter, [CostCenterName] = @CostCenterName, [Location] = @Location, [ResponsiblePerson] = @ResponsiblePerson, [RegisterDepartment] = @RegisterDepartment, [RegisterSAP] = @RegisterSAP, [RegisterAS400] = @RegisterAS400, [EV_Group] = @EV_Group, [InternalOrder] = @InternalOrder, [Type] = @Type, [DocWithdrawNumber] = @DocWithdrawNumber, [DateWithdraw] = @DateWithdraw, [FromTranfer] = @FromTranfer, [DocTranfer] = @DocTranfer, [Note] = @Note WHERE [CountTool] = @CountTool">
        <DeleteParameters>
            <asp:Parameter Name="CountTool" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="IDTool" Type="Double" />
            <asp:Parameter Name="DateInvoice" Type="DateTime" />
            <asp:Parameter Name="InvoiceNumber" Type="String" />
            <asp:Parameter Name="DeliveryDates" Type="DateTime" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Amount" Type="Double" />
            <asp:Parameter Name="Unit" Type="String" />
            <asp:Parameter Name="Price1" Type="Double" />
            <asp:Parameter Name="Price2" Type="Double" />
            <asp:Parameter Name="CostCenter" Type="Double" />
            <asp:Parameter Name="CostCenterName" Type="String" />
            <asp:Parameter Name="Location" Type="Double" />
            <asp:Parameter Name="ResponsiblePerson" Type="String" />
            <asp:Parameter Name="RegisterDepartment" Type="String" />
            <asp:Parameter Name="RegisterSAP" Type="String" />
            <asp:Parameter Name="RegisterAS400" Type="String" />
            <asp:Parameter Name="EV_Group" Type="Double" />
            <asp:Parameter Name="InternalOrder" Type="String" />
            <asp:Parameter Name="Type" Type="String" />
            <asp:Parameter Name="DocWithdrawNumber" Type="Double" />
            <asp:Parameter Name="DateWithdraw" Type="DateTime" />
            <asp:Parameter Name="FromTranfer" Type="String" />
            <asp:Parameter Name="DocTranfer" Type="String" />
            <asp:Parameter Name="Note" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="tbIDTool1" Name="IDTool" PropertyName="Text" Type="Double" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="IDTool" Type="Double" />
            <asp:Parameter Name="DateInvoice" Type="DateTime" />
            <asp:Parameter Name="InvoiceNumber" Type="String" />
            <asp:Parameter Name="DeliveryDates" Type="DateTime" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Amount" Type="Double" />
            <asp:Parameter Name="Unit" Type="String" />
            <asp:Parameter Name="Price1" Type="Double" />
            <asp:Parameter Name="Price2" Type="Double" />
            <asp:Parameter Name="CostCenter" Type="Double" />
            <asp:Parameter Name="CostCenterName" Type="String" />
            <asp:Parameter Name="Location" Type="Double" />
            <asp:Parameter Name="ResponsiblePerson" Type="String" />
            <asp:Parameter Name="RegisterDepartment" Type="String" />
            <asp:Parameter Name="RegisterSAP" Type="String" />
            <asp:Parameter Name="RegisterAS400" Type="String" />
            <asp:Parameter Name="EV_Group" Type="Double" />
            <asp:Parameter Name="InternalOrder" Type="String" />
            <asp:Parameter Name="Type" Type="String" />
            <asp:Parameter Name="DocWithdrawNumber" Type="Double" />
            <asp:Parameter Name="DateWithdraw" Type="DateTime" />
            <asp:Parameter Name="FromTranfer" Type="String" />
            <asp:Parameter Name="DocTranfer" Type="String" />
            <asp:Parameter Name="Note" Type="String" />
            <asp:Parameter Name="CountTool" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <div class="auto-style2">
        <asp:GridView ID="gvSearchName" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="CountTool" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="CountTool" HeaderText="CountTool" InsertVisible="False" ReadOnly="True" SortExpression="CountTool" />
                <asp:BoundField DataField="IDTool" HeaderText="IDTool" SortExpression="IDTool" />
                <asp:BoundField DataField="DateInvoice" DataFormatString="{0:d}" HeaderText="DateInvoice" SortExpression="DateInvoice" />
                <asp:BoundField DataField="InvoiceNumber" HeaderText="InvoiceNumber" SortExpression="InvoiceNumber" />
                <asp:BoundField DataField="DeliveryDates" DataFormatString="{0:d}" HeaderText="DeliveryDates" SortExpression="DeliveryDates" />
                <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                <asp:BoundField DataField="Unit" HeaderText="Unit" SortExpression="Unit" />
                <asp:BoundField DataField="Price1" HeaderText="Price1" SortExpression="Price1" />
                <asp:BoundField DataField="Price2" HeaderText="Price2" SortExpression="Price2" />
                <asp:BoundField DataField="CostCenter" HeaderText="CostCenter" SortExpression="CostCenter" />
                <asp:BoundField DataField="CostCenterName" HeaderText="CostCenterName" SortExpression="CostCenterName" />
                <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
                <asp:BoundField DataField="ResponsiblePerson" HeaderText="ResponsiblePerson" SortExpression="ResponsiblePerson" />
                <asp:BoundField DataField="RegisterDepartment" HeaderText="RegisterDepartment" SortExpression="RegisterDepartment" />
                <asp:BoundField DataField="RegisterSAP" HeaderText="RegisterSAP" SortExpression="RegisterSAP" />
                <asp:BoundField DataField="RegisterAS400" HeaderText="RegisterAS400" SortExpression="RegisterAS400" />
                <asp:BoundField DataField="EV_Group" HeaderText="EV_Group" SortExpression="EV_Group" />
                <asp:BoundField DataField="InternalOrder" HeaderText="InternalOrder" SortExpression="InternalOrder" />
                <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                <asp:BoundField DataField="DocWithdrawNumber" HeaderText="DocWithdrawNumber" SortExpression="DocWithdrawNumber" />
                <asp:BoundField DataField="DateWithdraw" DataFormatString="{0:d}" HeaderText="DateWithdraw" SortExpression="DateWithdraw" />
                <asp:BoundField DataField="FromTranfer" HeaderText="FromTranfer" SortExpression="FromTranfer" />
                <asp:BoundField DataField="DocTranfer" HeaderText="DocTranfer" SortExpression="DocTranfer" />
                <asp:BoundField DataField="Note" HeaderText="Note" SortExpression="Note" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
    </div>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:BorrowConnectionString %>" DeleteCommand="DELETE FROM [Tool] WHERE [CountTool] = @CountTool" InsertCommand="INSERT INTO [Tool] ([IDTool], [DateInvoice], [InvoiceNumber], [DeliveryDates], [Description], [Amount], [Unit], [Price1], [Price2], [CostCenter], [CostCenterName], [Location], [ResponsiblePerson], [RegisterDepartment], [RegisterSAP], [RegisterAS400], [EV_Group], [InternalOrder], [Type], [DocWithdrawNumber], [DateWithdraw], [FromTranfer], [DocTranfer], [Note]) VALUES (@IDTool, @DateInvoice, @InvoiceNumber, @DeliveryDates, @Description, @Amount, @Unit, @Price1, @Price2, @CostCenter, @CostCenterName, @Location, @ResponsiblePerson, @RegisterDepartment, @RegisterSAP, @RegisterAS400, @EV_Group, @InternalOrder, @Type, @DocWithdrawNumber, @DateWithdraw, @FromTranfer, @DocTranfer, @Note)" SelectCommand="SELECT * FROM [Tool] WHERE ([Description] LIKE '%' + @Description + '%')" UpdateCommand="UPDATE [Tool] SET [IDTool] = @IDTool, [DateInvoice] = @DateInvoice, [InvoiceNumber] = @InvoiceNumber, [DeliveryDates] = @DeliveryDates, [Description] = @Description, [Amount] = @Amount, [Unit] = @Unit, [Price1] = @Price1, [Price2] = @Price2, [CostCenter] = @CostCenter, [CostCenterName] = @CostCenterName, [Location] = @Location, [ResponsiblePerson] = @ResponsiblePerson, [RegisterDepartment] = @RegisterDepartment, [RegisterSAP] = @RegisterSAP, [RegisterAS400] = @RegisterAS400, [EV_Group] = @EV_Group, [InternalOrder] = @InternalOrder, [Type] = @Type, [DocWithdrawNumber] = @DocWithdrawNumber, [DateWithdraw] = @DateWithdraw, [FromTranfer] = @FromTranfer, [DocTranfer] = @DocTranfer, [Note] = @Note WHERE [CountTool] = @CountTool">
        <DeleteParameters>
            <asp:Parameter Name="CountTool" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="IDTool" Type="Double" />
            <asp:Parameter Name="DateInvoice" Type="DateTime" />
            <asp:Parameter Name="InvoiceNumber" Type="String" />
            <asp:Parameter Name="DeliveryDates" Type="DateTime" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Amount" Type="Double" />
            <asp:Parameter Name="Unit" Type="String" />
            <asp:Parameter Name="Price1" Type="Double" />
            <asp:Parameter Name="Price2" Type="Double" />
            <asp:Parameter Name="CostCenter" Type="Double" />
            <asp:Parameter Name="CostCenterName" Type="String" />
            <asp:Parameter Name="Location" Type="Double" />
            <asp:Parameter Name="ResponsiblePerson" Type="String" />
            <asp:Parameter Name="RegisterDepartment" Type="String" />
            <asp:Parameter Name="RegisterSAP" Type="String" />
            <asp:Parameter Name="RegisterAS400" Type="String" />
            <asp:Parameter Name="EV_Group" Type="Double" />
            <asp:Parameter Name="InternalOrder" Type="String" />
            <asp:Parameter Name="Type" Type="String" />
            <asp:Parameter Name="DocWithdrawNumber" Type="Double" />
            <asp:Parameter Name="DateWithdraw" Type="DateTime" />
            <asp:Parameter Name="FromTranfer" Type="String" />
            <asp:Parameter Name="DocTranfer" Type="String" />
            <asp:Parameter Name="Note" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="tbNameTool1" Name="Description" PropertyName="Text" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="IDTool" Type="Double" />
            <asp:Parameter Name="DateInvoice" Type="DateTime" />
            <asp:Parameter Name="InvoiceNumber" Type="String" />
            <asp:Parameter Name="DeliveryDates" Type="DateTime" />
            <asp:Parameter Name="Description" Type="String" />
            <asp:Parameter Name="Amount" Type="Double" />
            <asp:Parameter Name="Unit" Type="String" />
            <asp:Parameter Name="Price1" Type="Double" />
            <asp:Parameter Name="Price2" Type="Double" />
            <asp:Parameter Name="CostCenter" Type="Double" />
            <asp:Parameter Name="CostCenterName" Type="String" />
            <asp:Parameter Name="Location" Type="Double" />
            <asp:Parameter Name="ResponsiblePerson" Type="String" />
            <asp:Parameter Name="RegisterDepartment" Type="String" />
            <asp:Parameter Name="RegisterSAP" Type="String" />
            <asp:Parameter Name="RegisterAS400" Type="String" />
            <asp:Parameter Name="EV_Group" Type="Double" />
            <asp:Parameter Name="InternalOrder" Type="String" />
            <asp:Parameter Name="Type" Type="String" />
            <asp:Parameter Name="DocWithdrawNumber" Type="Double" />
            <asp:Parameter Name="DateWithdraw" Type="DateTime" />
            <asp:Parameter Name="FromTranfer" Type="String" />
            <asp:Parameter Name="DocTranfer" Type="String" />
            <asp:Parameter Name="Note" Type="String" />
            <asp:Parameter Name="CountTool" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
