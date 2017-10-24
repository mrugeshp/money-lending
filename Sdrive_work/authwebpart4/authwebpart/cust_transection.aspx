<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cust_transection.aspx.cs" Inherits="authwebpart.cust_transection" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            margin-bottom: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style2" DataSourceID="SqlDataSource1" Height="192px" Width="410px" OnRowDataBound="GridView1_RowDataBound">
                        <Columns>
                              <asp:BoundField DataField="t_date" HeaderText="t_date" SortExpression="t_date" />
                            
                            
                               <asp:TemplateField HeaderText="Credit(in Rs.)"  ></asp:TemplateField>
                              <asp:TemplateField HeaderText="Debit(in Rs.)"></asp:TemplateField>
                            
                            
                            <asp:BoundField DataField="t_type" HeaderText="t_type" SortExpression="t_type"  />
                          
                            <asp:BoundField DataField="t_amount" HeaderText="t_amount" SortExpression="t_amount"  />
                          
                           
                           
                           
                          
                           
                           
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=S:\Software\server\authwebpart3\authwebpart\App_Data\serverndb.mdf;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [t_type], [t_date], [t_amount] FROM [transection] WHERE ([c_id] = @c_id) ORDER BY [t_date] DESC">
                        <SelectParameters>
                            <asp:SessionParameter Name="c_id" SessionField="c_id" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
