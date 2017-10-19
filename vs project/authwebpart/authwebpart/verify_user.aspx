<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="verify_user.aspx.cs" Inherits="authwebpart.verify_user" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
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
                <td class="auto-style2">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(localdb)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\authuser.mdf;Integrated Security=True" DeleteCommand="DELETE FROM [reg_user] WHERE [reg_id] = @reg_id" InsertCommand="INSERT INTO [reg_user] ([reg_uname], [reg_pass], [reg_cpass], [email_id], [mobile_no], [reg_date], [role_id], [isvalid]) VALUES (@reg_uname, @reg_pass, @reg_cpass, @email_id, @mobile_no, @reg_date, @role_id, @isvalid)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [reg_user] WHERE ([isvalid] = @isvalid)" UpdateCommand="UPDATE [reg_user] SET [reg_uname] = @reg_uname, [reg_pass] = @reg_pass, [reg_cpass] = @reg_cpass, [email_id] = @email_id, [mobile_no] = @mobile_no, [reg_date] = @reg_date, [role_id] = @role_id, [isvalid] = @isvalid WHERE [reg_id] = @reg_id">
                        <DeleteParameters>
                            <asp:Parameter Name="reg_id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="reg_uname" Type="String" />
                            <asp:Parameter Name="reg_pass" Type="String" />
                            <asp:Parameter Name="reg_cpass" Type="String" />
                            <asp:Parameter Name="email_id" Type="String" />
                            <asp:Parameter Name="mobile_no" Type="Decimal" />
                            <asp:Parameter Name="reg_date" Type="DateTime" />
                            <asp:Parameter Name="role_id" Type="Decimal" />
                            <asp:Parameter Name="isvalid" Type="Boolean" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:Parameter DefaultValue="false" Name="isvalid" Type="Boolean" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="reg_uname" Type="String" />
                            <asp:Parameter Name="reg_pass" Type="String" />
                            <asp:Parameter Name="reg_cpass" Type="String" />
                            <asp:Parameter Name="email_id" Type="String" />
                            <asp:Parameter Name="mobile_no" Type="Decimal" />
                            <asp:Parameter Name="reg_date" Type="DateTime" />
                            <asp:Parameter Name="role_id" Type="Decimal" />
                            <asp:Parameter Name="isvalid" Type="Boolean" />
                            <asp:Parameter Name="reg_id" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="auto-style2"></td>
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
                <td class="auto-style2">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="reg_id" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="reg_id" HeaderText="reg_id" InsertVisible="False" ReadOnly="True" SortExpression="reg_id" />
                            <asp:BoundField DataField="reg_uname" HeaderText="reg_uname" SortExpression="reg_uname" />
                            <asp:BoundField DataField="reg_pass" HeaderText="reg_pass" SortExpression="reg_pass" />
                            <asp:BoundField DataField="email_id" HeaderText="email_id" SortExpression="email_id" />
                            <asp:BoundField DataField="mobile_no" HeaderText="mobile_no" SortExpression="mobile_no" />
                            <asp:BoundField DataField="reg_date" HeaderText="reg_date" SortExpression="reg_date" />
                            <asp:BoundField DataField="role_id" HeaderText="role_id" SortExpression="role_id" />
                            <asp:CheckBoxField DataField="isvalid" HeaderText="isvalid" SortExpression="isvalid" />
                        </Columns>
                    </asp:GridView>
                </td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:FormView ID="FormView1" runat="server" DataKeyNames="reg_id" DataSourceID="SqlDataSource2">
                        <EditItemTemplate>
                            reg_id:
                            <asp:Label ID="reg_idLabel1" runat="server" Text='<%# Eval("reg_id") %>' />
                            <br />
                            mobile_no:
                            <asp:TextBox ID="mobile_noTextBox" runat="server" Text='<%# Bind("mobile_no") %>' />
                            <br />
                            email_id:
                            <asp:TextBox ID="email_idTextBox" runat="server" Text='<%# Bind("email_id") %>' />
                            <br />
                            isvalid:
                            <asp:CheckBox ID="isvalidCheckBox" runat="server" Checked='<%# Bind("isvalid") %>' />
                            <br />
                            reg_uname:
                            <asp:TextBox ID="reg_unameTextBox" runat="server" Text='<%# Bind("reg_uname") %>' />
                            <br />
                            reg_date:
                            <asp:TextBox ID="reg_dateTextBox" runat="server" Text='<%# Bind("reg_date") %>' />
                            <br />
                            role_id:
                            <asp:TextBox ID="role_idTextBox" runat="server" Text='<%# Bind("role_id") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            mobile_no:
                            <asp:TextBox ID="mobile_noTextBox" runat="server" Text='<%# Bind("mobile_no") %>' />
                            <br />
                            email_id:
                            <asp:TextBox ID="email_idTextBox" runat="server" Text='<%# Bind("email_id") %>' />
                            <br />
                            isvalid:
                            <asp:CheckBox ID="isvalidCheckBox" runat="server" Checked='<%# Bind("isvalid") %>' />
                            <br />
                            reg_uname:
                            <asp:TextBox ID="reg_unameTextBox" runat="server" Text='<%# Bind("reg_uname") %>' />
                            <br />
                            reg_date:
                            <asp:TextBox ID="reg_dateTextBox" runat="server" Text='<%# Bind("reg_date") %>' />
                            <br />
                            role_id:
                            <asp:TextBox ID="role_idTextBox" runat="server" Text='<%# Bind("role_id") %>' />
                            <br />
                            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </InsertItemTemplate>
                        <ItemTemplate>
                            reg_id:
                            <asp:Label ID="reg_idLabel" runat="server" Text='<%# Eval("reg_id") %>' />
                            <br />
                            mobile_no:
                            <asp:Label ID="mobile_noLabel" runat="server" Text='<%# Bind("mobile_no") %>' />
                            <br />
                            email_id:
                            <asp:Label ID="email_idLabel" runat="server" Text='<%# Bind("email_id") %>' />
                            <br />
                            isvalid:
                            <asp:CheckBox ID="isvalidCheckBox" runat="server" Checked='<%# Bind("isvalid") %>' Enabled="false" />
                            <br />
                            reg_uname:
                            <asp:Label ID="reg_unameLabel" runat="server" Text='<%# Bind("reg_uname") %>' />
                            <br />
                            reg_date:
                            <asp:Label ID="reg_dateLabel" runat="server" Text='<%# Bind("reg_date") %>' />
                            <br />
                            role_id:
                            <asp:Label ID="role_idLabel" runat="server" Text='<%# Bind("role_id") %>' />
                            <br />
                            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                        </ItemTemplate>
                    </asp:FormView>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=(localdb)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\authuser.mdf;Integrated Security=True" DeleteCommand="DELETE FROM [reg_user] WHERE [reg_id] = @reg_id" InsertCommand="INSERT INTO [reg_user] ([mobile_no], [email_id], [isvalid], [reg_uname], [reg_date], [role_id]) VALUES (@mobile_no, @email_id, @isvalid, @reg_uname, @reg_date, @role_id)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [reg_id], [mobile_no], [email_id], [isvalid], [reg_uname], [reg_date], [role_id] FROM [reg_user] WHERE ([reg_id] = @reg_id)" UpdateCommand="UPDATE [reg_user] SET [mobile_no] = @mobile_no, [email_id] = @email_id, [isvalid] = @isvalid, [reg_uname] = @reg_uname, [reg_date] = @reg_date, [role_id] = @role_id WHERE [reg_id] = @reg_id">
            <DeleteParameters>
                <asp:Parameter Name="reg_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="mobile_no" Type="Decimal" />
                <asp:Parameter Name="email_id" Type="String" />
                <asp:Parameter Name="isvalid" Type="Boolean" />
                <asp:Parameter Name="reg_uname" Type="String" />
                <asp:Parameter Name="reg_date" Type="DateTime" />
                <asp:Parameter Name="role_id" Type="Decimal" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="reg_id" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="mobile_no" Type="Decimal" />
                <asp:Parameter Name="email_id" Type="String" />
                <asp:Parameter Name="isvalid" Type="Boolean" />
                <asp:Parameter Name="reg_uname" Type="String" />
                <asp:Parameter Name="reg_date" Type="DateTime" />
                <asp:Parameter Name="role_id" Type="Decimal" />
                <asp:Parameter Name="reg_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <div>
        </div>
    </form>
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
</body>
</html>
