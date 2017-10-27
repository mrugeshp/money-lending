<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="view.aspx.cs" Inherits="authwebpart.view" %>
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
                          <i class="fa fa-align-justify"></i> Customer Information
                        </div>
                        <div class="card-body">
                            <p>
                                <strong>Customer Id: </strong> 
                                <asp:Label ID="Label25" runat="server" Text="Customer Id:"></asp:Label>
                            </p>
                            <p>
                                LastUpdated:
                                <asp:Label ID="Label26" runat="server" Text="LastUpdated:"></asp:Label>
                            </p>
                            <p>
                                Name:
                                <asp:Label ID="Label19" runat="server" Text="Name:"></asp:Label>
                            </p>
                            <p>
                                Address:
                                <asp:Label ID="Label20" runat="server" Text="Address:"></asp:Label>
                            </p>
                            <p>
                                Address:
                                <asp:Label ID="Label21" runat="server" Text="City:"></asp:Label>
                            </p> 
                            <p>
                                Mobile No:
                                <asp:Label ID="Label22" runat="server" Text="Mobile No:"></asp:Label>
                            </p> 
                            <p>
                                Interest Rate:
                                <asp:Label ID="Label23" runat="server" Text="InterestRate:"></asp:Label>
                            </p> 
                            <p>
                                Credit Limit:
                                <asp:Label ID="Label24" runat="server" Text="CreditLimit:"></asp:Label>
                            </p> 
                            <asp:HiddenField ID="HiddenField1" runat="server" />
                                   
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
                        </div>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                          <i class="fa fa-align-justify"></i> Item Details
                        </div>
                        <div class="card-body">
                           
                            <table class="table table-striped">
                                <thead>
                                    <tr>
                                        <th>
                                            <asp:Label ID="Label6" runat="server" Text="Item Type"></asp:Label>
                                        </th>
                                        <th>
                                            <asp:Label ID="Label7" runat="server" Text="Item Name"></asp:Label>
                                        </th>
                                        <th>
                                            <asp:Label ID="Label8" runat="server" Text="Weight"></asp:Label>
                                        </th>
                                        <th>
                                            <asp:Label ID="Label9" runat="server" Text="Rate"></asp:Label>
                                        </th>
                                        <th>
                                            <asp:Label ID="Label10" runat="server" Text="Amount"></asp:Label>
                                        </th>
                                        <th>
                                            <asp:Label ID="actionlbl" runat="server" Text="Action"></asp:Label>
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>
                                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                                                <asp:ListItem Value="" Text="select"></asp:ListItem>
                                                <asp:ListItem Value="silver" Text="silver"></asp:ListItem>
                                                <asp:ListItem Value="gold" Text="gold"></asp:ListItem>
                                                <asp:ListItem Value="other" Text="other"></asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="TextBox10" runat="server" CssClass="form-control"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox runat="server" ID="TextBox12" CssClass="form-control"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:TextBox runat="server" ID="TextBox14" CssClass="form-control"></asp:TextBox>
                                        </td>
                                        <td>
                                             <asp:TextBox runat="server" ID="TextBox16" CssClass="form-control"></asp:TextBox>
                                        </td>
                                        <td>
                                            <asp:Button ID="Button4" runat="server" CssClass="btn btn-primary" OnClick="Button4_Click" Text="Add" />
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                                   
                            <asp:GridView ID="GridView1" OnRowDataBound="GridView1_RowDataBound" runat="server"  ShowFooter="True"  AutoGenerateColumns="False" CssClass="table table-striped" DataKeyNames="cust_mor_id" DataSourceID="SqlDataSource2" >
                                <Columns>
                                    
                                    <asp:TemplateField HeaderText="Item Type" SortExpression="item_type">
                                        <EditItemTemplate>
                                            <asp:DropDownList ID="DropDownList2" CssClass="form-control" SelectedValue='<%# Bind("item_type") %>' runat="server">
                                                <asp:ListItem Value="silver" Text="silver"></asp:ListItem>
                                                <asp:ListItem Value="gold" Text="gold"></asp:ListItem>
                                                <asp:ListItem Value="other" Text="other"></asp:ListItem>
                                            </asp:DropDownList>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("item_type") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Item Name" SortExpression="item_name">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" Text='<%# Bind("item_name") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("item_name") %>'></asp:Label>
                                        </ItemTemplate>
                                            <FooterTemplate>
                                                    Total Weight:
                                            </FooterTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Weight" SortExpression="gross_weight">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" Text='<%# Bind("gross_weight") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("gross_weight") %>'></asp:Label>
                                        </ItemTemplate>
                                        <FooterTemplate>
                                                        <asp:Label ID="lblgrtotal"  runat="server" ></asp:Label>
                                            </FooterTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Rate" SortExpression="rate">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" Text='<%# Bind("rate") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("rate") %>'></asp:Label>
                                        </ItemTemplate>
                                            <FooterTemplate>
                                                    Total Amt
                                            </FooterTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Amount" SortExpression="amount">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox2"  CssClass="form-control" runat="server" Text='<%# Bind("amount") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("amount") %>'></asp:Label>
                                        </ItemTemplate>
                                            <FooterTemplate>
                                                        <asp:Label ID="lblactotal"  runat="server" >actotal</asp:Label>
                                            </FooterTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="cust_mor_id" HeaderText="Id" SortExpression="cust_mor_id" InsertVisible="False" ReadOnly="True" />
                                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" HeaderText="Action" />
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>
                </div>

                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                          <i class="fa fa-align-justify"></i> Transaction Details
                        </div>
                        <div class="card-body">
                                    
                            <asp:GridView ID="GridView2" runat="server" CssClass="table table-striped credit-debit-table"  AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnRowDataBound="GridView2_RowDataBound" ShowFooter="True">
                                    <Columns>
                                        <asp:BoundField DataField="t_date" HeaderText="t_date" SortExpression="t_date" />
                                        <asp:TemplateField HeaderText="Credit(in Rs.)"  ></asp:TemplateField>
                                        <asp:TemplateField HeaderText="Debit(in Rs.)">
                                            
                                        </asp:TemplateField>
                            
                            
                                    <asp:BoundField DataField="t_type" HeaderText="t_type" SortExpression="t_type"  />
                                     <asp:BoundField DataField="t_amount" HeaderText="t_amount" SortExpression="t_amount"  >
                                         

                                         </asp:BoundField>
    
                                        
                           
                                            
                                        <asp:TemplateField HeaderText="Mortgage Amt.">
                                           
                                      </asp:TemplateField>
                          
                                </Columns>
                            </asp:GridView>
                                   
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=S:\Software\server\authwebpart3\authwebpart\App_Data\serverndb.mdf;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [t_type], [t_date], [t_amount] FROM [transection] WHERE ([c_id] = @c_id) ORDER BY [t_date] DESC">
                                <SelectParameters>
                                    <asp:QueryStringParameter Name="c_id" QueryStringField="c_id" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </div>
                    </div>
                </div>

                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                          <i class="fa fa-align-justify"></i> Interest Calculation
                        </div>
                        <div class="card-body">
                            Interest:
                            <button type="button" class="btn btn-info" data-toggle="modal" data-target="#infoModal">
                                Calculator
                            </button>
                            <asp:Label ID="lbltotmor" runat="server" Text="0"></asp:Label>
                            <asp:Label ID="lbltotint" runat="server" Text="Label"></asp:Label>
                        </div>
                    </div>
                </div>

                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                          <i class="fa fa-align-justify"></i> Credit / Debit
                        </div>
                        <div class="card-body">
                            <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" Width="90px">
                                <asp:ListItem Value="c" Selected="True">credit</asp:ListItem>
                                <asp:ListItem Value="d">debit</asp:ListItem>
                            </asp:RadioButtonList>
                                    
                            <asp:TextBox ID="TextBox17" runat="server" CssClass="form-control"></asp:TextBox>
                                   
                            
                        </div>
                        <div class="card-footer">
                            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Submit"  CssClass="btn btn-primary" />
                                   
                            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Submit and close" CssClass="btn btn-secondary"/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="infoModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" style="display: none;" aria-hidden="true">
        <div class="modal-dialog modal-info" role="document">
        <div class="modal-content">
            <div class="modal-header">
            <h4 class="modal-title">Calculator</h4>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">×</span>
            </button>
            </div>
            <div class="modal-body">
                 <div class="calculator demo">
                    <div class="u4 display">
                        <div class="display-inner"><div class="display-text" data-bind="text: display"></div></div>
                    </div>
                    <button id="calculator-button-c" class="u1 button button-red" data-bind="click: clear">c</button>
                    <button id="calculator-button-backspace" class="u1 button button-backspace button-gray" data-bind="click: backspace">&#x21e4;</button>
                    <button id="calculator-button-negate" class="u1 button button-gray" data-bind="click: negate">&#xb1;</button>
                    <button id="calculator-button-÷" class="u1 button button-gray" data-bind="click: operator">÷</button>
                    <button id="calculator-button-7" class="u1 button button-gray" data-bind="click: number">7</button>
                    <button id="calculator-button-8" class="u1 button button-gray" data-bind="click: number">8</button>
                    <button id="calculator-button-9" class="u1 button button-gray" data-bind="click: number">9</button>
                    <button id="calculator-button-x" class="u1 button button-gray" data-bind="click: operator">x</button>
                    <button id="calculator-button-4" class="u1 button button-gray" data-bind="click: number">4</button>
                    <button id="calculator-button-5" class="u1 button button-gray" data-bind="click: number">5</button>
                    <button id="calculator-button-6" class="u1 button button-gray" data-bind="click: number">6</button>
                    <button id="calculator-button--" class="u1 button button-gray" data-bind="click: operator">-</button>
                    <button id="calculator-button-1" class="u1 button button-gray" data-bind="click: number">1</button>
                    <button id="calculator-button-2" class="u1 button button-gray" data-bind="click: number">2</button>
                    <button id="calculator-button-3" class="u1 button button-gray" data-bind="click: number">3</button>
                    <button id="calculator-button-+" class="u1 button button-gray" data-bind="click: operator">+</button>
                    <button id="calculator-button-0" class="u2 button button-gray" data-bind="click: number">0</button>
                    <button id="calculator-button-." class="u1 button button-gray" data-bind="click: number">.</button>
                    <button id="calculator-button-=" class="u1 button button-blue" data-bind="click: operator">=</button>            
                </div>



            </div>
            <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            </div>
        </div>
        <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>

 </asp:Content>