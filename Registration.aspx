<%@ Page Title="" Language="C#" MasterPageFile="~/Common/CommonMasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Speakoutsign.Common_Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            width: 367px;
            text-align: right;
        }
        .auto-style5 {
            width: 117px;
        }
        .auto-style6 {
            width: 367px;
            text-align: right;
            height: 56px;
        }
        .auto-style7 {
            width: 117px;
            height: 56px;
        }
        .auto-style9 {
            width: 967px;
            height: 287px;
        }
        .auto-style10 {
            width: 763px;
            height: 290px;
            margin-left: 294px;
        }
        .auto-style11 {
            width: 770px;
            height: 56px;
        }
        .auto-style12 {
            width: 770px;
        }
        .auto-style13 {
            width: 367px;
            text-align: right;
            height: 40px;
        }
        .auto-style14 {
            width: 117px;
            height: 40px;
        }
        .auto-style15 {
            width: 770px;
            height: 40px;
        }
        .auto-style16 {
            width: 367px;
            text-align: right;
            height: 35px;
        }
        .auto-style17 {
            width: 117px;
            height: 35px;
        }
        .auto-style18 {
            width: 770px;
            height: 35px;
        }
        .auto-style19 {
            width: 367px;
        }
    </style>
</asp:Content>

    

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div style="border-color: #c1c1c1;  background-color:#E0DB1F; margin-right: 50px;  " class="auto-style10">
    <table class="auto-style9">
        <tr>
            <td class="auto-style6">

            </td>
            <td style="font-size: large; font-family: 'MS Sans Serif'; font-weight: bolder; line-height: 6px; " title="Login" class="auto-style7">
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; SignUp
              </td>
            <td class="auto-style11">

            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                Name
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="txtName" runat="server" placeholder="Full Name"/>
            </td>
            <td class="auto-style12" style="color: #FF0000">
                <asp:RequiredFieldValidator ID="req1" Display="Dynamic" runat="server" ErrorMessage="*Please enter name" ControlToValidate="txtName" />
            <asp:RegularExpressionValidator ID="reg1" runat="server" Display="Dynamic" ControlToValidate="txtName" ErrorMessage="*Please enter proper name(only characters)" ValidationExpression="[a-zA-Z ]*$" />
            </td>
        </tr>
        <tr>
            <td class="auto-style16">
                Password
            </td>
            <td class="auto-style17">
                 <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Password" />
            </td>
            <td class="auto-style18" style="color: #FF0000">
                 <asp:RequiredFieldValidator ID="req3" Display="Dynamic" runat="server" ErrorMessage="*Please enter password" ControlToValidate="txtPassword" />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" Display="Dynamic" runat="server" ControlToValidate="txtPassword" ErrorMessage="*Enter upto 11 charcter alpha numeric password" ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,11}$" />
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                Email Id
            </td>
            <td class="auto-style5">
                <asp:TextBox ID="txtEmail" runat="server" placeholder="Email-id" />
            </td>
            <td class="auto-style12" style="color: #FF0000">
                 <asp:RequiredFieldValidator ID="req5" Display="Dynamic" runat="server" ErrorMessage="*Please enter email" ControlToValidate="txtEmail" />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" Display="Dynamic" runat="server" ControlToValidate="txtEmail" ErrorMessage="*Please enter proper email id" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                Mobile No
            </td>
            <td class="auto-style5">
                  <asp:TextBox ID="txtMobileNumber" runat="server" CssClass="form-control" placeholder="Mobile Number" />
            </td>
            <td class="auto-style12" style="color: #FF0000">
                 <asp:RequiredFieldValidator ID="req6" runat="server" Display="Dynamic" ErrorMessage="*Please enter mobile no" ControlToValidate="txtMobileNumber" />
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator5" Display="Dynamic" runat="server" ControlToValidate="txtMobileNumber" ErrorMessage="*Please enter 10 digit mobile number" ValidationExpression="^([0-9]{10})" />
            </td>
        </tr>
        <tr>
            <td class="auto-style13">

            </td>
            <td class="auto-style14">
                 <asp:Button ID="btnLogin" runat="server" Text="SignUp" CssClass="btn btn-danger" OnClick="btnLogin_Click" BackColor="Red" BorderStyle="Solid" ForeColor="White" />
        <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="btn btn-danger" OnClick="btnClear_Click" CausesValidation="false" BackColor="Red" BorderStyle="Solid" ForeColor="White" style="margin-left: 9px" />
            </td>
            <td class="auto-style15" style="color: #FF0000">
                 <asp:Label ID="lblMessage" runat="server" CssClass="text-danger"/>
            </td>
        </tr>
        <tr>
            <td class="auto-style19">

            </td>
        
            <td>

            </td>
        
            <td style="text-align: left; width: 770px; height: 40px">
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Italic="True" Font-Bold="True" NavigateUrl="~/Common/Login.aspx">Already a User Log-in</asp:HyperLink>
            </td>
        </tr>
    </table>
         </div>
</asp:Content>

