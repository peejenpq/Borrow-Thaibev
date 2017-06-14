<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="BorrowAutomation.ContentPage.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            text-align: right;
        }
        .auto-style4 {
            text-align: left;
        }
        .auto-style5 {
            height: 23px;
            text-align: center;
        }
        .auto-style6 {
            color: #009933;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2"><span class="auto-style6"><strong>Borrow</strong></span><br />
                <asp:Panel ID="Panel1" runat="server">
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style3">ID Tool :</td>
                            <td class="auto-style4">
                                <asp:TextBox ID="txtIDTool" runat="server" Width="150px"></asp:TextBox>
                                <asp:Label ID="lbIDTool" runat="server" style="color: #CC0000"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style3">ID Employee : </td>
                            <td class="auto-style4">
                                <asp:TextBox ID="txtIDEmp" runat="server" Width="150px"></asp:TextBox>
                                <asp:Label ID="lbIDEmp" runat="server" style="color: #CC0000"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style3">Date : </td>
                            <td class="auto-style4">
                                <asp:TextBox ID="txtDate" runat="server" Width="150px" TextMode="Date"></asp:TextBox>
                                <asp:Label ID="lbDate" runat="server" style="color: #CC0000"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style3">Amount :</td>
                            <td class="auto-style4">
                                <asp:TextBox ID="txtAmount" runat="server" Width="150px" TextMode="Number"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style3">Detail :</td>
                            <td class="auto-style4">
                                <asp:TextBox ID="txtDetail" runat="server" Width="150px" TextMode="MultiLine"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style3">&nbsp;</td>
                            <td class="auto-style4">
                                &nbsp;<asp:ImageButton ID="btnSave" runat="server" BorderStyle="Outset" Height="50px" ImageUrl="~/Image/SaveButton.png" OnClick="btnSave_Click" />
                                <asp:ImageButton ID="btnReset" runat="server" BorderStyle="Inset" Height="50px" ImageUrl="~/Image/ClearButton.png" OnClick="btnReset_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style3">&nbsp;</td>
                            <td class="auto-style4">
                                <asp:Label ID="lbStatus" runat="server"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td class="auto-style2"> <span class="auto-style6"><strong>Search </strong></span> <br />
                <asp:Panel ID="Panel2" runat="server">
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style3">ID Tool :</td>
                            <td class="auto-style4">
                                <asp:TextBox ID="txtSearchIDTool" runat="server" Width="150px" Enabled="False"></asp:TextBox>
                                <asp:CheckBox ID="cbIDTool" runat="server" BorderStyle="Outset" OnCheckedChanged="cbIDTool_CheckedChanged" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style3">Name Tool :</td>
                            <td class="auto-style4">
                                <asp:TextBox ID="txtSearDesc" runat="server" Width="150px" Enabled="False"></asp:TextBox>
                                <asp:CheckBox ID="cbDescription" runat="server" BorderStyle="Outset" OnCheckedChanged="cbDescription_CheckedChanged" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style3">ID Employee : </td>
                            <td class="auto-style4">
                                <asp:TextBox ID="txtSearchIDEmp" runat="server" Width="150px" Enabled="False"></asp:TextBox>
                                <asp:CheckBox ID="cbIDEmp" runat="server" BorderStyle="Outset" OnCheckedChanged="cbIDEmp_CheckedChanged" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style3">Name Employee :</td>
                            <td class="auto-style4">
                                <asp:TextBox ID="txtSearchName" runat="server" Width="150px" Enabled="False"></asp:TextBox>
                                <asp:CheckBox ID="cbName" runat="server" BorderStyle="Outset" OnCheckedChanged="cbName_CheckedChanged" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style3">&nbsp;</td>
                            <td class="auto-style4">
                                <asp:ImageButton ID="btnSearch" runat="server" Height="60px" ImageUrl="~/Image/SearchButton.png" OnClick="btnSearch_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style3">&nbsp;</td>
                            <td class="auto-style4">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style3">&nbsp;</td>
                            <td class="auto-style4">&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
    </table>
    <br />
    <table class="auto-style1">
        <tr>
            <td class="auto-style5">
                <asp:GridView ID="gvShow" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="CountBorrow" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="CountBorrow" HeaderText="CountBorrow" InsertVisible="False" ReadOnly="True" SortExpression="CountBorrow" />
                        <asp:BoundField DataField="DateBorrow" DataFormatString="{0:d}" HeaderText="DateBorrow" SortExpression="DateBorrow" />
                        <asp:TemplateField HeaderText="DateReturn" SortExpression="DateReturn">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("DateReturn") %>' TextMode="Date"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("DateReturn", "{0:d}") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="IDTool" HeaderText="IDTool" SortExpression="IDTool" />
                        <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                        <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                        <asp:BoundField DataField="Detail" HeaderText="Detail" SortExpression="Detail" />
                        <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                        <asp:BoundField DataField="IDEmp" HeaderText="IDEmp" SortExpression="IDEmp" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BorrowConnectionString %>" DeleteCommand="DELETE FROM [Borrow] WHERE [CountBorrow] = @CountBorrow" InsertCommand="INSERT INTO [Borrow] ([DateBorrow], [DateReturn], [IDTool], [Description], [Amount], [Detail], [Status], [IDEmp], [Name], [Department]) VALUES (@DateBorrow, @DateReturn, @IDTool, @Description, @Amount, @Detail, @Status, @IDEmp, @Name, @Department)" SelectCommand="SELECT * FROM [Borrow]" UpdateCommand="UPDATE [Borrow] SET [DateBorrow] = @DateBorrow, [DateReturn] = @DateReturn, [IDTool] = @IDTool, [Description] = @Description, [Amount] = @Amount, [Detail] = @Detail, [Status] = @Status, [IDEmp] = @IDEmp, [Name] = @Name, [Department] = @Department WHERE [CountBorrow] = @CountBorrow">
                    <DeleteParameters>
                        <asp:Parameter Name="CountBorrow" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter DbType="Date" Name="DateBorrow" />
                        <asp:Parameter DbType="Date" Name="DateReturn" />
                        <asp:Parameter Name="IDTool" Type="Double" />
                        <asp:Parameter Name="Description" Type="String" />
                        <asp:Parameter Name="Amount" Type="String" />
                        <asp:Parameter Name="Detail" Type="String" />
                        <asp:Parameter Name="Status" Type="String" />
                        <asp:Parameter Name="IDEmp" Type="Double" />
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Department" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter DbType="Date" Name="DateBorrow" />
                        <asp:Parameter DbType="Date" Name="DateReturn" />
                        <asp:Parameter Name="IDTool" Type="Double" />
                        <asp:Parameter Name="Description" Type="String" />
                        <asp:Parameter Name="Amount" Type="String" />
                        <asp:Parameter Name="Detail" Type="String" />
                        <asp:Parameter Name="Status" Type="String" />
                        <asp:Parameter Name="IDEmp" Type="Double" />
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Department" Type="String" />
                        <asp:Parameter Name="CountBorrow" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />
                <asp:GridView ID="gvIDTool" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="CountBorrow" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="CountBorrow" HeaderText="CountBorrow" InsertVisible="False" ReadOnly="True" SortExpression="CountBorrow" />
                        <asp:BoundField DataField="DateBorrow" DataFormatString="{0:d}" HeaderText="DateBorrow" SortExpression="DateBorrow" />
                        <asp:TemplateField HeaderText="DateReturn" SortExpression="DateReturn">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("DateReturn") %>' TextMode="Date"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("DateReturn", "{0:d}") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="IDTool" HeaderText="IDTool" SortExpression="IDTool" />
                        <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                        <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                        <asp:BoundField DataField="Detail" HeaderText="Detail" SortExpression="Detail" />
                        <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                        <asp:BoundField DataField="IDEmp" HeaderText="IDEmp" SortExpression="IDEmp" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
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
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BorrowConnectionString %>" DeleteCommand="DELETE FROM [Borrow] WHERE [CountBorrow] = @CountBorrow" InsertCommand="INSERT INTO [Borrow] ([DateBorrow], [DateReturn], [IDTool], [Description], [Amount], [Detail], [Status], [IDEmp], [Name], [Department]) VALUES (@DateBorrow, @DateReturn, @IDTool, @Description, @Amount, @Detail, @Status, @IDEmp, @Name, @Department)" SelectCommand="SELECT * FROM [Borrow] WHERE ([IDTool] = @IDTool)" UpdateCommand="UPDATE [Borrow] SET [DateBorrow] = @DateBorrow, [DateReturn] = @DateReturn, [IDTool] = @IDTool, [Description] = @Description, [Amount] = @Amount, [Detail] = @Detail, [Status] = @Status, [IDEmp] = @IDEmp, [Name] = @Name, [Department] = @Department WHERE [CountBorrow] = @CountBorrow">
                    <DeleteParameters>
                        <asp:Parameter Name="CountBorrow" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter DbType="Date" Name="DateBorrow" />
                        <asp:Parameter DbType="Date" Name="DateReturn" />
                        <asp:Parameter Name="IDTool" Type="Double" />
                        <asp:Parameter Name="Description" Type="String" />
                        <asp:Parameter Name="Amount" Type="String" />
                        <asp:Parameter Name="Detail" Type="String" />
                        <asp:Parameter Name="Status" Type="String" />
                        <asp:Parameter Name="IDEmp" Type="Double" />
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Department" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="txtSearchIDTool" Name="IDTool" PropertyName="Text" Type="Double" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter DbType="Date" Name="DateBorrow" />
                        <asp:Parameter DbType="Date" Name="DateReturn" />
                        <asp:Parameter Name="IDTool" Type="Double" />
                        <asp:Parameter Name="Description" Type="String" />
                        <asp:Parameter Name="Amount" Type="String" />
                        <asp:Parameter Name="Detail" Type="String" />
                        <asp:Parameter Name="Status" Type="String" />
                        <asp:Parameter Name="IDEmp" Type="Double" />
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Department" Type="String" />
                        <asp:Parameter Name="CountBorrow" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />
                <asp:GridView ID="gvDescription" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="CountBorrow" DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="CountBorrow" HeaderText="CountBorrow" InsertVisible="False" ReadOnly="True" SortExpression="CountBorrow" />
                        <asp:BoundField DataField="DateBorrow" DataFormatString="{0:d}" HeaderText="DateBorrow" SortExpression="DateBorrow" />
                        <asp:TemplateField HeaderText="DateReturn" SortExpression="DateReturn">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("DateReturn") %>' TextMode="Date"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("DateReturn", "{0:d}") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="IDTool" HeaderText="IDTool" SortExpression="IDTool" />
                        <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                        <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                        <asp:BoundField DataField="Detail" HeaderText="Detail" SortExpression="Detail" />
                        <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                        <asp:BoundField DataField="IDEmp" HeaderText="IDEmp" SortExpression="IDEmp" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
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
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:BorrowConnectionString %>" DeleteCommand="DELETE FROM [Borrow] WHERE [CountBorrow] = @CountBorrow" InsertCommand="INSERT INTO [Borrow] ([DateBorrow], [DateReturn], [IDTool], [Description], [Amount], [Detail], [Status], [IDEmp], [Name], [Department]) VALUES (@DateBorrow, @DateReturn, @IDTool, @Description, @Amount, @Detail, @Status, @IDEmp, @Name, @Department)" SelectCommand="SELECT * FROM [Borrow] WHERE ([Description] LIKE '%' + @Description + '%')" UpdateCommand="UPDATE [Borrow] SET [DateBorrow] = @DateBorrow, [DateReturn] = @DateReturn, [IDTool] = @IDTool, [Description] = @Description, [Amount] = @Amount, [Detail] = @Detail, [Status] = @Status, [IDEmp] = @IDEmp, [Name] = @Name, [Department] = @Department WHERE [CountBorrow] = @CountBorrow">
                    <DeleteParameters>
                        <asp:Parameter Name="CountBorrow" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter DbType="Date" Name="DateBorrow" />
                        <asp:Parameter DbType="Date" Name="DateReturn" />
                        <asp:Parameter Name="IDTool" Type="Double" />
                        <asp:Parameter Name="Description" Type="String" />
                        <asp:Parameter Name="Amount" Type="String" />
                        <asp:Parameter Name="Detail" Type="String" />
                        <asp:Parameter Name="Status" Type="String" />
                        <asp:Parameter Name="IDEmp" Type="Double" />
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Department" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="txtSearDesc" Name="Description" PropertyName="Text" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter DbType="Date" Name="DateBorrow" />
                        <asp:Parameter DbType="Date" Name="DateReturn" />
                        <asp:Parameter Name="IDTool" Type="Double" />
                        <asp:Parameter Name="Description" Type="String" />
                        <asp:Parameter Name="Amount" Type="String" />
                        <asp:Parameter Name="Detail" Type="String" />
                        <asp:Parameter Name="Status" Type="String" />
                        <asp:Parameter Name="IDEmp" Type="Double" />
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Department" Type="String" />
                        <asp:Parameter Name="CountBorrow" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />
                <asp:GridView ID="gvIDEmp" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="CountBorrow" DataSourceID="SqlDataSource4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="CountBorrow" HeaderText="CountBorrow" InsertVisible="False" ReadOnly="True" SortExpression="CountBorrow" />
                        <asp:BoundField DataField="DateBorrow" DataFormatString="{0:d}" HeaderText="DateBorrow" SortExpression="DateBorrow" />
                        <asp:TemplateField HeaderText="DateReturn" SortExpression="DateReturn">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("DateReturn") %>' TextMode="Date"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("DateReturn", "{0:d}") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="IDTool" HeaderText="IDTool" SortExpression="IDTool" />
                        <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                        <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                        <asp:BoundField DataField="Detail" HeaderText="Detail" SortExpression="Detail" />
                        <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                        <asp:BoundField DataField="IDEmp" HeaderText="IDEmp" SortExpression="IDEmp" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
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
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:BorrowConnectionString %>" DeleteCommand="DELETE FROM [Borrow] WHERE [CountBorrow] = @CountBorrow" InsertCommand="INSERT INTO [Borrow] ([DateBorrow], [DateReturn], [IDTool], [Description], [Amount], [Detail], [Status], [IDEmp], [Name], [Department]) VALUES (@DateBorrow, @DateReturn, @IDTool, @Description, @Amount, @Detail, @Status, @IDEmp, @Name, @Department)" SelectCommand="SELECT * FROM [Borrow] WHERE ([IDEmp] = @IDEmp)" UpdateCommand="UPDATE [Borrow] SET [DateBorrow] = @DateBorrow, [DateReturn] = @DateReturn, [IDTool] = @IDTool, [Description] = @Description, [Amount] = @Amount, [Detail] = @Detail, [Status] = @Status, [IDEmp] = @IDEmp, [Name] = @Name, [Department] = @Department WHERE [CountBorrow] = @CountBorrow">
                    <DeleteParameters>
                        <asp:Parameter Name="CountBorrow" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter DbType="Date" Name="DateBorrow" />
                        <asp:Parameter DbType="Date" Name="DateReturn" />
                        <asp:Parameter Name="IDTool" Type="Double" />
                        <asp:Parameter Name="Description" Type="String" />
                        <asp:Parameter Name="Amount" Type="String" />
                        <asp:Parameter Name="Detail" Type="String" />
                        <asp:Parameter Name="Status" Type="String" />
                        <asp:Parameter Name="IDEmp" Type="Double" />
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Department" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="txtSearchIDEmp" Name="IDEmp" PropertyName="Text" Type="Double" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter DbType="Date" Name="DateBorrow" />
                        <asp:Parameter DbType="Date" Name="DateReturn" />
                        <asp:Parameter Name="IDTool" Type="Double" />
                        <asp:Parameter Name="Description" Type="String" />
                        <asp:Parameter Name="Amount" Type="String" />
                        <asp:Parameter Name="Detail" Type="String" />
                        <asp:Parameter Name="Status" Type="String" />
                        <asp:Parameter Name="IDEmp" Type="Double" />
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Department" Type="String" />
                        <asp:Parameter Name="CountBorrow" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />
                <asp:GridView ID="gvName" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="CountBorrow" DataSourceID="SqlDataSource5" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="CountBorrow" HeaderText="CountBorrow" InsertVisible="False" ReadOnly="True" SortExpression="CountBorrow" />
                        <asp:BoundField DataField="DateBorrow" DataFormatString="{0:d}" HeaderText="DateBorrow" SortExpression="DateBorrow" />
                        <asp:TemplateField HeaderText="DateReturn" SortExpression="DateReturn">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("DateReturn") %>' TextMode="Date"></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("DateReturn", "{0:d}") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="IDTool" HeaderText="IDTool" SortExpression="IDTool" />
                        <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                        <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                        <asp:BoundField DataField="Detail" HeaderText="Detail" SortExpression="Detail" />
                        <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                        <asp:BoundField DataField="IDEmp" HeaderText="IDEmp" SortExpression="IDEmp" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
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
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:BorrowConnectionString %>" DeleteCommand="DELETE FROM [Borrow] WHERE [CountBorrow] = @CountBorrow" InsertCommand="INSERT INTO [Borrow] ([DateBorrow], [DateReturn], [IDTool], [Description], [Amount], [Detail], [Status], [IDEmp], [Name], [Department]) VALUES (@DateBorrow, @DateReturn, @IDTool, @Description, @Amount, @Detail, @Status, @IDEmp, @Name, @Department)" SelectCommand="SELECT * FROM [Borrow] WHERE ([Name] LIKE '%' + @Name + '%')" UpdateCommand="UPDATE [Borrow] SET [DateBorrow] = @DateBorrow, [DateReturn] = @DateReturn, [IDTool] = @IDTool, [Description] = @Description, [Amount] = @Amount, [Detail] = @Detail, [Status] = @Status, [IDEmp] = @IDEmp, [Name] = @Name, [Department] = @Department WHERE [CountBorrow] = @CountBorrow">
                    <DeleteParameters>
                        <asp:Parameter Name="CountBorrow" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter DbType="Date" Name="DateBorrow" />
                        <asp:Parameter DbType="Date" Name="DateReturn" />
                        <asp:Parameter Name="IDTool" Type="Double" />
                        <asp:Parameter Name="Description" Type="String" />
                        <asp:Parameter Name="Amount" Type="String" />
                        <asp:Parameter Name="Detail" Type="String" />
                        <asp:Parameter Name="Status" Type="String" />
                        <asp:Parameter Name="IDEmp" Type="Double" />
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Department" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="txtSearchName" Name="Name" PropertyName="Text" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter DbType="Date" Name="DateBorrow" />
                        <asp:Parameter DbType="Date" Name="DateReturn" />
                        <asp:Parameter Name="IDTool" Type="Double" />
                        <asp:Parameter Name="Description" Type="String" />
                        <asp:Parameter Name="Amount" Type="String" />
                        <asp:Parameter Name="Detail" Type="String" />
                        <asp:Parameter Name="Status" Type="String" />
                        <asp:Parameter Name="IDEmp" Type="Double" />
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Department" Type="String" />
                        <asp:Parameter Name="CountBorrow" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
    <br />
</asp:Content>
