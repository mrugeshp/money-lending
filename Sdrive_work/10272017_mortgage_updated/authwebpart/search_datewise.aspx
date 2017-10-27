<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/Site1.Master" CodeBehind="search_datewise.aspx.cs" Inherits="authwebpart.search_datewise" %>


<asp:Content ID="Content1" ContentPlaceHolderID="searchDateID" runat="server">
    <ol class="breadcrumb">
        <li class="breadcrumb-item">
            <asp:LinkButton ID="LinkButton6" runat="server" PostBackUrl="~/dashboard.aspx">Home</asp:LinkButton>
        </li>
        <li class="breadcrumb-item">
            <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/search.aspx">Search account</asp:LinkButton>
        </li>
    </ol>

    <div class="container-fluid">
        <div class="animated fadeIn">
            <div class="row">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                          <i class="fa fa-align-justify"></i> Search between dates
                        </div>
                        <div class="card-body">

                            
                            <div class="input-daterange input-group" id="datepicker">
                                <span class="input-group-addon pl-4 pr-4">From</span>

                                <asp:TextBox ID="fromSearchTextBox" runat="server" CssClass="input-sm form-control"></asp:TextBox>
                                <span class="input-group-addon pl-4 pr-4">To</span>
                                
                                <asp:TextBox ID="toSearchTextBox" runat="server" CssClass="input-sm form-control"></asp:TextBox>
                                <span class="input-group-btn">
                                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" CssClass="btn btn-secondary" />
                                </span>
                            </div>

                             

                            
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:authuserConnectionString %>" SelectCommand="SELECT * FROM [customer] WHERE (([create_date] &lt; @create_date2) AND ([create_date] &gt; @create_date))" ProviderName="<%$ ConnectionStrings:authuserConnectionString.ProviderName %>">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="toSearchTextBox" Name="create_date2" PropertyName="Text" Type="DateTime" />
                                    <asp:ControlParameter ControlID="fromSearchTextBox" Name="create_date" PropertyName="Text" Type="DateTime" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                                    
                            <asp:GridView ID="GridView1" CssClass="table table-striped" runat="server" AutoGenerateColumns="False" DataKeyNames="c_id" DataSourceID="SqlDataSource1" OnRowDataBound="GridView1_RowDataBound">
                                <Columns>
                                    <asp:TemplateField HeaderText="c_id" InsertVisible="False" SortExpression="c_id">
                                  
                                        <ItemTemplate>
                                            <asp:LinkButton ID="LinkButton1" OnClick="LinkButton1_Click" runat="server" Text='<%# Eval("c_id") %>'></asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="c_name" SortExpression="c_fname">
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("c_fname") %>'></asp:Label>
                                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("c_mname") %>'></asp:Label>
                                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("c_lname") %>'></asp:Label>
                                            </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" Visible="false" />
                                    <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                                    <asp:BoundField DataField="email_id" HeaderText="email_id" SortExpression="email_id" Visible="false"/>
                                    <asp:BoundField DataField="mobile_no" HeaderText="mobile_no" SortExpression="mobile_no" Visible="false" />
                                    <asp:BoundField DataField="cphoto_path" HeaderText="cphoto_path" SortExpression="cphoto_path" Visible="false" />
                                    <asp:BoundField DataField="mphoto_path" HeaderText="mphoto_path" SortExpression="mphoto_path" Visible="false"/>
                                    <asp:BoundField DataField="create_date" HeaderText="create_date" SortExpression="create_date" />
                                    <asp:BoundField DataField="created_date" HeaderText="created_date" SortExpression="created_date" Visible="false" />
                                    <asp:BoundField DataField="updated_date" HeaderText="updated_date" SortExpression="updated_date" Visible="false"/>
                                    <asp:BoundField DataField="interest_rate" HeaderText="interest_rate" SortExpression="interest_rate" Visible="false" />
                                    <asp:BoundField DataField="credit_limit" HeaderText="credit_limit" SortExpression="credit_limit" Visible="false" />
                                    <asp:CheckBoxField DataField="isactive" HeaderText="isactive" SortExpression="isactive" Visible="false" />
                                <asp:TemplateField HeaderText="Total Credit.(in Rs)"></asp:TemplateField>
                                    <asp:TemplateField HeaderText="Total Debit.(in Rs)"></asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
 </asp:Content>