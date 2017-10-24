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
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False">
                   <Columns>
                            <asp:TemplateField HeaderText="c_id" >
                               
                                <ItemTemplate>
                              <!--      <asp:Label ID="Label1" runat="server" Text='<%# Bind("c_id") %>'></asp:Label>-->
                                    <asp:LinkButton ID="LinkButton2" OnClick="LinkButton2_Click"  Text='<%#Eval("c_id") %>'  runat="server">LinkButton</asp:LinkButton>
                                    </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="c_name">
                               
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("c_fname") %>'></asp:Label>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("c_mname") %>'></asp:Label>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("c_mname") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="c_mname" HeaderText="c_mname" Visible="false" />
                            <asp:BoundField DataField="c_lname" HeaderText="c_lname"  Visible="false"/>
                            <asp:BoundField DataField="city" HeaderText="city"  />
                            <asp:BoundField DataField="create_date" HeaderText="create_date" />
                           
                        </Columns>
                        
                    </asp:GridView>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
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
