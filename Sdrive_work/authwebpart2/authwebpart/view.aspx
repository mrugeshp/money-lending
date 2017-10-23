<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="view.aspx.cs" Inherits="authwebpart.view" %>

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
            width: 81px;
        }
        .auto-style3 {
            width: 364px;
        }
        .auto-style4 {
            height: 23px;
            width: 364px;
        }
        .auto-style5 {
            width: 81px;
        }
        .auto-style9 {
            width: 153px;
        }
        .auto-style10 {
            height: 23px;
            width: 153px;
        }
        .auto-style15 {
            width: 234px;
        }
        .auto-style16 {
            height: 23px;
            width: 234px;
        }
        .auto-style19 {
            width: 170px;
        }
        .auto-style20 {
            height: 23px;
            width: 170px;
        }
        .auto-style21 {
            width: 136px;
        }
        .auto-style22 {
            height: 23px;
            width: 136px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label25" runat="server" Text="Customer Id:"></asp:Label>
                </td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style21">
                    <asp:Label ID="Label26" runat="server" Text="LastUpdated:"></asp:Label>
                </td>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label19" runat="server" Text="Name:"></asp:Label>
                </td>
                <td class="auto-style16"></td>
                <td class="auto-style22">
                    <asp:Label ID="Label20" runat="server" Text="Address:"></asp:Label>
                </td>
                <td class="auto-style20"></td>
                <td class="auto-style10"></td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label21" runat="server" Text="City:"></asp:Label>
                </td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style21">
                    <asp:Label ID="Label22" runat="server" Text="Mobile No:"></asp:Label>
                </td>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label23" runat="server" Text="InterestRate:"></asp:Label>
                </td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style21">
                    <asp:Label ID="Label24" runat="server" Text="CreditLimit:"></asp:Label>
                </td>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
              
                <td class="auto-style3">
                    <asp:HiddenField ID="HiddenField1" runat="server" />
                </td>
              
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style15">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="cust_mor_id" DataSourceID="SqlDataSource2" GridLines="Horizontal">
                        <AlternatingRowStyle BackColor="#F7F7F7" />
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="item_type" HeaderText="item_type" SortExpression="item_type" />
                            <asp:BoundField DataField="item_name" HeaderText="item_name" SortExpression="item_name" />
                            <asp:BoundField DataField="gross_weight" HeaderText="gross_weight" SortExpression="gross_weight" />
                            <asp:BoundField DataField="rate" HeaderText="rate" SortExpression="rate" />
                            <asp:BoundField DataField="amount" HeaderText="amount" SortExpression="amount" />
                            <asp:BoundField DataField="cust_mor_id" HeaderText="cust_mor_id" InsertVisible="False" ReadOnly="True" SortExpression="cust_mor_id" />
                        </Columns>
                        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <SortedAscendingCellStyle BackColor="#F4F4FD" />
                        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                        <SortedDescendingCellStyle BackColor="#D8D8F0" />
                        <SortedDescendingHeaderStyle BackColor="#3E3277" />
                    </asp:GridView>
                </td>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=S:\Software\authwebpart\authwebpart\App_Data\snewdb.mdf;Integrated Security=True" DeleteCommand="DELETE FROM cust_mor WHERE (cust_mor_id = @cust_mor_id)" SelectCommand="SELECT item_type, item_name, gross_weight, rate, amount, cust_mor_id FROM cust_mor WHERE (c_id = @c_id)" UpdateCommand="UPDATE cust_mor SET item_type = @item_type, item_name = @item_name, gross_weight = @gross_weight, rate = @rate, amount = @amount WHERE (cust_mor_id = @cust_mor_id)">
                        <DeleteParameters>
                            <asp:ControlParameter ControlID="GridView1" Name="cust_mor_id" PropertyName="SelectedValue" />
                        </DeleteParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="HiddenField1" Name="c_id" PropertyName="Value" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="item_type" />
                            <asp:Parameter Name="item_name" />
                            <asp:Parameter Name="gross_weight" />
                            <asp:Parameter Name="rate" />
                            <asp:Parameter Name="amount" />
                            <asp:ControlParameter ControlID="GridView1" Name="cust_mor_id" PropertyName="SelectedValue" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
                <td class="auto-style16"></td>
                <td class="auto-style22"></td>
                <td class="auto-style20"></td>
                <td class="auto-style10"></td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style4">
                </td>
                <td class="auto-style16">
                    </td>
                <td class="auto-style22"></td>
                <td class="auto-style20"></td>
                <td class="auto-style10"></td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style16"></td>
                <td class="auto-style22"></td>
                <td class="auto-style20"></td>
                <td class="auto-style10"></td>
                <td class="auto-style2"></td>
            </tr>
           <tr>
                                            <td class="auto-style4">
                                                <asp:Label ID="Label13" runat="server" Text="Item Type"></asp:Label>
                                            </td>
                                            <td class="auto-style16">
                                                <asp:Label ID="Label15" runat="server" Text="Item Name"></asp:Label>
                                            </td>
                                            <td class="auto-style22">
                                                <asp:Label ID="Label16" runat="server" Text="Gross Weight"></asp:Label>
                                            </td>
                                            <td class="auto-style20">
                                                <asp:Label ID="Label17" runat="server" Text="Rate"></asp:Label>
                                            </td>
                                            <td class="auto-style10">
                                                <asp:Label ID="Label18" runat="server" Text="Amount"></asp:Label>
                                            </td>
                                            <td class="auto-style2">
                                                </td>
                                           
                                        </tr>
            <tr>
                <td class="auto-style3"> <asp:DropDownList ID="DropDownList1" runat="server" Height="16px">
                                                    <asp:ListItem>--SELECT--</asp:ListItem>
                                                    <asp:ListItem>gold</asp:ListItem>
                                                    <asp:ListItem>silver</asp:ListItem>
                                                    <asp:ListItem>platinium</asp:ListItem>
                                                </asp:DropDownList></td>
                <td class="auto-style15"> <asp:TextBox ID="TextBox10" runat="server" Height="22px"></asp:TextBox></td>
                <td class="auto-style21">                                                <asp:TextBox runat="server" ID="TextBox12"></asp:TextBox>

                                            </td>
                <td class="auto-style19">
                                                <asp:TextBox runat="server" Width="79px" ID="TextBox14"></asp:TextBox>

                                            </td>
                <td class="auto-style9">
                                                <asp:TextBox runat="server" Height="17px" Width="98px" ID="TextBox16"></asp:TextBox>

                                            </td>
                <td class="auto-style5">
                    <asp:LinkButton ID="LinkButton1" runat="server">Add</asp:LinkButton>
                </td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style16"></td>
                <td class="auto-style22">
                    <asp:Button ID="Button4" runat="server" Height="26px" OnClick="Button4_Click" Text="addtogrid" />
                </td>
                <td class="auto-style20"></td>
                <td class="auto-style10"></td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style15">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" Width="90px">
                        <asp:ListItem Value="c">credit</asp:ListItem>
                        <asp:ListItem Value="d">debit</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style16"></td>
                <td class="auto-style22"></td>
                <td class="auto-style20"></td>
                <td class="auto-style10"></td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style15">
                    <asp:TextBox ID="TextBox17" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style21">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Submit" />
                </td>
                <td class="auto-style19">
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Submit and close" />
                </td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style22">&nbsp;</td>
                <td class="auto-style20">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style15">&nbsp;</td>
                <td class="auto-style21">&nbsp;</td>
                <td class="auto-style19">&nbsp;</td>
                <td class="auto-style9">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
