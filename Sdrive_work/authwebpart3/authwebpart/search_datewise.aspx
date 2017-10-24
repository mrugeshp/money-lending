<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="search_datewise.aspx.cs" Inherits="authwebpart.search_datewise" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/pikaday.css" rel="stylesheet" />
    <link href="css/site.css" rel="stylesheet" />
    <link href="css/triangle.css" rel="stylesheet" />
    <link href="css/theme.css" rel="stylesheet" />
    <script src="pikaday.js"></script>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 334px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            from<script type="text/javascript">
                                var picker = new Pikaday(
                                    {
                                        field: document.getElementById('TextBox1'),
                                        firstDay: 1,
                                        minDate: new Date('2000-01-01'),
                                        maxDate: new Date('2020-12-31'),
                                        yearRange: [2000, 2020],
                                        numberOfMonths: 1,
                                        theme: 'dark-theme'
                                    });
                            </script></td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                             to:<script type="text/javascript">
                                 var picker = new Pikaday(
                                     {
                                         field: document.getElementById('TextBox2'),
                                         firstDay: 1,
                                         minDate: new Date('2000-01-01'),
                                         maxDate: new Date('2020-12-31'),
                                         yearRange: [2000, 2020],
                                         numberOfMonths: 1,
                                         theme: 'dark-theme'
                                     });
                            </script></td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="search" />
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:authuserConnectionString %>" SelectCommand="SELECT * FROM [customer] WHERE (([create_date] &lt; @create_date2) AND ([create_date] &gt; @create_date))" ProviderName="<%$ ConnectionStrings:authuserConnectionString.ProviderName %>">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="TextBox2" Name="create_date2" PropertyName="Text" Type="DateTime" />
                                <asp:ControlParameter ControlID="TextBox1" Name="create_date" PropertyName="Text" Type="DateTime" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="c_id" DataSourceID="SqlDataSource1">
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
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
