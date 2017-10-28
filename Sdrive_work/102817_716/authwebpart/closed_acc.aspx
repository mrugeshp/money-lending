<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site1.Master"   CodeBehind="closed_acc.aspx.cs" Inherits="authwebpart.closed_acc" %>

<asp:Content ID="Content1" ContentPlaceHolderID="closed_accID" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(localdb)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\serverndb.mdf;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [c_id], [c_fname], [c_mname], [c_lname], [city], [updated_date] FROM [customer] WHERE ([isactive] = @isactive) ORDER BY [updated_date] DESC" DeleteCommand="DELETE FROM [customer] WHERE [c_id] = @c_id" InsertCommand="INSERT INTO [customer] ([c_fname], [c_mname], [c_lname], [city], [updated_date]) VALUES (@c_fname, @c_mname, @c_lname, @city, @updated_date)" UpdateCommand="UPDATE [customer] SET [c_fname] = @c_fname, [c_mname] = @c_mname, [c_lname] = @c_lname, [city] = @city, [updated_date] = @updated_date WHERE [c_id] = @c_id">
                <DeleteParameters>
                    <asp:Parameter Name="c_id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="c_fname" Type="String" />
                    <asp:Parameter Name="c_mname" Type="String" />
                    <asp:Parameter Name="c_lname" Type="String" />
                    <asp:Parameter Name="city" Type="String" />
                    <asp:Parameter Name="updated_date" Type="DateTime" />
                </InsertParameters>
                <SelectParameters>
                    <asp:Parameter DefaultValue="False" Name="isactive" Type="Boolean" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="c_fname" Type="String" />
                    <asp:Parameter Name="c_mname" Type="String" />
                    <asp:Parameter Name="c_lname" Type="String" />
                    <asp:Parameter Name="city" Type="String" />
                    <asp:Parameter Name="updated_date" Type="DateTime" />
                    <asp:Parameter Name="c_id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="c_id" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="c_id" HeaderText="c_id" InsertVisible="False" ReadOnly="True" SortExpression="c_id" />
                    <asp:TemplateField HeaderText="c_name" SortExpression="c_fname">
                      
                        <ItemTemplate>
                            <a href="/view.aspx?c_id=<%#Eval("c_id") %>">
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("c_fname") %>'></asp:Label>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("c_mname") %>'></asp:Label>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("c_lname") %>'></asp:Label>
                            </a>
                        </ItemTemplate>
                    </asp:TemplateField>
                  
                    <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                    <asp:BoundField DataField="updated_date" HeaderText="updated_date" SortExpression="updated_date" />
                </Columns>
            </asp:GridView>
        </div>
    </asp:Content>