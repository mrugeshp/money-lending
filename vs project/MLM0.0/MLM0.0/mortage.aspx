<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mortage.aspx.cs" Inherits="MLM0._0.mortage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style5 {
            width: 280px;
        }
        .auto-style6 {
            width: 280px;
            height: 23px;
        }
        .auto-style7 {
            height: 23px;
        }
        .auto-style9 {
            height: 23px;
            width: 61px;
        }
        .auto-style10 {
            width: 61px;
        }
        .auto-style11 {
            margin-left: 8px;
        }
        .auto-style12 {
            width: 349px;
        }
        .auto-style13 {
            height: 23px;
            width: 349px;
        }
        .auto-style14 {
            width: 854px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style14">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14">
                        <asp:DropDownList ID="DropDownList1" runat="server">
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        <table>
           
                
            </table>
        <table class="auto-style1">
          
            <tr>
                <td class="auto-style6">
                    <asp:ListBox ID="ListBox1" runat="server" Height="125px" Width="317px"></asp:ListBox>
                </td>
                <td class="auto-style9">
                    <br />
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style11" Height="39px" OnClick="Button1_Click" Text="&gt;&gt;" Width="48px" />
                    <br />
                    <br />
                    <br />
                </td>
                <td class="auto-style7">
                    <asp:ListBox ID="ListBox2" runat="server" Height="116px" Width="347px"></asp:ListBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style10">&nbsp;</td>
                <td>
                    <asp:Button ID="Button2" runat="server" Text="REMOVE" />
                </td>
            </tr>
            <tr>
                <td class="auto-style6"></td>
                <td class="auto-style9"></td>
                <td class="auto-style7"></td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button3" runat="server" Text="ADD ITEMS" Width="99px" />
                    &nbsp;</td>
                <td class="auto-style9"></td>
                <td class="auto-style7"></td>
            </tr>
          
        </table>
    
    
    </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:Label ID="Label1" runat="server" Text="Tot.Weight:"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="118px"></asp:TextBox>
                </td>
                <td class="auto-style7">
                    <asp:Label ID="Label2" runat="server" Text="Tot.Amount:"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox2" runat="server" Height="27px" Width="133px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13"></td>
                <td class="auto-style7"></td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button4" runat="server" Text="Genrate RefrenceNO." />
                    &nbsp;</td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label3" runat="server" Text="genrated-no-display"></asp:Label>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">
                    <asp:Label ID="Label4" runat="server" Text="RefrenceLocation:"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox3" runat="server" Height="28px" Width="194px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">
                    <asp:Label ID="Label5" runat="server" Text="First-Debit-Amt:"></asp:Label>
&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox4" runat="server" Height="30px" Width="199px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button5" runat="server" Height="29px" Text="Submit" Width="109px" />
                    &nbsp;</td>
                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button6" runat="server" Height="30px" Text="Reset" Width="117px" />
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
