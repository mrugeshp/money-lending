<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site1.Master"  CodeBehind="invoice.aspx.cs" Inherits="authwebpart.invoice" %>
<asp:Content ID="Content1" ContentPlaceHolderID="invoiceID" runat="server">


  <div class="container"   >
   


               <label for="invoice-number-container">Invoice#</label>
      
      <asp:TextBox ID="TextBox5" runat="server"  Enabled="False"></asp:TextBox>
           <label for="invoice-number">Date </label> <div class="form-group row datepicker">
                                <label class="col-lg-3 col-md-3">Date</label>
                                <div class="col-md-9 col-lg-9">
                                    <asp:TextBox ID="billDate" runat="server" CssClass="input-sm form-control"></asp:TextBox>
                                </div>
                            </div>
                customer_id:<asp:TextBox ID="TextBox6" runat="server" Height="16px" Width="134px" OnTextChanged="TextBox6_TextChanged" AutoPostBack="True" TextMode="Number"></asp:TextBox>
             
            <table>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox7" runat="server" Width="219px" EnableViewState="False">Name</asp:TextBox>
                </td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Image ID="Image1" runat="server" ImageUrl="img/logo.png" Width="180px" Height="100px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox8" runat="server" Height="51px" Width="155px">Address</asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox9" runat="server">city</asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox10" runat="server">Mobileno</asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:authuserConnectionString %>" DeleteCommand="DELETE FROM [dinvoice] WHERE [Id] = @Id" InsertCommand="INSERT INTO [dinvoice] ([product_name], [quantity], [rate]) VALUES (@product_name, @quantity, @rate)" SelectCommand="SELECT [Id], [product_name], [quantity], [rate] FROM [dinvoice]" UpdateCommand="UPDATE [dinvoice] SET [product_name] = @product_name, [quantity] = @quantity, [rate] = @rate WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="product_name" Type="String" />
                <asp:Parameter Name="quantity" Type="Int32" />
                <asp:Parameter Name="rate" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="product_name" Type="String" />
                <asp:Parameter Name="quantity" Type="Int32" />
                <asp:Parameter Name="rate" Type="Int32" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4"></td>
                <td class="auto-style5"></td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label1" runat="server" Text="Product Name:"></asp:Label>
&nbsp;
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Qty:"></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Number"></asp:TextBox>
&nbsp;&nbsp;
                    <asp:Label ID="Label3" runat="server" Text="Rate:"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox3" runat="server" TextMode="Number"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
        &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="756px" OnRowDataBound="GridView1_RowDataBound" ShowHeaderWhenEmpty="True" >
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                      <asp:TemplateField HeaderText = "Row Number" ItemStyle-Width="100">
        <ItemTemplate>
            <asp:Label ID="lblRowNumber" Text='<%# Container.DataItemIndex + 1 %>' runat="server" />
        </ItemTemplate>

<ItemStyle Width="100px"></ItemStyle>
    </asp:TemplateField>
                    <asp:BoundField DataField="product_name" HeaderText="product_name" SortExpression="product_name" />
                    <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
                    <asp:BoundField DataField="rate" HeaderText="rate" SortExpression="rate" />
                    <asp:TemplateField HeaderText="Id" Visible="false" InsertVisible="False" SortExpression="Id">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Id") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                      <asp:TemplateField HeaderText="Total"><ItemTemplate>
                                  
                    
                    </ItemTemplate></asp:TemplateField>
                    </Columns>
            </asp:GridView>
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">SibTotal:</td>
                <td>
                    <asp:Label ID="Label4" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">GST(%)<asp:TextBox ID="TextBox4" runat="server" AutoPostBack="True" OnTextChanged="TextBox4_TextChanged" Width="44px">0</asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label5" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Total Payment:</td>
                <td>
                    <asp:Label ID="Label6" runat="server"></asp:Label>
                &nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="Button3" runat="server" Text="Save" OnClick="Button3_Click" />
                </td>
                <td>
                  <button value="print"  onclick="window.print();" >print</button>
                   
                </td>
            </tr>
        </table>
        <asp:Label ID="Label7" runat="server" Visible="False"></asp:Label>
 </div>

    </asp:Content>