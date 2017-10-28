<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site1.Master"  CodeBehind="customer.aspx.cs" Inherits="authwebpart.customer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="createAccID" runat="server">

    <ol class="breadcrumb">
        <li class="breadcrumb-item">
            <asp:LinkButton ID="LinkButton6" runat="server" PostBackUrl="~/dashboard.aspx">Home</asp:LinkButton>
        </li>
        <li class="breadcrumb-item">
            <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/customer.aspx">Create Account</asp:LinkButton>
        </li>
    </ol>

    <div class="container-fluid">
        <div class="animated fadeIn">
            <div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                          <i class="fa fa-align-justify"></i> Create Customer
                        </div>
                        <div class="card-body">
                            <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="1" Height="545px" Width="978px" OnFinishButtonClick="Wizard1_FinishButtonClick" BackColor="#FFFBD6" BorderColor="#FFDFAD" BorderWidth="1px" OnNextButtonClick="Wizard1_NextButtonClick">
                                <HeaderStyle BackColor="#FFCC66" BorderColor="#FFFBD6" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Font-Size="0.9em" ForeColor="#333333" HorizontalAlign="Center" />
                                <NavigationButtonStyle BackColor="White" BorderColor="#CC9966" BorderStyle="Solid" BorderWidth="1px" ForeColor="#990000" />
                                <SideBarButtonStyle ForeColor="White" />
                                <SideBarStyle BackColor="#990000" Font-Size="0.9em" VerticalAlign="Top" />
                                <SideBarTemplate>
                                    <asp:DataList ID="SideBarList" runat="server">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="SideBarButton" runat="server" ForeColor="White"></asp:LinkButton>
                                        </ItemTemplate>
                                        <SelectedItemStyle Font-Bold="True" />
                                    </asp:DataList>
                                </SideBarTemplate>
                                <StartNavigationTemplate>
                                    <asp:Button ID="StartNextButton" runat="server" CssClass="btn btn-primary" CommandName="MoveNext" Text="Next" />
                                </StartNavigationTemplate>
                                <WizardSteps>
                                    <asp:WizardStep runat="server" title="Step 1">
                                        <div class="form-group row">
                                            <asp:Label ID="Label1" runat="server" Text="FirstName:" CssClass="col-md-3 col-lg-3"></asp:Label>
                                            <div class="col-md-9 col-lg-9">
                                                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <asp:Label ID="Label2" runat="server" Text="MiddleName:" CssClass="col-md-3 col-lg-3"></asp:Label>
                                            <div class="col-md-9 col-lg-9">
                                                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <asp:Label ID="Label3" runat="server" Text="LastName:" CssClass="col-md-3 col-lg-3"></asp:Label>
                                            <div class="col-md-9 col-lg-9">
                                                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <asp:Label ID="Label4" runat="server" Text="Address:" CssClass="col-md-3 col-lg-3"></asp:Label>
                                            <div class="col-md-9 col-lg-9">
                                                <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <asp:Label ID="Label5" runat="server" Text="City:" CssClass="col-md-3 col-lg-3"></asp:Label>
                                            <div class="col-md-9 col-lg-9">
                                                <asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-control">
                                                    <asp:ListItem>--Select--</asp:ListItem>
                                                    <asp:ListItem>A</asp:ListItem>
                                                    <asp:ListItem>B</asp:ListItem>
                                                    <asp:ListItem>C</asp:ListItem>
                                                    <asp:ListItem>D</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <asp:Label ID="Label6" runat="server" Text="Email Id:" CssClass="col-md-3 col-lg-3"></asp:Label>
                                            <div class="col-md-9 col-lg-9">
                                                <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <asp:Label ID="Label7" runat="server" Text="Mobile No:" CssClass="col-md-3 col-lg-3"></asp:Label>
                                            <div class="col-md-9 col-lg-9">
                                                <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                         <div class="form-group row">
                                            <asp:Label ID="Label8" runat="server" Text="Customer Photo:" CssClass="col-md-3 col-lg-3"></asp:Label>
                                            <div class="col-md-9 col-lg-9">
                                                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" />
                                                <span>
                                                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Upload" CssClass="btn btn-primary" />
                                                </span>
                                            </div>
                                            <asp:Label ID="Label22" runat="server"></asp:Label>
                                        </div>
                                         <div class="form-group row">
                                            <asp:Label ID="Label9" runat="server" Text="Mortgage Photo:" CssClass="col-md-3 col-lg-3"></asp:Label>
                                            <div class="col-md-9 col-lg-9">
                                                <asp:FileUpload ID="FileUpload2" runat="server"  CssClass="form-control" />
                                                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Upload" CssClass="btn btn-secondary" />
                                            </div>
                                            <asp:Label ID="Label23" runat="server"></asp:Label>
                                        </div>
                                    </asp:WizardStep>
                                    <asp:WizardStep runat="server" title="Step 2">
                                        <div class="form-group row">
                                            <asp:Label ID="Label10" runat="server" Text="Customer Id:" CssClass="col-md-3 col-lg-3"></asp:Label>
                                            <div class="col-md-9 col-lg-9">
                                                <asp:TextBox ID="TextBox8" runat="server" Enabled="False" CssClass="form-control" ReadOnly="True"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <asp:Label ID="Label11" runat="server" Text="Customer Name:" CssClass="col-md-3 col-lg-3"></asp:Label>
                                            <div class="col-md-9 col-lg-9">
                                                <asp:TextBox ID="TextBox9" runat="server" CssClass="form-control" ReadOnly="True"></asp:TextBox>
                                            </div>
                                        </div>
                                        

                                        <div class="form-group row datepicker">
                                            <label class="col-lg-3 col-md-3">Date</label>
                                            <div class="col-md-9 col-lg-9">
                                                <asp:TextBox ID="Calendar12" runat="server" CssClass="input-sm form-control"></asp:TextBox>
                                            </div>
                                        </div>

                                        <asp:SqlDataSource   ID="SqlDataSource3" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=S:\Software\server\authwebpart3\authwebpart\App_Data\serverndb.mdf;Integrated Security=True" DeleteCommand="DELETE FROM [dumcust_mor] WHERE [dumcust_mor_id] = @dumcust_mor_id" InsertCommand="INSERT INTO dumcust_mor(item_type, c_id, item_name, gross_weight, rate, amount) VALUES (@item_type, @c_id, @item_name, @gross_weight, @rate, @amount)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [dumcust_mor_id], [item_type], [item_name], [gross_weight], [rate], [amount] FROM [dumcust_mor] " UpdateCommand="UPDATE dumcust_mor SET item_type = @item_type, item_name = @item_name, gross_weight = @gross_weight, rate = @rate, amount = @amount, c_id = @c_id WHERE (dumcust_mor_id = @dumcust_mor_id) AND (c_id = @c_id)">
                                            <DeleteParameters>
                                                <asp:Parameter Name="dumcust_mor_id" Type="Int32" />
                                            </DeleteParameters>
                                            <InsertParameters >
                                                <asp:Parameter Name="item_type" />
                                                <asp:Parameter Name="c_id" />
                                                <asp:Parameter Name="item_name" />
                                                <asp:Parameter Name="gross_weight" />
                                                <asp:Parameter Name="rate" />
                                                <asp:Parameter Name="amount" />
                                            </InsertParameters>
                                            <UpdateParameters  >
                                                <asp:Parameter Name="item_type" Type="String" />
                                                <asp:Parameter Name="item_name" Type="String" />
                                                <asp:Parameter Name="gross_weight" Type="Decimal" />
                                                <asp:Parameter Name="rate" Type="Decimal" />
                                                <asp:Parameter Name="amount" Type="Decimal" />
                                                <asp:SessionParameter Name="c_id" SessionField="c_id" />
                                                <asp:Parameter Name="dumcust_mor_id" Type="Int32" />
                                            </UpdateParameters>
                                        </asp:SqlDataSource>
                                                                                                                          
                                        <asp:GridView ID="GridView3" runat="server" CssClass="table table-striped" AutoGenerateColumns="False" DataKeyNames="dumcust_mor_id" DataSourceID="SqlDataSource3" ShowFooter="True" EmptyDataText="table is empty" ShowHeaderWhenEmpty="True" >
                                            <Columns>
                                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                                <asp:TemplateField HeaderText="Item Type" SortExpression="item_type">
                                                    <EditItemTemplate >
                                                        <asp:DropDownList ID="DropDownList1" SelectedValue='<%# Bind("item_type") %>' CssClass="form-control" runat="server">
                                                            <asp:ListItem Selected="False">--empty--</asp:ListItem>
                                                            <asp:ListItem Value="gold">gold</asp:ListItem>
                                                            <asp:ListItem Value="silver">silver</asp:ListItem>
                                                            <asp:ListItem Value="other">other</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("item_type") %>'></asp:Label>
                                                    </ItemTemplate>
                                                        <FooterTemplate>
                                                        <asp:DropDownList ID="dropItem" runat="server" CssClass="form-control">
                                                                <asp:ListItem Selected="False">--empty--</asp:ListItem>
                                                            <asp:ListItem Value="gold">gold</asp:ListItem>
                                                                <asp:ListItem Value="silver">silver</asp:ListItem>
                                                            <asp:ListItem Value="other">other</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </FooterTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Name" SortExpression="item_name">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Text='<%# Bind("item_name") %>'></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvTextBox2" runat="server" ErrorMessage="item name is a required field !" ControlToValidate="TextBox2"  Text="*" ForeColor="Red" ValidationGroup="edit" EnableClientScript="True">
                                                        </asp:RequiredFieldValidator>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("item_name") %>'></asp:Label>
                                                    </ItemTemplate>
                                                        <FooterTemplate>
                                                            <asp:TextBox ID="txtItem" runat="server" CssClass="form-control"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="rfvInsertTextBox2" runat="server" ErrorMessage="item name is a required field !" ControlToValidate="txtItem" Text="*" ForeColor="Red" ValidationGroup="insert">
                                                        </asp:RequiredFieldValidator>
                                                    </FooterTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Weight" SortExpression="gross_weight">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server" Text='<%# Bind("gross_weight") %>'></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="rfvTextBox5" runat="server" ErrorMessage="gross weight is a required !" ControlToValidate="TextBox5" Text="*" ForeColor="Red" ValidationGroup="edit">
                                                        </asp:RequiredFieldValidator>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("gross_weight") %>'></asp:Label>
                                                    </ItemTemplate>
                                                        <FooterTemplate>
                                                            <asp:TextBox ID="txtGross" CssClass="form-control" runat="server"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="rfvInsertTextBox5" runat="server" ErrorMessage="gross weight is a required !" ControlToValidate="txtGross" Text="*" ForeColor="Red" ValidationGroup="insert">
                                                        </asp:RequiredFieldValidator>
                                                    </FooterTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Rate" SortExpression="rate">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" Text='<%# Bind("rate") %>'></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="rfvTextBox4" runat="server" ErrorMessage="rate is a required !" ControlToValidate="TextBox4" Text="*" ForeColor="Red" ValidationGroup="edit">
                                                        </asp:RequiredFieldValidator>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("rate") %>'></asp:Label>
                                                    </ItemTemplate>
                                                        <FooterTemplate>
                                                        <asp:TextBox ID="txtRate" runat="server" CssClass="form-control"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="rfvInsertTextBox4" runat="server" ErrorMessage="rate is a required !" ControlToValidate="txtRate" Text="*" ForeColor="Red" ValidationGroup="insert">
                                                        </asp:RequiredFieldValidator>
                                                    </FooterTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Amount" SortExpression="amount">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" Text='<%# Bind("amount") %>'></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="rfvTextBox3" runat="server" ErrorMessage="amount is a required !" ControlToValidate="TextBox3" Text="*" ForeColor="Red" ValidationGroup="edit">
                                                        </asp:RequiredFieldValidator>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("amount") %>'></asp:Label>
                                                    </ItemTemplate>
                                                        <FooterTemplate>
                                                            <asp:TextBox ID="txtAmount" runat="server" CssClass="form-control"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="rfvInsertTextBox3" runat="server" ErrorMessage="amount is a required !" ControlToValidate="txtAmount" Text="*" ForeColor="Red" ValidationGroup="insert">
                                                        </asp:RequiredFieldValidator>
                                                        </FooterTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Id" InsertVisible="False" SortExpression="dumcust_mor_id">
                                                    <EditItemTemplate>
                                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("dumcust_mor_id") %>'></asp:Label>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("dumcust_mor_id") %>'></asp:Label>
                                                    </ItemTemplate>
                                                        <FooterTemplate>
                                                        <asp:LinkButton ID="linkInsert" OnClick="linkInsert_Click" runat="server" OnClientClick="linkInsert_Click" ValidationGroup="insert">Insert</asp:LinkButton>
                                                    </FooterTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                        </asp:GridView>
                                        <asp:ValidationSummary ID="ValidationSummary1" ValidationGroup="insert" ForeColor="Red" runat="server" />
                                        <asp:ValidationSummary ID="ValidationSummary2" ValidationGroup="edit" ForeColor="Red" runat="server" />
                                         <div class="form-group row">
                                            <asp:Label ID="Label19" runat="server" Text="Credit Limit:" CssClass="col-md-3 col-lg-3"></asp:Label>
                                            <div class="col-md-9 col-lg-9">
                                                <asp:TextBox ID="TextBox18" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                         <div class="form-group row">
                                            <asp:Label ID="Label20" runat="server" Text="Interest Rate:" CssClass="col-md-3 col-lg-3"></asp:Label>
                                            <div class="col-md-9 col-lg-9">
                                                <asp:TextBox ID="TextBox19" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <asp:Label ID="Label21" runat="server" Text="First Debit Amt:" CssClass="col-md-3 col-lg-3"></asp:Label>
                                            <div class="col-md-9 col-lg-9">
                                                <asp:TextBox ID="TextBox20" runat="server" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                    </asp:WizardStep>
                                    <asp:WizardStep runat="server" Title="Step3">
                                        <div class="card">
                                            <div class="card-header">
                                              <i class="fa fa-align-justify"></i> Verify Customer Information
                                            </div>
                                            <div class="card-body">
                                                <p>
                                                    <strong>Customer Id: </strong> 
                                                    <asp:Label ID="lblId" runat="server"></asp:Label>
                                                </p>
                                                <p>
                                                    <strong>Name: </strong> 
                                                    <asp:Label ID="lblName" runat="server"></asp:Label>
                                                </p> 
                                                <p>
                                                    <strong>Address: </strong> 
                                                    <asp:Label ID="lblAdd" runat="server"></asp:Label>
                                                </p> 
                                                <p>
                                                    <strong>City: </strong> 
                                                    <asp:Label ID="lblCity" runat="server"></asp:Label>
                                                </p> 
                                                <p>
                                                    <strong>Email: </strong> 
                                                    <asp:Label ID="lblEmail" runat="server"></asp:Label>
                                                </p> 
                                                <p>
                                                    <strong>Mobile: </strong> 
                                                    <asp:Label ID="lblMobile" runat="server"></asp:Label>
                                                </p> 
                                            </div>
                                        </div>
                                        <div class="card">
                                            <div class="card-header">
                                              <i class="fa fa-align-justify"></i> Verify Item Details
                                            </div>
                                            <div class="card-body">
                                                 <asp:GridView ID="GridView2" CssClass="table table-striped" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
                                                     <Columns>
                                                         <asp:BoundField DataField="item_type" HeaderText="Item Type" SortExpression="item_type" />
                                                         <asp:BoundField DataField="item_name" HeaderText="Name" SortExpression="item_name" />
                                                         <asp:BoundField DataField="gross_weight" HeaderText="Weight" SortExpression="gross_weight" />
                                                         <asp:BoundField DataField="rate" HeaderText="Rate" SortExpression="rate" />
                                                         <asp:BoundField DataField="amount" HeaderText="Amount" SortExpression="amount" />
                                                     </Columns>
                                                 </asp:GridView>
                                        
                                                 <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=S:\Software\server\authwebpart3\authwebpart\App_Data\serverndb.mdf;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [item_type], [item_name], [gross_weight], [rate], [amount] FROM [dumcust_mor] WHERE ([c_id] = @c_id) ORDER BY [dumcust_mor_id]">
                                                     <SelectParameters>
                                                         <asp:ControlParameter ControlID="lblId" Name="c_id" PropertyName="Text" Type="Int32" />
                                                     </SelectParameters>
                                                 </asp:SqlDataSource>
                                            </div>
                                        </div>
                                    </asp:WizardStep>
                                </WizardSteps>
                            </asp:Wizard>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>