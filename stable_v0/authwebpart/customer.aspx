﻿<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site1.Master"  CodeBehind="customer.aspx.cs" Inherits="authwebpart.customer" %>

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
                            <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="2" Height="545px" Width="978px"  OnFinishButtonClick="Wizard1_FinishButtonClick" BackColor="#FFFBD6" BorderColor="#FFDFAD" BorderWidth="1px" OnNextButtonClick="Wizard1_NextButtonClick" Font-Names="Verdana" Font-Size="1em">
                                <HeaderStyle BackColor="#FFCC66" BorderColor="#FFFBD6" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Font-Size="1em" ForeColor="#333333" HorizontalAlign="Center" />
                                <NavigationButtonStyle BackColor="White" BorderColor="#CC9966"  BorderStyle="Solid" BorderWidth="1px" ForeColor="#990000" Font-Names="Verdana" Font-Size="0.9em" />
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
                                    <asp:Button ID="StartNextButton" ValidationGroup="stv" runat="server" CssClass="btn btn-primary" CommandName="MoveNext" Text="Next" />
                                </StartNavigationTemplate>
                                <WizardSteps>
                                    <asp:WizardStep runat="server" title="1-Customer Detail"  >
                                        <div class="form-group row">
                                            <asp:Label ID="Label1" runat="server" Text="FirstName:" CssClass="col-md-3 col-lg-3"></asp:Label>
                                            <div class="col-md-9 col-lg-9">
                                                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidatort1" ValidationGroup="stv" runat="server" ErrorMessage="FirstName Is Empty" ControlToValidate="TextBox1" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <asp:Label ID="Label2" runat="server" Text="MiddleName:" CssClass="col-md-3 col-lg-3"></asp:Label>
                                            <div class="col-md-9 col-lg-9">
                                                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control"></asp:TextBox>
                                                  <asp:RequiredFieldValidator ID="RequiredFieldValidatort2" runat="server" ValidationGroup="stv" ErrorMessage="MiddleName Is Empty" ControlToValidate="TextBox2" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <asp:Label ID="Label3" runat="server" Text="LastName:" CssClass="col-md-3 col-lg-3"></asp:Label>
                                            <div class="col-md-9 col-lg-9">
                                                <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidatort3" runat="server" ValidationGroup="stv" ErrorMessage="LastName Is Empty" ControlToValidate="TextBox3" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <asp:Label ID="Label4" runat="server" Text="Address:" CssClass="col-md-3 col-lg-3"></asp:Label>
                                            <div class="col-md-9 col-lg-9">
                                                <asp:TextBox ID="TextBox4" runat="server" ValidationGroup="stv" CssClass="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <asp:Label ID="Label5" runat="server" Text="City:" CssClass="col-md-3 col-lg-3"></asp:Label>
                                            <div class="col-md-9 col-lg-9">
                                                <asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-control">
                                                    <asp:ListItem>--Select--</asp:ListItem>
                                                    <asp:ListItem Value="a" >A</asp:ListItem>
                                                    <asp:ListItem Value="b">B</asp:ListItem>
                                                    <asp:ListItem Value="c">C</asp:ListItem>
                                                    <asp:ListItem Value="d">D</asp:ListItem>
                                                </asp:DropDownList>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidatord1" ValidationGroup="stv" runat="server" Text="*" ControlToValidate="DropDownList3"
                ErrorMessage="Not Selected City Required!" InitialValue="--Select--" ForeColor="Red" ></asp:RequiredFieldValidator>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <asp:Label ID="Label6" runat="server" Text="Email Id:" CssClass="col-md-3 col-lg-3" ValidationGroup="stv"></asp:Label>
                                            <div class="col-md-9 col-lg-9">
                                                <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control" TextMode="Email" ValidationGroup="stv" ></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <asp:Label ID="Label7" runat="server" Text="Mobile No:" CssClass="col-md-3 col-lg-3"></asp:Label>
                                            <div class="col-md-9 col-lg-9">
                                                <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control" MaxLength="10"></asp:TextBox>
                                                <asp:RegularExpressionValidator ID="RegularExpressionValidatort4" ValidationGroup="stv" runat="server" ErrorMessage="Invalid Mobile No" ControlToValidate="TextBox7" ForeColor="Red" ValidationExpression="^9\d{9}$"></asp:RegularExpressionValidator>
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
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong><asp:Label ID="Label22" runat="server"></asp:Label></strong>
                                        </div>
                                         <div class="form-group row">
                                            <asp:Label ID="Label9" runat="server" Text="Mortgage Photo:" CssClass="col-md-3 col-lg-3"></asp:Label>
                                            <div class="col-md-9 col-lg-9">
                                                <asp:FileUpload ID="FileUpload2" runat="server"  CssClass="form-control" />
                                                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Upload" CssClass="btn btn-secondary" />
                                            </div>
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong><asp:Label ID="Label23"  runat="server"></asp:Label></strong>
                                        </div>
                                    </asp:WizardStep>
                                    <asp:WizardStep runat="server" title="2-Mortgage Detail">
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
                                                <asp:TextBox ID="Calendar12" runat="server" CssClass="input-sm form-control" TextMode="DateTime"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="reqcalender1" runat="server"  ControlToValidate="Calendar12"
                ErrorMessage="Date Required!" ValidationGroup="insert" ForeColor="Red" ></asp:RequiredFieldValidator>
 
                                                </div>
                                        </div>

                                        <asp:SqlDataSource   ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:v0scon %>" DeleteCommand="DELETE FROM [dumcust_mor] WHERE [dumcust_mor_id] = @dumcust_mor_id" InsertCommand="INSERT INTO dumcust_mor(item_type, c_id, item_name, gross_weight, rate, amount) VALUES (@item_type, @c_id, @item_name, @gross_weight, @rate, @amount)" ProviderName="<%$ ConnectionStrings:v0scon.ProviderName %>" SelectCommand="SELECT [dumcust_mor_id], [item_type], [item_name], [gross_weight], [rate], [amount] FROM [dumcust_mor] " UpdateCommand="UPDATE dumcust_mor SET item_type = @item_type, item_name = @item_name, gross_weight = @gross_weight, rate = @rate, amount = @amount, c_id = @c_id WHERE (dumcust_mor_id = @dumcust_mor_id) AND (c_id = @c_id)">
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
                                                               <!--    ////////////////////////////////////////////                                        -->
                                        <table class="table table-striped">
                                            <tr>
                                                <td>
                                                   
                                                    <strong>Type:</strong> 
                                                        <asp:DropDownList ID="dropItem" runat="server" CssClass="form-control" >
                                                                <asp:ListItem >--Select--</asp:ListItem>
                                                                <asp:ListItem Value="silver" Text="Silver"></asp:ListItem>
                                                                <asp:ListItem Value="gold" Text="Gold"></asp:ListItem>
                                                                <asp:ListItem Value="other" Text="Other"></asp:ListItem>
                                                         </asp:DropDownList>
                                                    <asp:RequiredFieldValidator ID="requireditemtype" runat="server" ErrorMessage="Invalid-Selection" ValidationGroup="insert" InitialValue="--Select--" ControlToValidate="dropItem"></asp:RequiredFieldValidator>

                                                </td>
                                                <td>
                                                    <strong>Item Name:</strong>
                                                      <asp:TextBox ID="txtItem" runat="server" CssClass="form-control"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="rfvInsertTextBox2" runat="server" ErrorMessage="item name is a required field !" ControlToValidate="txtItem" Text="*" ForeColor="Red" ValidationGroup="insert">
                                                                                                                        </asp:RequiredFieldValidator>

                                                </td>
                                                <td>
                                                    <strong>Gross Weight(Kg): </strong>
                                                      <asp:TextBox ID="txtGross" CssClass="form-control" runat="server"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="rfvInsertTextBox5" runat="server" ErrorMessage="gross weight is a required !" ControlToValidate="txtGross" Text="*" ForeColor="Red" ValidationGroup="insert">
                                                        </asp:RequiredFieldValidator>
                                                    <asp:RegularExpressionValidator ID="regexgrossweight" runat="server" ErrorMessage="Invalid-Gross Weight" ValidationExpression="^\d+([,\.]\d{1,2})?$" ControlToValidate="txtGross" ForeColor="Red" ValidationGroup="insert"></asp:RegularExpressionValidator>
                                        
                                                </td>
                                                <td>
                                                    <strong>Rate(Rs/Kg): </strong>
                                                     <asp:TextBox ID="txtRate" runat="server" CssClass="form-control"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="rfvInsertTextBox4" runat="server" ErrorMessage="rate is a required !" ControlToValidate="txtRate" Text="*" ForeColor="Red" ValidationGroup="insert">
                                                        </asp:RequiredFieldValidator>
                                                      <asp:RegularExpressionValidator ID="regexrate" runat="server" ErrorMessage="Invalid-Rate" ValidationExpression="^\d+([,\.]\d{1,2})?$" ControlToValidate="txtRate" ForeColor="Red" ValidationGroup="insert"></asp:RegularExpressionValidator>
                                                </td>
                                                <td>
                                                    <strong>Amount(Rs): </strong>
                                                    
                                                              <asp:TextBox ID="txtAmount" runat="server" CssClass="form-control"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="rfvInsertTextBox3" runat="server" ErrorMessage="amount is a required !" ControlToValidate="txtAmount" Text="*" ForeColor="Red" ValidationGroup="insert">
                                                        </asp:RequiredFieldValidator>
                                                  <asp:RegularExpressionValidator ID="regexamt" runat="server" ErrorMessage="Invalid-Amount" ValidationExpression="^\d+([,\.]\d{1,2})?$" ControlToValidate="txtAmount" ForeColor="Red" ValidationGroup="insert"></asp:RegularExpressionValidator>
                                                </td>
                                                <td>
                                                    
                                                     <div class="lagacy" >
                                                 <div class="card-body">
                                                         <asp:Button ID="Button3" OnClick="linkInsert_Click" ValidationGroup="insert"   runat="server" Text="Insert" ></asp:Button>
                                                 </div>    
                                                 </div>
                                                     </td>
                                            </tr>
                                        </table>
                                     
                                        
                                       
                                        
                                       
                                        
                                        
                                        
                                        <!--    //////////////////////////////////////                                        -->                                                                         
                                        <asp:GridView ID="GridView3" runat="server" CssClass="table table-striped" AutoGenerateColumns="False" DataKeyNames="dumcust_mor_id" DataSourceID="SqlDataSource3" ShowFooter="True" EmptyDataText="No Mortgage Items Added" ShowHeaderWhenEmpty="True" OnRowDataBound="GridView3_RowDataBound" >
                                            <Columns>
                                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ValidationGroup="edit" />
                                                   <asp:TemplateField HeaderText = "Sr.No"  >
                                                         <ItemTemplate >
                                                        <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
                                                    </ItemTemplate>



                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Item Type" SortExpression="item_type">
                                                    <EditItemTemplate  >
                                                        <asp:DropDownList  ID="DropDownList1" SelectedValue='<%# Bind("item_type") %>' CssClass="form-control" runat="server" Width="100px" >
                                                              
                                                                <asp:ListItem Value="silver" Text="Silver"></asp:ListItem>
                                                                <asp:ListItem Value="gold" Text="Gold"></asp:ListItem>
                                                                <asp:ListItem Value="other" Text="Other"></asp:ListItem>
                                                        </asp:DropDownList>
                                                       
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("item_type") %>'></asp:Label>
                                                    </ItemTemplate>
                                                        <FooterTemplate>
                                                       
                                                    </FooterTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Name" SortExpression="item_name">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control" Text='<%# Bind("item_name") %>'></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="rfvTextBox2" runat="server" ErrorMessage="item name empty!" EnableClientScript="true" ControlToValidate="TextBox2"  Text="*" ForeColor="Red" ValidationGroup="edit" >
                                                        </asp:RequiredFieldValidator>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("item_name") %>'></asp:Label>
                                                    </ItemTemplate>
                                                        <FooterTemplate>
                                                             <div  class="card-footer">
                                                                Total Weight:
                                                            </div>
                                                    </FooterTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Weight" SortExpression="gross_weight">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server" Text='<%# Bind("gross_weight") %>'></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="rfvTextBox5"  runat="server" ErrorMessage="gross weight empty !" ControlToValidate="TextBox5"  ForeColor="Red" ValidationGroup="edit">
                                                        </asp:RequiredFieldValidator>
                                                        <asp:RegularExpressionValidator ID="regexgrossweight" runat="server" ErrorMessage="Invalid-Weight" ValidationExpression="^\d+([,\.]\d{1,2})?$" ControlToValidate="TextBox5" ForeColor="Red" ValidationGroup="edit"></asp:RegularExpressionValidator>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("gross_weight") %>'></asp:Label>
                                                    </ItemTemplate>
                                                        <FooterTemplate >
                                                            <div  class="card-footer">
                                                            <asp:Label ID="lbltotw" runat="server" Text=""  ></asp:Label>
                                                                </div>
                                                    </FooterTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Rate" SortExpression="rate">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control" Text='<%# Bind("rate") %>'></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="rfvTextBox4" runat="server" ErrorMessage="rate is a required !" ControlToValidate="TextBox4" Text="*" ForeColor="Red" ValidationGroup="edit">
                                                        </asp:RequiredFieldValidator>
                                                          <asp:RegularExpressionValidator ID="regextextbox4" runat="server" ErrorMessage="Invalid-Rate" ValidationExpression="^\d+([,\.]\d{1,2})?$" ControlToValidate="TextBox4" ForeColor="Red" ValidationGroup="edit"></asp:RegularExpressionValidator>        
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("rate") %>'></asp:Label>
                                                    </ItemTemplate>
                                                        <FooterTemplate >
                                                            <div  class="card-footer">
                                                                Total Amount:
                                                            </div>
                                                            
                                                    </FooterTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Amount" SortExpression="amount">
                                                    <EditItemTemplate>
                                                        <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" Text='<%# Bind("amount") %>'></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="rfvTextBox3" runat="server" ErrorMessage="amount is a required !" ControlToValidate="TextBox3" Text="*" ForeColor="Red" ValidationGroup="edit">
                                                        </asp:RequiredFieldValidator>
                                                           <asp:RegularExpressionValidator ID="regextext3" runat="server" ErrorMessage="Invalid-Amount" ValidationExpression="^\d+([,\.]\d{1,2})?$" ControlToValidate="TextBox3" ForeColor="Red" ValidationGroup="edit"></asp:RegularExpressionValidator>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("amount") %>'></asp:Label>
                                                    </ItemTemplate>
                                                        <FooterTemplate>
                                                            <div  class="card-footer">
                                                          <asp:Label ID="lbltota" runat="server" Text=""></asp:Label>
                                                                </div>
                                                        </FooterTemplate>
                                                </asp:TemplateField>
                                                <asp:TemplateField HeaderText="Id" Visible="false" InsertVisible="False" SortExpression="dumcust_mor_id">
                                                    <EditItemTemplate>
                                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("dumcust_mor_id") %>'></asp:Label>
                                                    </EditItemTemplate>
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("dumcust_mor_id") %>'></asp:Label>
                                                    </ItemTemplate>
                                                        <FooterTemplate >
                                                      
                                                    </FooterTemplate>
                                                </asp:TemplateField>
                                            </Columns>
                                        </asp:GridView>
                                     <!--   <asp:ValidationSummary ID="ValidationSummary1" ValidationGroup="insert" ForeColor="Red" runat="server" />
                                        <asp:ValidationSummary ID="ValidationSummary2" ValidationGroup="edit" ForeColor="Red" runat="server" />
                           -->
                                        
                                        
                                        
                                        
                                        
                                        <div class="form-group row">
                                            <asp:Label ID="Label19" runat="server" Text="Credit Limit:" CssClass="col-md-3 col-lg-3"></asp:Label>
                                            <div class="col-md-9 col-lg-9">
                                                <asp:TextBox ID="TextBox18" runat="server" CssClass="form-control" ></asp:TextBox>
                                                  <asp:RequiredFieldValidator EnableViewState="true" ID="rfvTextBox18" runat="server"  ControlToValidate="TextBox18" Text="*" ForeColor="Red"  >
                                                        </asp:RequiredFieldValidator>
                                                   <asp:RegularExpressionValidator ID="regexcr" runat="server" EnableViewState="true" ErrorMessage="Invalid-Credit Amount::Try Again"  ValidationExpression="^\d+([,\.]\d{1,2})?$" ControlToValidate="TextBox18" ForeColor="Red" ></asp:RegularExpressionValidator>
                                            </div>
                                        </div>
                                         <div class="form-group row">
                                            <asp:Label ID="Label20" runat="server" Text="Interest Rate:" CssClass="col-md-3 col-lg-3"></asp:Label>
                                            <div class="col-md-9 col-lg-9">
                                                <asp:TextBox ID="TextBox19" runat="server" CssClass="form-control"></asp:TextBox>
                                                                                           
                                                  <asp:RequiredFieldValidator ID="requiredt19" runat="server"   ControlToValidate="TextBox19" Text="*" ForeColor="Red"  >
                                                        </asp:RequiredFieldValidator>
                                                   <asp:RegularExpressionValidator ID="regext19" runat="server" ErrorMessage="Invalid-Interest Rate:Try Again"  ValidationExpression="^\d+([,\.]\d{1,2})?$" ControlToValidate="TextBox19" ForeColor="Red" ></asp:RegularExpressionValidator>
                                                
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <asp:Label ID="Label21" runat="server" Text="First Debit Amt:" CssClass="col-md-3 col-lg-3"></asp:Label>
                                            <div class="col-md-9 col-lg-9">
                                                <asp:TextBox ID="TextBox20" runat="server" CssClass="form-control"></asp:TextBox>
                                                                                           
                                                  <asp:RequiredFieldValidator ID="requiredt20" runat="server"  ControlToValidate="TextBox20" Text="*" ForeColor="Red"  >
                                                        </asp:RequiredFieldValidator>
                                                   <asp:RegularExpressionValidator ID="regext20" runat="server" Text="Invalid-Debit Amount::Try Again"  ValidationExpression="^\d+([,\.]\d{1,2})?$" ControlToValidate="TextBox20" ForeColor="Red" ></asp:RegularExpressionValidator>
                                                </div>
                                        </div>
                                    </asp:WizardStep>
                                    <asp:WizardStep runat="server" Title="3-Confirm">
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
                                                  <p>
                                                    <strong>Total Weight: </strong> 
                                                  <asp:Label ID="Label12" runat="server" Text=""></asp:Label>
                                                </p> 
                                                 <p>
                                                    <strong>Total Amount: </strong> 
                                                  <asp:Label ID="Label13" runat="server" Text=""></asp:Label>
                                                </p> 
                                             
                                                 <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:v0scon %>" ProviderName="<%$ ConnectionStrings:v0scon.ProviderName %>" SelectCommand="SELECT [item_type], [item_name], [gross_weight], [rate], [amount] FROM [dumcust_mor] WHERE ([c_id] = @c_id) ORDER BY [dumcust_mor_id]">
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