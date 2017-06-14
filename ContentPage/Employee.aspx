<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Employee.aspx.cs" Inherits="BorrowAutomation.ContentPage.Employee" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style3 {
            text-align: right;
        }
        .auto-style4 {
            width: 426px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style3">ID Employee :</td>
            <td>
                <asp:TextBox ID="tbIDEmp" runat="server" Width="150px"></asp:TextBox>
            </td>
            <td class="auto-style3">ID Employee :</td>
            <td>
                <asp:TextBox ID="tbSearID" runat="server" Enabled="False" Width="150px"></asp:TextBox>
                <asp:CheckBox ID="cbIDEmp" runat="server" OnCheckedChanged="cbIDEmp_CheckedChanged" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Name :</td>
            <td>
                <asp:TextBox ID="tbName" runat="server" Width="150px"></asp:TextBox>
            </td>
            <td class="auto-style3">Name :</td>
            <td>
                <asp:TextBox ID="tbSearName" runat="server" Enabled="False" Width="150px"></asp:TextBox>
                <asp:CheckBox ID="cbName" runat="server" OnCheckedChanged="cbName_CheckedChanged" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">Department :</td>
            <td>
                <asp:TextBox ID="tbDepartment" runat="server" Width="150px"></asp:TextBox>
            </td>
            <td class="auto-style3">Department :</td>
            <td>
                <asp:TextBox ID="tbSeaDepart" runat="server" Enabled="False" Width="150px"></asp:TextBox>
                <asp:CheckBox ID="cbDepart" runat="server" OnCheckedChanged="cbDepart_CheckedChanged" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>
                <asp:ImageButton ID="btnSave" runat="server" BorderStyle="Outset" Height="50px" ImageUrl="~/Image/AddEmployeeButton.png" OnClick="btnSave_Click" />
                <asp:ImageButton ID="btnReset" runat="server" BorderStyle="Inset" Height="50px" ImageUrl="~/Image/ClearButton.png" OnClick="btnReset_Click" />
            </td>
            <td class="auto-style3">&nbsp;</td>
            <td>
                <asp:ImageButton ID="ImageButton1" runat="server" BorderStyle="Outset" Height="50px" ImageUrl="~/Image/SearchButton.png" OnClick="btnSearch_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>
                                <asp:Label ID="lbStatus" runat="server"></asp:Label>
                            </td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <div class="auto-style2">
&nbsp;<table class="auto-style1">
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>
                    <asp:GridView ID="gvShow" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="CountEmp" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="559px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="CountEmp" HeaderText="CountEmp" InsertVisible="False" ReadOnly="True" SortExpression="CountEmp" />
                            <asp:BoundField DataField="IDEmp" HeaderText="IDEmp" SortExpression="IDEmp" />
                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                            <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BorrowConnectionString %>" DeleteCommand="DELETE FROM [Employee] WHERE [CountEmp] = @CountEmp" InsertCommand="INSERT INTO [Employee] ([IDEmp], [Name], [Department]) VALUES (@IDEmp, @Name, @Department)" SelectCommand="SELECT * FROM [Employee]" UpdateCommand="UPDATE [Employee] SET [IDEmp] = @IDEmp, [Name] = @Name, [Department] = @Department WHERE [CountEmp] = @CountEmp">
                        <DeleteParameters>
                            <asp:Parameter Name="CountEmp" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="IDEmp" Type="Double" />
                            <asp:Parameter Name="Name" Type="String" />
                            <asp:Parameter Name="Department" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="IDEmp" Type="Double" />
                            <asp:Parameter Name="Name" Type="String" />
                            <asp:Parameter Name="Department" Type="String" />
                            <asp:Parameter Name="CountEmp" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>
                    <asp:GridView ID="gvIDEmp" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="CountEmp" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Visible="False" Width="559px">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="CountEmp" HeaderText="CountEmp" InsertVisible="False" ReadOnly="True" SortExpression="CountEmp" />
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
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BorrowConnectionString %>" DeleteCommand="DELETE FROM [Employee] WHERE [CountEmp] = @CountEmp" InsertCommand="INSERT INTO [Employee] ([IDEmp], [Name], [Department]) VALUES (@IDEmp, @Name, @Department)" SelectCommand="SELECT * FROM [Employee] WHERE ([IDEmp] = @IDEmp)" UpdateCommand="UPDATE [Employee] SET [IDEmp] = @IDEmp, [Name] = @Name, [Department] = @Department WHERE [CountEmp] = @CountEmp">
                        <DeleteParameters>
                            <asp:Parameter Name="CountEmp" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="IDEmp" Type="Double" />
                            <asp:Parameter Name="Name" Type="String" />
                            <asp:Parameter Name="Department" Type="String" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="tbSearID" Name="IDEmp" PropertyName="Text" Type="Double" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="IDEmp" Type="Double" />
                            <asp:Parameter Name="Name" Type="String" />
                            <asp:Parameter Name="Department" Type="String" />
                            <asp:Parameter Name="CountEmp" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>
                    <asp:GridView ID="gvName" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" DataKeyNames="CountEmp" DataSourceID="SqlDataSource3" GridLines="None" Visible="False" Width="558px">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="CountEmp" HeaderText="CountEmp" InsertVisible="False" ReadOnly="True" SortExpression="CountEmp" />
                            <asp:BoundField DataField="IDEmp" HeaderText="IDEmp" SortExpression="IDEmp" />
                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                            <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department" />
                        </Columns>
                        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                        <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                        <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#594B9C" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#33276A" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:BorrowConnectionString %>" DeleteCommand="DELETE FROM [Employee] WHERE [CountEmp] = @CountEmp" InsertCommand="INSERT INTO [Employee] ([IDEmp], [Name], [Department]) VALUES (@IDEmp, @Name, @Department)" SelectCommand="SELECT * FROM [Employee] WHERE ([Name] LIKE '%' + @Name + '%')" UpdateCommand="UPDATE [Employee] SET [IDEmp] = @IDEmp, [Name] = @Name, [Department] = @Department WHERE [CountEmp] = @CountEmp">
                        <DeleteParameters>
                            <asp:Parameter Name="CountEmp" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="IDEmp" Type="Double" />
                            <asp:Parameter Name="Name" Type="String" />
                            <asp:Parameter Name="Department" Type="String" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="tbSearName" Name="Name" PropertyName="Text" Type="String" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="IDEmp" Type="Double" />
                            <asp:Parameter Name="Name" Type="String" />
                            <asp:Parameter Name="Department" Type="String" />
                            <asp:Parameter Name="CountEmp" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td>
                    <asp:GridView ID="gvDepart" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="CountEmp" DataSourceID="SqlDataSource4" Visible="False" Width="557px">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="CountEmp" HeaderText="CountEmp" InsertVisible="False" ReadOnly="True" SortExpression="CountEmp" />
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
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:BorrowConnectionString %>" DeleteCommand="DELETE FROM [Employee] WHERE [CountEmp] = @CountEmp" InsertCommand="INSERT INTO [Employee] ([IDEmp], [Name], [Department]) VALUES (@IDEmp, @Name, @Department)" SelectCommand="SELECT * FROM [Employee] WHERE ([Department] LIKE '%' + @Department + '%')" UpdateCommand="UPDATE [Employee] SET [IDEmp] = @IDEmp, [Name] = @Name, [Department] = @Department WHERE [CountEmp] = @CountEmp">
                        <DeleteParameters>
                            <asp:Parameter Name="CountEmp" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="IDEmp" Type="Double" />
                            <asp:Parameter Name="Name" Type="String" />
                            <asp:Parameter Name="Department" Type="String" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="tbSeaDepart" Name="Department" PropertyName="Text" Type="String" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="IDEmp" Type="Double" />
                            <asp:Parameter Name="Name" Type="String" />
                            <asp:Parameter Name="Department" Type="String" />
                            <asp:Parameter Name="CountEmp" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
    </div>
    <br />
    <br />
    <br />
</asp:Content>
