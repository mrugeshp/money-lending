<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cust_list.aspx.cs" Inherits="authwebpart.cust_list" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [customer] WHERE [c_id] = @c_id" InsertCommand="INSERT INTO [customer] ([c_fname], [c_mname], [c_lname], [city], [create_date]) VALUES (@c_fname, @c_mname, @c_lname, @city, @create_date)" SelectCommand="SELECT [c_id], [c_fname], [c_mname], [c_lname], [city], [create_date] FROM [customer] ORDER BY [create_date]" UpdateCommand="UPDATE [customer] SET [c_fname] = @c_fname, [c_mname] = @c_mname, [c_lname] = @c_lname, [city] = @city, [create_date] = @create_date WHERE [c_id] = @c_id">
                        <DeleteParameters>
                            <asp:Parameter Name="c_id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="c_fname" Type="String" />
                            <asp:Parameter Name="c_mname" Type="String" />
                            <asp:Parameter Name="c_lname" Type="String" />
                            <asp:Parameter Name="city" Type="String" />
                            <asp:Parameter Name="create_date" Type="DateTime" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="c_fname" Type="String" />
                            <asp:Parameter Name="c_mname" Type="String" />
                            <asp:Parameter Name="c_lname" Type="String" />
                            <asp:Parameter Name="city" Type="String" />
                            <asp:Parameter Name="create_date" Type="DateTime" />
                            <asp:Parameter Name="c_id" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="c_id" DataSourceID="SqlDataSource1">
                        <Columns>
                          
                            <asp:BoundField DataField="c_id" HeaderText="c_id" InsertVisible="False" ReadOnly="True" SortExpression="c_id" />
                            <asp:BoundField DataField="c_fname" HeaderText="c_fname" SortExpression="c_fname" />
                            <asp:BoundField DataField="c_mname" HeaderText="c_mname" SortExpression="c_mname" />
                            <asp:BoundField DataField="c_lname" HeaderText="c_lname" SortExpression="c_lname" />
                            <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                            <asp:BoundField DataField="create_date" HeaderText="create_date" SortExpression="create_date" />
                              <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
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
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:FormView ID="FormView1" runat="server" DataKeyNames="c_id" DataSourceID="SqlDataSource2">
                        <EditItemTemplate>
                            c_id:
                            <asp:Label ID="c_idLabel1" runat="server" Text='<%# Eval("c_id") %>' />
                            <br />
                            c_fname:
                            <asp:TextBox ID="c_fnameTextBox" runat="server" Text='<%# Bind("c_fname") %>' />
                            <br />
                            c_mname:
                            <asp:TextBox ID="c_mnameTextBox" runat="server" Text='<%# Bind("c_mname") %>' />
                            <br />
                            c_lname:
                            <asp:TextBox ID="c_lnameTextBox" runat="server" Text='<%# Bind("c_lname") %>' />
                            <br />
                            address:
                            <asp:TextBox ID="addressTextBox" runat="server" Text='<%# Bind("address") %>' />
                            <br />
                            city:
                            <asp:TextBox ID="cityTextBox" runat="server" Text='<%# Bind("city") %>' />
                            <br />
                            email_id:
                            <asp:TextBox ID="email_idTextBox" runat="server" Text='<%# Bind("email_id") %>' />
                            <br />
                            mobile_no:
                            <asp:TextBox ID="mobile_noTextBox" runat="server" Text='<%# Bind("mobile_no") %>' />
                            <br />
                            cphoto_path:
                            <asp:TextBox ID="cphoto_pathTextBox" runat="server" Text='<%# Bind("cphoto_path") %>' />
                            <br />
                            mphoto_path:
                            <asp:TextBox ID="mphoto_pathTextBox" runat="server" Text='<%# Bind("mphoto_path") %>' />
                            <br />
                            create_date:
                            <asp:TextBox ID="create_dateTextBox" runat="server" Text='<%# Bind("create_date") %>' />
                            <br />
                            created_date:
                            <asp:TextBox ID="created_dateTextBox" runat="server" Text='<%# Bind("created_date") %>' />
                            <br />
                            updated_date:
                            <asp:TextBox ID="updated_dateTextBox" runat="server" Text='<%# Bind("updated_date") %>' />
                            <br />
                            interest_rate:
                            <asp:TextBox ID="interest_rateTextBox" runat="server" Text='<%# Bind("interest_rate") %>' />
                            <br />
                            credit_limit:
                            <asp:TextBox ID="credit_limitTextBox" runat="server" Text='<%# Bind("credit_limit") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            c_fname:
                            <asp:TextBox ID="c_fnameTextBox" runat="server" Text='<%# Bind("c_fname") %>' />
                            <br />
                            c_mname:
                            <asp:TextBox ID="c_mnameTextBox" runat="server" Text='<%# Bind("c_mname") %>' />
                            <br />
                            c_lname:
                            <asp:TextBox ID="c_lnameTextBox" runat="server" Text='<%# Bind("c_lname") %>' />
                            <br />
                            address:
                            <asp:TextBox ID="addressTextBox" runat="server" Text='<%# Bind("address") %>' />
                            <br />
                            city:
                            <asp:TextBox ID="cityTextBox" runat="server" Text='<%# Bind("city") %>' />
                            <br />
                            email_id:
                            <asp:TextBox ID="email_idTextBox" runat="server" Text='<%# Bind("email_id") %>' />
                            <br />
                            mobile_no:
                            <asp:TextBox ID="mobile_noTextBox" runat="server" Text='<%# Bind("mobile_no") %>' />
                            <br />
                            cphoto_path:
                            <asp:TextBox ID="cphoto_pathTextBox" runat="server" Text='<%# Bind("cphoto_path") %>' />
                            <br />
                            mphoto_path:
                            <asp:TextBox ID="mphoto_pathTextBox" runat="server" Text='<%# Bind("mphoto_path") %>' />
                            <br />
                            create_date:
                            <asp:TextBox ID="create_dateTextBox" runat="server" Text='<%# Bind("create_date") %>' />
                            <br />
                            created_date:
                            <asp:TextBox ID="created_dateTextBox" runat="server" Text='<%# Bind("created_date") %>' />
                            <br />
                            updated_date:
                            <asp:TextBox ID="updated_dateTextBox" runat="server" Text='<%# Bind("updated_date") %>' />
                            <br />
                            interest_rate:
                            <asp:TextBox ID="interest_rateTextBox" runat="server" Text='<%# Bind("interest_rate") %>' />
                            <br />
                            credit_limit:
                            <asp:TextBox ID="credit_limitTextBox" runat="server" Text='<%# Bind("credit_limit") %>' />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            c_id:
                            <asp:Label ID="c_idLabel" runat="server" Text='<%# Eval("c_id") %>' />
                            <br />
                            c_fname:
                            <asp:Label ID="c_fnameLabel" runat="server" Text='<%# Bind("c_fname") %>' />
                            <br />
                            c_mname:
                            <asp:Label ID="c_mnameLabel" runat="server" Text='<%# Bind("c_mname") %>' />
                            <br />
                            c_lname:
                            <asp:Label ID="c_lnameLabel" runat="server" Text='<%# Bind("c_lname") %>' />
                            <br />
                            address:
                            <asp:Label ID="addressLabel" runat="server" Text='<%# Bind("address") %>' />
                            <br />
                            city:
                            <asp:Label ID="cityLabel" runat="server" Text='<%# Bind("city") %>' />
                            <br />
                            email_id:
                            <asp:Label ID="email_idLabel" runat="server" Text='<%# Bind("email_id") %>' />
                            <br />
                            mobile_no:
                            <asp:Label ID="mobile_noLabel" runat="server" Text='<%# Bind("mobile_no") %>' />
                            <br />
                            cphoto_path:
                            <asp:Label ID="cphoto_pathLabel" runat="server" Text='<%# Bind("cphoto_path") %>' />
                            <br />
                            mphoto_path:
                            <asp:Label ID="mphoto_pathLabel" runat="server" Text='<%# Bind("mphoto_path") %>' />
                            <br />
                            create_date:
                            <asp:Label ID="create_dateLabel" runat="server" Text='<%# Bind("create_date") %>' />
                            <br />
                            created_date:
                            <asp:Label ID="created_dateLabel" runat="server" Text='<%# Bind("created_date") %>' />
                            <br />
                            updated_date:
                            <asp:Label ID="updated_dateLabel" runat="server" Text='<%# Bind("updated_date") %>' />
                            <br />
                            interest_rate:
                            <asp:Label ID="interest_rateLabel" runat="server" Text='<%# Bind("interest_rate") %>' />
                            <br />
                            credit_limit:
                            <asp:Label ID="credit_limitLabel" runat="server" Text='<%# Bind("credit_limit") %>' />
                            <br />

                        </ItemTemplate>
                    </asp:FormView>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [customer] WHERE ([c_id] = @c_id)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="GridView1" Name="c_id" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
