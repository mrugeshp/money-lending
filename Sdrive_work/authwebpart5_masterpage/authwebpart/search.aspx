<%@ Page Language="C#"  MasterPageFile="~/Site1.Master"  AutoEventWireup="true" CodeBehind="search.aspx.cs" Inherits="authwebpart.search" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="searchID" runat="server">

   

 
    

<div>

    <table class="auto-style3">
        <tr>
            <td><h4 class="auto-style4">Search By:<asp:CheckBoxList ID="CheckBoxList1" runat="server" Height="20px" RepeatDirection="Horizontal" Width="735px">
                <asp:ListItem>Name</asp:ListItem>
                <asp:ListItem>Village</asp:ListItem>
                <asp:ListItem>MobileNo</asp:ListItem>
                <asp:ListItem>RefrenceNo</asp:ListItem>
                </asp:CheckBoxList>
                </h4></td>
        </tr>
        <tr>
            <td class="auto-style5">

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server" Height="28px" Width="533px" AutoCompleteType="Enabled"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Search" />
                <br />
                <!------------------>




                <!------------------>


            </td>
        </tr>
        <tr>
            <td>

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
        </tr>
    </table>
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">
                </td>
            <td class="auto-style2"></td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="c_id" DataSourceID="SqlDataSource1" Enabled="False" Visible="False">
                    <Columns>
                        <asp:TemplateField HeaderText="c_id" InsertVisible="False" SortExpression="c_id">
                            
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" OnClick="LinkButton1_Click" runat="server" Text='<%# Eval("c_id") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="c_fname" HeaderText="c_fname" SortExpression="c_fname" />
                        <asp:BoundField DataField="c_mname" HeaderText="c_mname" SortExpression="c_mname" />
                        <asp:BoundField DataField="c_lname" HeaderText="c_lname" SortExpression="c_lname" />
                        <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                        <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                        <asp:BoundField DataField="email_id" HeaderText="email_id" SortExpression="email_id" />
                        <asp:BoundField DataField="mobile_no" HeaderText="mobile_no" SortExpression="mobile_no" />
                        <asp:BoundField DataField="cphoto_path" HeaderText="cphoto_path" SortExpression="cphoto_path" />
                        <asp:BoundField DataField="mphoto_path" HeaderText="mphoto_path" SortExpression="mphoto_path" />
                        <asp:BoundField DataField="create_date" HeaderText="create_date" SortExpression="create_date" />
                        <asp:BoundField DataField="created_date" HeaderText="created_date" SortExpression="created_date" />
                        <asp:BoundField DataField="updated_date" HeaderText="updated_date" SortExpression="updated_date" />
                        <asp:BoundField DataField="interest_rate" HeaderText="interest_rate" SortExpression="interest_rate" />
                        <asp:BoundField DataField="credit_limit" HeaderText="credit_limit" SortExpression="credit_limit" />
                        <asp:CheckBoxField DataField="isactive" HeaderText="isactive" SortExpression="isactive" />
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
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="c_id" DataSourceID="SqlDataSource2" Enabled="False" Visible="False" >
                    <Columns>
                        <asp:TemplateField HeaderText="c_id" InsertVisible="False" SortExpression="c_id">
                          
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton2" OnClick="LinkButton2_Click" runat="server" Text='<%# Eval("c_id") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="c_fname" HeaderText="c_fname" SortExpression="c_fname" />
                        <asp:BoundField DataField="c_mname" HeaderText="c_mname" SortExpression="c_mname" />
                        <asp:BoundField DataField="c_lname" HeaderText="c_lname" SortExpression="c_lname" />
                        <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                        <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                        <asp:BoundField DataField="email_id" HeaderText="email_id" SortExpression="email_id" />
                        <asp:BoundField DataField="mobile_no" HeaderText="mobile_no" SortExpression="mobile_no" />
                        <asp:BoundField DataField="cphoto_path" HeaderText="cphoto_path" SortExpression="cphoto_path" />
                        <asp:BoundField DataField="mphoto_path" HeaderText="mphoto_path" SortExpression="mphoto_path" />
                        <asp:BoundField DataField="create_date" HeaderText="create_date" SortExpression="create_date" />
                        <asp:BoundField DataField="created_date" HeaderText="created_date" SortExpression="created_date" />
                        <asp:BoundField DataField="updated_date" HeaderText="updated_date" SortExpression="updated_date" />
                        <asp:BoundField DataField="interest_rate" HeaderText="interest_rate" SortExpression="interest_rate" />
                        <asp:BoundField DataField="credit_limit" HeaderText="credit_limit" SortExpression="credit_limit" />
                        <asp:CheckBoxField DataField="isactive" HeaderText="isactive" SortExpression="isactive" />
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
                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="c_id" Enabled="False" Visible="False" >
                    <Columns>
                        <asp:TemplateField HeaderText="c_id" InsertVisible="False" SortExpression="c_id">
                          
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton3" OnClick="LinkButton3_Click" runat="server" Text='<%# Eval("c_id") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        
                        <asp:BoundField DataField="c_fname" HeaderText="c_fname" SortExpression="c_fname" />
                        <asp:BoundField DataField="c_mname" HeaderText="c_mname" SortExpression="c_mname" />
                        <asp:BoundField DataField="c_lname" HeaderText="c_lname" SortExpression="c_lname" />
                        <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                        <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                        <asp:BoundField DataField="email_id" HeaderText="email_id" SortExpression="email_id" />
                        <asp:BoundField DataField="mobile_no" HeaderText="mobile_no" SortExpression="mobile_no" />
                        <asp:BoundField DataField="cphoto_path" HeaderText="cphoto_path" SortExpression="cphoto_path" />
                        <asp:BoundField DataField="mphoto_path" HeaderText="mphoto_path" SortExpression="mphoto_path" />
                        <asp:BoundField DataField="create_date" HeaderText="create_date" SortExpression="create_date" />
                        <asp:BoundField DataField="created_date" HeaderText="created_date" SortExpression="created_date" />
                        <asp:BoundField DataField="updated_date" HeaderText="updated_date" SortExpression="updated_date" />
                        <asp:BoundField DataField="interest_rate" HeaderText="interest_rate" SortExpression="interest_rate" />
                        <asp:BoundField DataField="credit_limit" HeaderText="credit_limit" SortExpression="credit_limit" />
                        <asp:CheckBoxField DataField="isactive" HeaderText="isactive" SortExpression="isactive" />
                    </Columns>
                </asp:GridView>
            </td>
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
    </asp:Content>