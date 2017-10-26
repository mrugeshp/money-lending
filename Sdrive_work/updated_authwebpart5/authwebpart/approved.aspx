<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="approved.aspx.cs" Inherits="authwebpart.approved" %>
<asp:Content ID="Content1" ContentPlaceHolderID="approvalID" runat="server">

   

        <div>


                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="reg_id" DataSourceID="SqlDataSource3">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="reg_id" HeaderText="reg_id" InsertVisible="False" ReadOnly="True" SortExpression="reg_id" />
                        <asp:BoundField DataField="reg_uname" HeaderText="reg_uname" SortExpression="reg_uname" />
                        <asp:BoundField DataField="email_id" HeaderText="email_id" SortExpression="email_id" />
                        <asp:BoundField DataField="mobile_no" HeaderText="mobile_no" SortExpression="mobile_no" />
                        <asp:BoundField DataField="reg_date" HeaderText="reg_date" SortExpression="reg_date" />
                        <asp:CheckBoxField DataField="isvalid" HeaderText="isvalid" SortExpression="isvalid" />
                    </Columns>
                </asp:GridView>
              <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\serverndb.mdf;Integrated Security=True" DeleteCommand="DELETE FROM [reg_user] WHERE [reg_id] = @reg_id" InsertCommand="INSERT INTO [reg_user] ([reg_uname], [email_id], [mobile_no], [reg_date], [isvalid]) VALUES (@reg_uname, @email_id, @mobile_no, @reg_date, @isvalid)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [reg_id], [reg_uname], [email_id], [mobile_no], [reg_date], [isvalid] FROM [reg_user] WHERE ([isvalid] = @isvalid) ORDER BY [reg_date] DESC" UpdateCommand="UPDATE [reg_user] SET [reg_uname] = @reg_uname, [email_id] = @email_id, [mobile_no] = @mobile_no, [reg_date] = @reg_date, [isvalid] = @isvalid WHERE [reg_id] = @reg_id">
                    <DeleteParameters>
                        <asp:Parameter Name="reg_id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="reg_uname" Type="String" />
                        <asp:Parameter Name="email_id" Type="String" />
                        <asp:Parameter Name="mobile_no" Type="Decimal" />
                        <asp:Parameter Name="reg_date" Type="DateTime" />
                        <asp:Parameter Name="isvalid" Type="Boolean" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:Parameter DefaultValue="True" Name="isvalid" Type="Boolean" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="reg_uname" Type="String" />
                        <asp:Parameter Name="email_id" Type="String" />
                        <asp:Parameter Name="mobile_no" Type="Decimal" />
                        <asp:Parameter Name="reg_date" Type="DateTime" />
                        <asp:Parameter Name="isvalid" Type="Boolean" />
                        <asp:Parameter Name="reg_id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>

        </div>
 
    </asp:Content>