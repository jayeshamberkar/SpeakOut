

<%@ Page Title="" Language="C#" MasterPageFile="~/Common/CommonMasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Speakoutsign.Common_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style3 {
            width: 700px;
            height: 26px;
            margin-left: 100px;
        }
        .auto-style7 {
            width: 3556px;
            height: 26px;
            text-align: right;
        }
        *
        .auto-style4 {
            height: 42px;
        }
        .auto-style7 {
            height: 42px;
            width: 659px;
            text-align: right;
        }
        .auto-style7 {
            width: 751px;
            text-align: right;
        }
        .auto-style3 {
            width: 1000px;
            height: 160px;
            margin-left: 100px;
        }
        .auto-style19 {
            margin-left: 43px;
        }
        .auto-style1 {
            width: 181px;
        }
        .auto-style3 {
            height: 26px;
        }
        .auto-style7 {
            height: 26px;
            width: 636px;
            text-align: right;
        }
       
        .auto-style20 {
        width: 70px;
    }
        .auto-style21 {
            width: 3556px;
            height: 40px;
            text-align: right;
        }
        .auto-style22 {
            width: 700px;
            height: 40px;
        }
        .auto-style23 {
            width: 604px;
            height: 227px;
            margin-left: 0px;
        }
       
        .auto-style24 {
            width: 3556px;
            height: 42px;
            text-align: right;
        }
        .auto-style25 {
            width: 700px;
            height: 60px;
        }
        .auto-style27 {
            width: 3556px;
            height: 60px;
            text-align: right;
        }
       .design{
           background-color: #c1c1c1;
          
       }
        .auto-style28 {
            width: 2587px;
            height: 60px;
        }
        .auto-style29 {
            width: 2587px;
        }
        .auto-style30 {
            width: 601px;
            height: 235px;
            margin-left: 361px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <%--<div <%--class="container main"

        <h2>Login Form</h2>
        <div <%--class="form-group">
            <label>Name</label>
            <asp:TextBox ID="txtName" runat="server" class="form-control" Width="450px" />
            <asp:RequiredFieldValidator ID="req1" runat="server" ErrorMessage="Please enter valid Name" ControlToValidate="txtName" />
        </div>
        <div <%--class="form-group">
            <label>Password</label>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"
                CssClass="form-control" Width="450px" />
            <asp:RequiredFieldValidator ID="req2" runat="server" ErrorMessage="Please enter valid password" ControlToValidate="txtPassword" />
        </div>
        <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-danger" OnClick="btnLogin_Click" />
         <asp:Button ID="btnSignup" runat="server" Text="Signup" CssClass="btn btn-danger" OnClick="btnSignup_Click" CausesValidation="false" />
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </div>--%>
      <div class:"design" style="border-color: #c1c1c1;  background-color:#E0DB1F; margin-right: 50px; " class="auto-style30">  
    <table class="auto-style23">
     <tr>
                    <td class="auto-style27" style="margin-left: 90px" >

                        </td>
                    <td style="font-size: large; font-family: 'MS Sans Serif'; font-weight: bolder; line-height: 6px; " title="Login" class="auto-style25" >
                        
                 &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                 
                 LOGIN </td>
                    <td class="auto-style28">

                        </td>
                    
                </tr>
        <tr>
                    <td class="auto-style7" >
                         Name</td>
                    <td class="auto-style3">
                          <asp:TextBox ID="txtName" runat="server" class="form-control" placeholder="Name" />
                        </td>
                    <td class="auto-style29">
                         <asp:RequiredFieldValidator ID="req1" runat="server" ErrorMessage="*Please enter valid Name" ControlToValidate="txtName" ForeColor="Red" />
                        </td>
                    
                </tr>
        <tr>
                    <td class="auto-style24" >
                        Password

                        </td>
                    <td class="auto-style20" >
                         <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Password" />
                        </td>
                    <td class="auto-style29">
                         <asp:RequiredFieldValidator ID="req2" runat="server" ErrorMessage="*Please enter valid password" ControlToValidate="txtPassword" ForeColor="Red" />
                        </td>
                    
                </tr>
         <tr>
                    <td class="auto-style21">

                        </td>
                    <td class="auto-style22">
                      <asp:Button ID="btnLogin" runat="server" Text="Login"  OnClick="btnLogin_Click" BackColor="Red" BorderStyle="Solid" ForeColor="White" CssClass="auto-style19" Width="63px" Height="22px" />
                        </td>
                    <td class="auto-style29">
                         <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                        </td>
             </tr>
        <tr>
            <td>

            </td>
            <td>

            </td>
              <td style="text-align: left; width: 770px; height: 40px">
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Italic="True" Font-Bold="True" NavigateUrl="~/Common/Registration.aspx">Register Here..</asp:HyperLink>
            </td>
        </tr>
        </table>
          </div>

</asp:Content>

