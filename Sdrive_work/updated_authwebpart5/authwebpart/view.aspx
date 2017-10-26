﻿<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="view.aspx.cs" Inherits="authwebpart.view" %>
<asp:Content ID="Content1" ContentPlaceHolderID="viewAccID" runat="server">
   
    <ol class="breadcrumb">
        <li class="breadcrumb-item">
            <asp:LinkButton ID="LinkButton6" runat="server" PostBackUrl="~/dashboard.aspx">Home</asp:LinkButton>
        </li>
        <li class="breadcrumb-item">
            <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/cust_list.aspx">List accounts</asp:LinkButton>
        </li>
        <li class="breadcrumb-item">
            View Account
        </li>
    </ol>

    <div class="container-fluid">
        <div class="animated fadeIn">
            <div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                          <i class="fa fa-align-justify"></i> Customer View
                        </div>
                        <div class="card-body">

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
                                        &nbsp;</td>
               
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
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=S:\Software\server\authwebpart3\authwebpart\App_Data\serverndb.mdf;Integrated Security=True" DeleteCommand="DELETE FROM cust_mor WHERE (cust_mor_id = @cust_mor_id)" SelectCommand="SELECT item_type, item_name, gross_weight, rate, amount, cust_mor_id FROM cust_mor WHERE (c_id = @c_id)" UpdateCommand="UPDATE cust_mor SET item_type = @item_type, item_name = @item_name, gross_weight = @gross_weight, rate = @rate, amount = @amount WHERE (cust_mor_id = @cust_mor_id)">
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
                                    <td class="auto-style3"> <asp:DropDownList ID="DropDownList1" runat="server">
                                                            <asp:ListItem Value="silver">Silver</asp:ListItem>
                                                            <asp:ListItem Value="gold">Gold</asp:ListItem>
                                                            <asp:ListItem Value="other">Other</asp:ListItem>
                                                        </asp:DropDownList>

                                    </td>
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
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style4"></td>
                                    <td class="auto-style16"></td>
                                    <td class="auto-style22">
                                        &nbsp;</td>
                                    <td class="auto-style20">
                                        <asp:Button ID="Button4" runat="server" Height="26px" OnClick="Button4_Click" Text="addtogrid" />
                                    </td>
                                    <td class="auto-style10"></td>
                                    <td class="auto-style2"></td>
                                </tr>
                                <tr>
                                    <td class="auto-style3">&nbsp;</td>
                                    <td class="auto-style15">
                                        <asp:GridView ID="GridView1" OnRowDataBound="GridView1_RowDataBound" runat="server"  ShowFooter="True"  AutoGenerateColumns="False"  BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="cust_mor_id" DataSourceID="SqlDataSource2" GridLines="Horizontal" >
                                            <AlternatingRowStyle BackColor="#F7F7F7" />
                                            <Columns>
                                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                                <asp:TemplateField HeaderText="item_type" SortExpression="item_type">
                                                    <EditItemTemplate>
                                                        <asp:DropDownList ID="DropDownList2" SelectedValue='<%# Bind("item_type") %>' runat="server">
                                                            <asp:ListItem Value="silver">Silver</asp:ListItem>
                                                            <asp:ListItem Value="gold">Gold</asp:ListItem>
                                                            <asp:ListItem Value="other">Other</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("item_type") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="item_name" SortExpression="item_name">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("item_name") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("item_name") %>'></asp:Label>
                                                    </ItemTemplate>
                                                        <FooterTemplate>
                                                                Total Weight:
                                                       </FooterTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="gross_weight" SortExpression="gross_weight">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("gross_weight") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("gross_weight") %>'></asp:Label>
                                                    </ItemTemplate>
                                                    <FooterTemplate>
                                                                 <asp:Label ID="lblgrtotal"  runat="server" ></asp:Label>
                                                       </FooterTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="rate" SortExpression="rate">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("rate") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("rate") %>'></asp:Label>
                                                    </ItemTemplate>
                                                        <FooterTemplate>
                                                                Total Amt
                                                       </FooterTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="amount" SortExpression="amount">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("amount") %>'></asp:TextBox>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("amount") %>'></asp:Label>
                                                    </ItemTemplate>
                                                     <FooterTemplate>
                                                                 <asp:Label ID="lblactotal"  runat="server" >actotal</asp:Label>
                                                       </FooterTemplate>
                                                </asp:TemplateField>
                                                <asp:BoundField DataField="cust_mor_id" HeaderText="cust_mor_id" SortExpression="cust_mor_id" InsertVisible="False" ReadOnly="True" />
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
                                    <td class="auto-style21">
                                        <asp:GridView ID="GridView2" runat="server"  AutoGenerateColumns="False" CssClass="auto-style2" DataSourceID="SqlDataSource1" Height="192px" Width="410px" OnRowDataBound="GridView2_RowDataBound">
                                             <Columns>
                                                  <asp:BoundField DataField="t_date" HeaderText="t_date" SortExpression="t_date" />
                            
                            
                                                   <asp:TemplateField HeaderText="Credit(in Rs.)"  ></asp:TemplateField>
                                                  <asp:TemplateField HeaderText="Debit(in Rs.)"></asp:TemplateField>
                            
                            
                                                <asp:BoundField DataField="t_type" HeaderText="t_type" SortExpression="t_type"  />
                          
                                                <asp:BoundField DataField="t_amount" HeaderText="t_amount" SortExpression="t_amount"  />
                          
                                         </Columns>
                                        </asp:GridView>
                                    </td>
                                    <td class="auto-style19">&nbsp;</td>
                                    <td class="auto-style9">&nbsp;</td>
                                    <td class="auto-style5">
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=S:\Software\server\authwebpart3\authwebpart\App_Data\serverndb.mdf;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [t_type], [t_date], [t_amount] FROM [transection] WHERE ([c_id] = @c_id) ORDER BY [t_date] DESC">
                                            <SelectParameters>
                                                <asp:QueryStringParameter Name="c_id" QueryStringField="c_id" Type="Int32" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style4"></td>
                                    <td class="auto-style16">
                                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" Width="90px">
                                            <asp:ListItem Value="c">credit</asp:ListItem>
                                            <asp:ListItem Value="d">debit</asp:ListItem>
                                        </asp:RadioButtonList>
                                    </td>
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
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
 </asp:Content>