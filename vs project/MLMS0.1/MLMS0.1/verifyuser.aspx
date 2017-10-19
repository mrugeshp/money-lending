<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="verifyuser.aspx.cs" Inherits="MLMS0._1.verifyuser" %>

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
                    <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1">
                    </asp:GridView>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\authuser.mdf;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework" DeleteCommand="DELETE FROM [reg_user] WHERE [reg_id] = @reg_id" InsertCommand="INSERT INTO [reg_user] ([reg_uname], [reg_pass], [reg_cpass], [email_id], [mobile_no], [reg_date], [role_id], [isvalid]) VALUES (@reg_uname, @reg_pass, @reg_cpass, @email_id, @mobile_no, @reg_date, @role_id, @isvalid)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [reg_user] WHERE ([isvalid] = @isvalid)" UpdateCommand="UPDATE [reg_user] SET [reg_uname] = @reg_uname, [reg_pass] = @reg_pass, [reg_cpass] = @reg_cpass, [email_id] = @email_id, [mobile_no] = @mobile_no, [reg_date] = @reg_date, [role_id] = @role_id, [isvalid] = @isvalid WHERE [reg_id] = @reg_id">
                        <DeleteParameters>
                            <asp:Parameter Name="reg_id" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="reg_uname" Type="String" />
                            <asp:Parameter Name="reg_pass" Type="String" />
                            <asp:Parameter Name="reg_cpass" Type="String" />
                            <asp:Parameter Name="email_id" Type="String" />
                            <asp:Parameter Name="mobile_no" Type="Decimal" />
                            <asp:Parameter Name="reg_date" Type="Object" />
                            <asp:Parameter Name="role_id" Type="Decimal" />
                            <asp:Parameter Name="isvalid" Type="Boolean" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:Parameter DefaultValue="0" Name="isvalid" Type="Boolean" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="reg_uname" Type="String" />
                            <asp:Parameter Name="reg_pass" Type="String" />
                            <asp:Parameter Name="reg_cpass" Type="String" />
                            <asp:Parameter Name="email_id" Type="String" />
                            <asp:Parameter Name="mobile_no" Type="Decimal" />
                            <asp:Parameter Name="reg_date" Type="Object" />
                            <asp:Parameter Name="role_id" Type="Decimal" />
                            <asp:Parameter Name="isvalid" Type="Boolean" />
                            <asp:Parameter Name="reg_id" Type="Int32" />
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
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
