<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="customer.aspx.cs" Inherits="authwebpart.customer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style7 {
            width: 202px;
            height: 23px;
        }
        .auto-style8 {
            height: 23px;
        }
        .auto-style9 {
            height: 22px;
        }
        .auto-style12 {
            width: 148px;
        }
        .auto-style13 {
            height: 22px;
            width: 148px;
        }
        .auto-style14 {
            width: 140px;
        }
        .auto-style15 {
            height: 22px;
            width: 140px;
        }
        .auto-style16 {
            width: 108px;
        }
        .auto-style17 {
            height: 22px;
            width: 108px;
        }
        .auto-style19 {
            width: 148px;
            height: 23px;
        }
        .auto-style20 {
            width: 140px;
            height: 23px;
        }
        .auto-style21 {
            width: 108px;
            height: 23px;
        }
        .auto-style22 {
            width: 112px;
        }
        .auto-style23 {
            height: 22px;
            width: 112px;
        }
        .auto-style24 {
            height: 23px;
            width: 112px;
        }
        .auto-style25 {
            width: 116px;
        }
        .auto-style26 {
            height: 552px;
        }
        .auto-style27 {
            width: 202px;
        }
        .auto-style28 {
            width: 202px;
            height: 22px;
        }
        .auto-style29 {
            width: 85px;
        }
        .auto-style30 {
            height: 22px;
            width: 85px;
        }
        .auto-style31 {
            width: 85px;
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style26">
                        <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="1" Height="265px" Width="722px" OnFinishButtonClick="Wizard1_FinishButtonClick" BackColor="#FFFBD6" BorderColor="#FFDFAD" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" OnNextButtonClick="Wizard1_NextButtonClick">
                            <HeaderStyle BackColor="#FFCC66" BorderColor="#FFFBD6" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Font-Size="0.9em" ForeColor="#333333" HorizontalAlign="Center" />
                            <NavigationButtonStyle BackColor="White" BorderColor="#CC9966" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#990000" />
                            <SideBarButtonStyle ForeColor="White" />
                            <SideBarStyle BackColor="#990000" Font-Size="0.9em" VerticalAlign="Top" />
                            <StartNavigationTemplate>
                                <asp:Button ID="StartNextButton" runat="server" CommandName="MoveNext" Text="Next" />
                            </StartNavigationTemplate>
                            <WizardSteps>
                                <asp:WizardStep runat="server" title="Step 1">
                                    <asp:Label ID="Label1" runat="server" Text="FirstName:"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="TextBox1" runat="server" Height="22px" Width="159px"></asp:TextBox>
                                    <br />
                                    <br />
                                    <asp:Label ID="Label2" runat="server" Text="MiddleName:"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="TextBox2" runat="server" Height="25px" Width="157px"></asp:TextBox>
                                    <br />
                                    <br />
                                    <asp:Label ID="Label3" runat="server" Text="LastName:"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="TextBox3" runat="server" Height="23px" Width="153px"></asp:TextBox>
                                    <br />
                                    <br />
                                    <asp:Label ID="Label4" runat="server" Text="Address:"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="TextBox4" runat="server" Height="33px" Width="147px"></asp:TextBox>
                                    <br />
                                    <br />
                                    <asp:Label ID="Label5" runat="server" Text="City:"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:DropDownList ID="DropDownList3" runat="server">
                                        <asp:ListItem>--Select--</asp:ListItem>
                                        <asp:ListItem>A</asp:ListItem>
                                        <asp:ListItem>B</asp:ListItem>
                                        <asp:ListItem>C</asp:ListItem>
                                        <asp:ListItem>D</asp:ListItem>
                                    </asp:DropDownList>
                                    <br />
                                    <br />
                                    <asp:Label ID="Label6" runat="server" Text="Email Id:"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="TextBox6" runat="server" Width="188px"></asp:TextBox>
                                    <br />
                                    <br />
                                    <asp:Label ID="Label7" runat="server" Text="Mobile No:"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="TextBox7" runat="server" Width="143px"></asp:TextBox>
                                    <br />
                                    <br />
                                    <br />
                                    <asp:Label ID="Label8" runat="server" Text="Customer Photo:"></asp:Label>
                                    &nbsp;<asp:FileUpload ID="FileUpload1" runat="server" Height="27px" Width="245px" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Upload" />
                                    &nbsp;
                                    <asp:Label ID="Label22" runat="server"></asp:Label>
                                    <br />
                                    <br />
                                    <asp:Label ID="Label9" runat="server" Text="Mortgage Photo:"></asp:Label>
                                    &nbsp;<asp:FileUpload ID="FileUpload2" runat="server" Height="22px" Width="245px" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Upload" />
                                    &nbsp;
                                    <asp:Label ID="Label23" runat="server"></asp:Label>
                                    <br />
                                    <br />
                                    <br />
                                </asp:WizardStep>
                                <asp:WizardStep runat="server" title="Step 2">
                                    <table class="auto-style1">
                                        <tr>
                                            <td class="auto-style7">
                                                <asp:Label ID="Label10" runat="server" Text="Customer Id:"></asp:Label>
                                            </td>
                                            <td class="auto-style8">
                                                <asp:TextBox ID="TextBox8" runat="server" Enabled="False" Width="105px" ReadOnly="True"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style27">
                                                <asp:Label ID="Label11" runat="server" Text="Customer Name:"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox9" runat="server" Width="209px" ReadOnly="True"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style28">
                                                <asp:TextBox ID="TextBox21" runat="server"></asp:TextBox>
                                                <asp:ImageButton ID="ImageButton1" runat="server" OnClick="ImageButton1_Click" style="width: 14px" ImageUrl="~/App_Data/cal.jpg" />
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                            <td class="auto-style9">
                                                <asp:Calendar ID="Calendar1" runat="server" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
                                            </td>
                                        </tr>
                                    </table>
                                    &nbsp;<table class="auto-style1">
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label12" runat="server" Text="Add Mortgage Details:"></asp:Label>
                                            </td>
                                        
                                       
                                        </tr>
                                        
                                    </table>
                                      <asp:ScriptManager ID="ScriptManager1" runat="server">
                                                </asp:ScriptManager>
                                    <div>
                                        
                                    <asp:UpdatePanel ID="UpdatePanel1" runat="server"><ContentTemplate>
                                    <table class="auto-style1">
                                        <tr>
                                            <td class="auto-style29">&nbsp;</td>
                                            <td class="auto-style12">&nbsp;</td>
                                            <td class="auto-style14">&nbsp;</td>
                                            <td class="auto-style16">&nbsp;</td>
                                            <td class="auto-style22">&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style29">
                                                <asp:Label ID="Label13" runat="server" Text="Item Type"></asp:Label>
                                            </td>
                                            <td class="auto-style12">
                                                <asp:Label ID="Label15" runat="server" Text="Item Name"></asp:Label>
                                            </td>
                                            <td class="auto-style14">
                                                <asp:Label ID="Label16" runat="server" Text="Gross Weight"></asp:Label>
                                            </td>
                                            <td class="auto-style16">
                                                <asp:Label ID="Label17" runat="server" Text="Rate"></asp:Label>
                                            </td>
                                            <td class="auto-style22">
                                                <asp:Label ID="Label18" runat="server" Text="Amount"></asp:Label>
                                            </td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style30">
                                                <asp:DropDownList ID="DropDownList1" runat="server" Height="16px">
                                                    <asp:ListItem>gold</asp:ListItem>
                                                    <asp:ListItem>silver</asp:ListItem>
                                                    <asp:ListItem>platinium</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                            <td class="auto-style13">
                                                <asp:TextBox ID="TextBox10" runat="server" Height="22px"></asp:TextBox>
                                            </td>
                                            <td class="auto-style15">
                                                <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                                            </td>
                                            <td class="auto-style17">
                                                <asp:TextBox ID="TextBox14" runat="server" Width="79px"></asp:TextBox>
                                            </td>
                                            <td class="auto-style23">
                                                <asp:TextBox ID="TextBox16" runat="server" Height="17px" Width="98px"></asp:TextBox>
                                            </td>
                                            <td class="auto-style9">
                                                
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style31"></td>
                                            <td class="auto-style19"></td>
                                            <td class="auto-style20"></td>
                                            <td class="auto-style21"></td>
                                            <td class="auto-style24">
                                                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Button" />
                                            </td>
                                            <td class="auto-style8">&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style29">
                                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=S:\Software\server\authwebpart3\authwebpart\App_Data\serverndb.mdf;Integrated Security=True" DeleteCommand="DELETE FROM [dumcust_mor] WHERE [dumcust_mor] = @dumcust_mor" InsertCommand="INSERT INTO [dumcust_mor] ([item_type], [item_name], [gross_weight], [rate], [amount]) VALUES (@item_type, @item_name, @gross_weight, @rate, @amount)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [item_type], [item_name], [gross_weight], [rate], [amount], [dumcust_mor_id] FROM [dumcust_mor] WHERE ([c_id] = @c_id)" UpdateCommand="UPDATE [dumcust_mor] SET [item_type] = @item_type, [item_name] = @item_name, [gross_weight] = @gross_weight, [rate] = @rate, [amount] = @amount WHERE [dumcust_mor_id] = @dumcust_mor_id">
                                                    <DeleteParameters>
                                                        <asp:Parameter Name="dumcust_mor" />
                                                    </DeleteParameters>
                                                    <InsertParameters>
                                                        <asp:Parameter Name="item_type" Type="String" />
                                                        <asp:Parameter Name="item_name" Type="String" />
                                                        <asp:Parameter Name="gross_weight" Type="Decimal" />
                                                        <asp:Parameter Name="rate" Type="Decimal" />
                                                        <asp:Parameter Name="amount" Type="Decimal" />
                                                    </InsertParameters>
                                                    <SelectParameters>
                                                        <asp:ControlParameter ControlID="TextBox8" Name="c_id" PropertyName="Text" Type="Int32" />
                                                    </SelectParameters>
                                                    <UpdateParameters>
                                                        <asp:Parameter Name="item_type" Type="String" />
                                                        <asp:Parameter Name="item_name" Type="String" />
                                                        <asp:Parameter Name="gross_weight" Type="Decimal" />
                                                        <asp:Parameter Name="rate" Type="Decimal" />
                                                        <asp:Parameter Name="amount" Type="Decimal" />
                                                        <asp:Parameter Name="dumcust_mor_id" />
                                                    </UpdateParameters>
                                                </asp:SqlDataSource>
                                                <br />
                                               
                                            </td>
                                            <td class="auto-style12">&nbsp;</td>
                                            <td class="auto-style14">
                                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="dumcust_mor_id" DataSourceID="SqlDataSource1">
                                                    <Columns>
                                                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                                        <asp:BoundField DataField="item_type" HeaderText="item_type" SortExpression="item_type" />
                                                        <asp:BoundField DataField="item_name" HeaderText="item_name" SortExpression="item_name" />
                                                        <asp:BoundField DataField="gross_weight" HeaderText="gross_weight" SortExpression="gross_weight" />
                                                        <asp:BoundField DataField="rate" HeaderText="rate" SortExpression="rate" />
                                                        <asp:BoundField DataField="amount" HeaderText="amount" SortExpression="amount" />
                                                        <asp:BoundField DataField="dumcust_mor_id" HeaderText="dumcust_mor_id" SortExpression="dumcust_mor_id" InsertVisible="False" ReadOnly="True" />
                                                    </Columns>
                                                </asp:GridView>
                                            </td>
                                            <td class="auto-style16">&nbsp;</td>
                                            <td class="auto-style22">&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                    </table>
                                        </ContentTemplate></asp:UpdatePanel>
                                    </div>
                                    <table class="auto-style1">
                                        <tr>
                                            <td class="auto-style25">
                                                <asp:Label ID="Label19" runat="server" Text="Credit Limit:"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox18" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style25">&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style25">
                                                <asp:Label ID="Label20" runat="server" Text="Interest Rate:"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox19" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style25">&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style25">
                                                <asp:Label ID="Label21" runat="server" Text="First Debit Amt:"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox20" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                    </table>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <br />
                                    <br />
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <br />
                                    &nbsp;&nbsp;
                                    <br />
                                    <br />
                                    <br />
                                </asp:WizardStep>
                                <asp:WizardStep runat="server" Title="Step3">
                                       <table style="border: 1px solid black">
                    <tr>
                        <td colspan="2">
                            <h3>
                                Customer Details</h3>
                        </td>
                    </tr>
                    <tr>
                        <td>
                          Customer_ID
                        </td>
                        <td>
                            :<asp:Label ID="lblId" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                           Name
                        </td>
                        <td>
                            :<asp:Label ID="lblName" runat="server"></asp:Label>
                        </td>
                    </tr>
                   
                    <tr>
                        <td>
                           Address
                        </td>
                        <td>
                            :<asp:Label ID="lblAdd" runat="server"></asp:Label>
                        </td>
                    </tr>
                     <tr>
                        <td>
                            City
                        </td>
                        <td>
                            :<asp:Label ID="lblCity" runat="server"></asp:Label>
                        </td>
                    </tr>
                   
                   
                    <tr>
                        <td>
                            Email Address
                        </td>
                        <td>
                            :<asp:Label ID="lblEmail" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Mobile Number
                        </td>
                        <td>
                            :<asp:Label ID="lblMobile" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
                     <table style="border: 1px solid black">
                    <tr>
                        <td>
                            <h3>
                                Mortgage Details</h3>
                        </td>
                    </tr>
                         <tr>
                             <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
                                 <Columns>
                                     <asp:BoundField DataField="item_type" HeaderText="item_type" SortExpression="item_type" />
                                     <asp:BoundField DataField="item_name" HeaderText="item_name" SortExpression="item_name" />
                                     <asp:BoundField DataField="gross_weight" HeaderText="gross_weight" SortExpression="gross_weight" />
                                     <asp:BoundField DataField="rate" HeaderText="rate" SortExpression="rate" />
                                     <asp:BoundField DataField="amount" HeaderText="amount" SortExpression="amount" />
                                 </Columns>
                             </asp:GridView>
                         </tr>
                         <tr>
                             <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=S:\Software\server\authwebpart3\authwebpart\App_Data\serverndb.mdf;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [item_type], [item_name], [gross_weight], [rate], [amount] FROM [dumcust_mor] WHERE ([c_id] = @c_id) ORDER BY [dumcust_mor_id]">
                                 <SelectParameters>
                                     <asp:ControlParameter ControlID="lblId" Name="c_id" PropertyName="Text" Type="Int32" />
                                 </SelectParameters>
                             </asp:SqlDataSource>
                         </tr>
                    </table>
            </asp:WizardStep>
        </WizardSteps>
                               
                        </asp:Wizard>
                    </td>
                    <td class="auto-style26"></td>
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
        </div>
    </form>
</body>
</html>
