<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="customer.aspx.cs" Inherits="authwebpart.customer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style6 {
            width: 240px;
        }
        .auto-style7 {
            width: 240px;
            height: 23px;
        }
        .auto-style8 {
            height: 23px;
        }
        .auto-style9 {
            height: 22px;
        }
        .auto-style12 {
            width: 148px;
        }
        .auto-style13 {
            height: 22px;
            width: 148px;
        }
        .auto-style14 {
            width: 140px;
        }
        .auto-style15 {
            height: 22px;
            width: 140px;
        }
        .auto-style16 {
            width: 108px;
        }
        .auto-style17 {
            height: 22px;
            width: 108px;
        }
        .auto-style18 {
            width: 110px;
            height: 23px;
        }
        .auto-style19 {
            width: 148px;
            height: 23px;
        }
        .auto-style20 {
            width: 140px;
            height: 23px;
        }
        .auto-style21 {
            width: 108px;
            height: 23px;
        }
        .auto-style22 {
            width: 112px;
        }
        .auto-style23 {
            height: 22px;
            width: 112px;
        }
        .auto-style24 {
            height: 23px;
            width: 112px;
        }
        .auto-style25 {
            width: 116px;
        }
        .auto-style26 {
            height: 552px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style26">
                        <asp:Wizard ID="Wizard1" runat="server" ActiveStepIndex="1" Height="265px" Width="722px" OnFinishButtonClick="Wizard1_FinishButtonClick">
                            <StartNavigationTemplate>
                                <asp:Button ID="StartNextButton" runat="server" CommandName="MoveNext" Text="Next" />
                            </StartNavigationTemplate>
                            <WizardSteps>
                                <asp:WizardStep runat="server" title="Step 1">
                                    <asp:Label ID="Label1" runat="server" Text="FirstName:"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="TextBox1" runat="server" Height="22px" Width="159px"></asp:TextBox>
                                    <br />
                                    <br />
                                    <asp:Label ID="Label2" runat="server" Text="MiddleName:"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="TextBox2" runat="server" Height="25px" Width="157px"></asp:TextBox>
                                    <br />
                                    <br />
                                    <asp:Label ID="Label3" runat="server" Text="LastName:"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="TextBox3" runat="server" Height="23px" Width="153px"></asp:TextBox>
                                    <br />
                                    <br />
                                    <asp:Label ID="Label4" runat="server" Text="Address:"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="TextBox4" runat="server" Height="33px" Width="147px"></asp:TextBox>
                                    <br />
                                    <br />
                                    <asp:Label ID="Label5" runat="server" Text="City:"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:DropDownList ID="DropDownList3" runat="server">
                                        <asp:ListItem>--Select--</asp:ListItem>
                                        <asp:ListItem>A</asp:ListItem>
                                        <asp:ListItem>B</asp:ListItem>
                                        <asp:ListItem>C</asp:ListItem>
                                        <asp:ListItem>D</asp:ListItem>
                                    </asp:DropDownList>
                                    <br />
                                    <br />
                                    <asp:Label ID="Label6" runat="server" Text="Email Id:"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="TextBox6" runat="server" Width="188px"></asp:TextBox>
                                    <br />
                                    <br />
                                    <asp:Label ID="Label7" runat="server" Text="Mobile No:"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="TextBox7" runat="server" Width="143px"></asp:TextBox>
                                    <br />
                                    <br />
                                    <br />
                                    <asp:Label ID="Label8" runat="server" Text="Customer Photo:"></asp:Label>
                                    &nbsp;<asp:FileUpload ID="FileUpload1" runat="server" Height="27px" Width="245px" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Upload" />
                                    &nbsp;
                                    <asp:Label ID="Label22" runat="server"></asp:Label>
                                    <br />
                                    <br />
                                    <asp:Label ID="Label9" runat="server" Text="Mortgage Photo:"></asp:Label>
                                    &nbsp;<asp:FileUpload ID="FileUpload2" runat="server" Height="22px" Width="245px" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Upload" />
                                    &nbsp;
                                    <asp:Label ID="Label23" runat="server"></asp:Label>
                                    <br />
                                    <br />
                                    <br />
                                </asp:WizardStep>
                                <asp:WizardStep runat="server" title="Step 2">
                                    <table class="auto-style1">
                                        <tr>
                                            <td class="auto-style7">
                                                <asp:Label ID="Label10" runat="server" Text="Customer Id:"></asp:Label>
                                            </td>
                                            <td class="auto-style8">
                                                <asp:TextBox ID="TextBox8" runat="server" Enabled="False" Width="105px"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style6">
                                                <asp:Label ID="Label11" runat="server" Text="Customer Name:"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox9" runat="server" Width="209px"></asp:TextBox>
                                            </td>
                                        </tr>
                                    </table>
                                    &nbsp;<table class="auto-style1">
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label12" runat="server" Text="Add Mortgage Details:"></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                    <table class="auto-style1">
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td class="auto-style12">&nbsp;</td>
                                            <td class="auto-style14">&nbsp;</td>
                                            <td class="auto-style16">&nbsp;</td>
                                            <td class="auto-style22">&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:Label ID="Label13" runat="server" Text="Item Type"></asp:Label>
                                            </td>
                                            <td class="auto-style12">
                                                <asp:Label ID="Label15" runat="server" Text="Item Name"></asp:Label>
                                            </td>
                                            <td class="auto-style14">
                                                <asp:Label ID="Label16" runat="server" Text="Gross Weight"></asp:Label>
                                            </td>
                                            <td class="auto-style16">
                                                <asp:Label ID="Label17" runat="server" Text="Rate"></asp:Label>
                                            </td>
                                            <td class="auto-style22">
                                                <asp:Label ID="Label18" runat="server" Text="Amount"></asp:Label>
                                            </td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style9">
                                                <asp:DropDownList ID="DropDownList1" runat="server" Height="16px">
                                                    <asp:ListItem>gold</asp:ListItem>
                                                    <asp:ListItem>silver</asp:ListItem>
                                                    <asp:ListItem>platinium</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                            <td class="auto-style13">
                                                <asp:TextBox ID="TextBox10" runat="server" Height="22px"></asp:TextBox>
                                            </td>
                                            <td class="auto-style15">
                                                <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                                            </td>
                                            <td class="auto-style17">
                                                <asp:TextBox ID="TextBox14" runat="server" Width="79px"></asp:TextBox>
                                            </td>
                                            <td class="auto-style23">
                                                <asp:TextBox ID="TextBox16" runat="server" Height="17px" Width="98px"></asp:TextBox>
                                            </td>
                                            <td class="auto-style9">
                                                <table class="auto-style1">
                                                    <tr>
                                                        <td>
                                                            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Edit</asp:LinkButton>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Delete</asp:LinkButton>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style18"></td>
                                            <td class="auto-style19"></td>
                                            <td class="auto-style20"></td>
                                            <td class="auto-style21"></td>
                                            <td class="auto-style24"></td>
                                            <td class="auto-style8"></td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:DropDownList ID="DropDownList2" runat="server" Height="16px">
                                                    <asp:ListItem>gold</asp:ListItem>
                                                    <asp:ListItem>silver</asp:ListItem>
                                                    <asp:ListItem>platinium</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                            <td class="auto-style12">
                                                <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                                            </td>
                                            <td class="auto-style14">
                                                <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
                                            </td>
                                            <td class="auto-style16">
                                                <asp:TextBox ID="TextBox15" runat="server" Width="78px"></asp:TextBox>
                                            </td>
                                            <td class="auto-style22">
                                                <asp:TextBox ID="TextBox17" runat="server" Height="17px" Width="104px"></asp:TextBox>
                                            </td>
                                            <td>
                                                <table class="auto-style1">
                                                    <tr>
                                                        <td>
                                                            <asp:LinkButton ID="LinkButton3" runat="server">Edit</asp:LinkButton>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:LinkButton ID="LinkButton4" runat="server">Delete</asp:LinkButton>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td class="auto-style12">&nbsp;</td>
                                            <td class="auto-style14">&nbsp;</td>
                                            <td class="auto-style16">&nbsp;</td>
                                            <td class="auto-style22">&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                    </table>
                                    <table class="auto-style1">
                                        <tr>
                                            <td class="auto-style25">
                                                <asp:Label ID="Label19" runat="server" Text="Credit Limit:"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox18" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style25">&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style25">
                                                <asp:Label ID="Label20" runat="server" Text="Interest Rate:"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox19" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style25">&nbsp;</td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="auto-style25">
                                                <asp:Label ID="Label21" runat="server" Text="First Debit Amt:"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox20" runat="server"></asp:TextBox>
                                            </td>
                                        </tr>
                                    </table>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <br />
                                    <br />
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                    <br />
                                    <br />
                                    <br />
                                    <br />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <br />
                                    &nbsp;&nbsp;
                                    <br />
                                    <br />
                                    <br />
                                </asp:WizardStep>
                            </WizardSteps>
                        </asp:Wizard>
                    </td>
                    <td class="auto-style26"></td>
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
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [account]"></asp:SqlDataSource>
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
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
