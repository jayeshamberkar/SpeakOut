<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Addreporter.aspx.cs" Inherits="Speakoutsign.Admin_Addreporter" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        .auto-style1 {
            height: 96px;
        }
        .auto-style2 {
            width: 596px;
        }
        .auto-style3 {
            width: 677px;
            height: 410px;
        }
        .auto-style5 {
            width: 307px;
        }
        .auto-style6 {
            width: 742px;
        }
        .auto-style7 {
            height: 53px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <center>
        <div class="navbar" style="border-width: 3px; border-color: #333333; /*height: 460px*/">
            <table align="center" style="border:1px solid blue;" class="auto-style3">
                <tr>
                    <td colspan="2" align="center" class="auto-style1">
                        <h2 class="auto-style6">
                            Add Reporter
                        </h2>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" align="Right">
                        <b style="font-size:21px;font-weight:bold;">Reporter Name: &nbsp;&nbsp;&nbsp;</b>
                    </td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox1" runat="server" Height="44px" Width="230px" CausesValidation="true"
                            placeholder="Reporter Name" BorderColor="#333333" 
                            BorderWidth="2px" Font-Bold="true" Font-Size="Medium" ForeColor="Black"
                            BackColor="Transparent"></asp:TextBox>
                        <br />
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                             ErrorMessage="*Enter Reporter Name" ControlToValidate="TextBox1" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                          <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Display="Dynamic" ControlToValidate="TextBox1" ErrorMessage="*Please enter proper name(only characters)" ValidationExpression="[a-zA-Z ]*$" ForeColor="Red" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" align="Right">
                        <b style="font-size:21px;font-weight:bold;">Password: &nbsp;&nbsp;&nbsp;</b>
                    </td>
                     <td class="auto-style2">
                        <asp:TextBox ID="TextBox2" runat="server" Height="44px" Width="230px" CausesValidation="true"
                            placeholder="Password" BorderColor="#333333" TextMode="Password"
                            BorderWidth="2px" Font-Bold="true" Font-Size="Medium" ForeColor="Black"
                            BackColor="Transparent"></asp:TextBox>
                          <br />
                         <asp:RequiredFieldValidator ID="req3" Display="Dynamic" runat="server" ErrorMessage="*Please enter password" ControlToValidate="TextBox2" ForeColor="Red" />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" Display="Dynamic" runat="server" ControlToValidate="TextBox2" 
                ErrorMessage="*Enter upto 11 charcter alpha numeric password" ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,11}$" ForeColor="Red" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center" class="auto-style7">
                        <asp:Button ID="Button1" runat="server" Text="Add" Height="44px" Width="90px" Font-Bold="true" Font-Size="Medium" BackColor="WhiteSmoke" 
                            BorderColor="#333333" BorderWidth="2px" onClick="Button1_Click"></asp:Button>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                         <asp:Label ID="Label1" runat="server" ForeColor="Red"  Height="29px" Font-Size="Large" Width="180px"></asp:Label>
                    </td>
                </tr>
            </table>
            </div>
         </center>
</asp:Content>