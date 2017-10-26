<%@ Page Language="C#"  MasterPageFile="~/Site1.Master"  AutoEventWireup="true" CodeBehind="search.aspx.cs" Inherits="authwebpart.search" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="searchID" runat="server">

   
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
                          <i class="fa fa-align-justify"></i> Search account
                        </div>
                        <div class="card-body">
                            <table class="auto-style3">
                                <tr>
                                    <td class="auto-style5">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:TextBox ID="TextBox1" runat="server" Height="28px" Width="533px" AutoCompleteType="Enabled"></asp:TextBox>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" />
                                    </td>
                                </tr>
                            </table>
                            <table class="auto-style1">
                                <tr>
                                    <td class="auto-style2">
                                        <asp:GridView ID="GridView1" OnRowDataBound="GridView1_RowDataBound" CssClass="table table-striped" runat="server" AutoGenerateColumns="False" DataKeyNames="c_id" DataSourceID="SqlDataSource1" Enabled="False" Visible="False">
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
                                    </td>
                                    <td class="auto-style2"></td>
                                </tr>
                                <tr>
                                    <td class="auto-style2"></td>
                                    <td class="auto-style2"></td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="c_id" DataSourceID="SqlDataSource2" Enabled="False" Visible="False" OnRowDataBound="GridView2_RowDataBound" >
                                            <Columns>
                                                <asp:TemplateField HeaderText="c_id" InsertVisible="False" SortExpression="c_id">
                          
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="LinkButton2" OnClick="LinkButton2_Click" runat="server" Text='<%# Eval("c_id") %>'></asp:LinkButton>
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
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="auto-style2">
                                        &nbsp;</td>
                                    <td class="auto-style2"></td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:authuserConnectionString %>" DataSourceMode="DataReader" SelectCommand="SELECT * FROM [customer] WHERE ([mobile_no] = @mobile_no) ORDER BY [create_date] DESC" ProviderName="<%$ ConnectionStrings:authuserConnectionString.ProviderName %>">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="TextBox1" Name="mobile_no" PropertyName="Text" Type="Decimal" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:authuserConnectionString %>" DataSourceMode="DataReader" SelectCommand="SELECT * FROM [customer] WHERE ([city] = @city)" ProviderName="<%$ ConnectionStrings:authuserConnectionString.ProviderName %>">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="TextBox1" Name="city" PropertyName="Text" Type="String" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:authuserConnectionString %>" SelectCommand="SELECT * FROM [customer] WHERE ((CONTAINS([c_fname], @c_fname) OR (CONTAINS([c_lname], @c_lname) OR (CONTAINS([c_mname], @c_mname)) " ProviderName="System.Data.SqlClient">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="TextBox1" Name="c_fname" PropertyName="Text" Type="String" DefaultValue="null" />
                                                <asp:ControlParameter ControlID="TextBox1" Name="c_lname" PropertyName="Text" DefaultValue="null" Type="String" />
                                                <asp:ControlParameter ControlID="TextBox1" Name="c_mname" PropertyName="Text" DefaultValue="null" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:GridView ID="GridView3" CssClass="searchID_GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="c_id" Enabled="False" Visible="False" OnRowDataBound="GridView3_RowDataBound" >
                                            <Columns>
                                                <asp:TemplateField HeaderText="c_id" InsertVisible="False" SortExpression="c_id">
                          
                                                    <ItemTemplate>
                                                        <asp:LinkButton ID="LinkButton3" OnClick="LinkButton3_Click" runat="server" Text='<%# Eval("c_id") %>'></asp:LinkButton>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                        
                                                <asp:TemplateField HeaderText="c_fname" SortExpression="c_fname">
                                                    <ItemTemplate>
                                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("c_fname") %>'></asp:Label>
                                                       <asp:Label ID="Label2" runat="server" Text='<%# Bind("c_mname") %>'></asp:Label>
                                                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("c_lname") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                                        
                                                <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" Visible="False" />
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
                                    </td>
                                    <td>&nbsp;</td>
                                </tr>
       
                            </table>
   
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>