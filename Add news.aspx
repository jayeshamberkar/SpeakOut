<%@ Page Title="" Language="C#" MasterPageFile="~/Users/User.master" AutoEventWireup="true" CodeFile="Add news.aspx.cs" Inherits="Speakoutsign.Users_Add_news" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 709px;
            height: 390px;
        }
        .auto-style3 {
            width: 38%;
        }
        .auto-style4 {
            width: 38%;
            height: 32px;
        }
        .auto-style5 {
            height: 32px;
        }
        .auto-style6 {
            width: 38%;
            height: 34px;
        }
        .auto-style7 {
            height: 34px;
        }
        .auto-style8 {
            width: 38%;
            height: 35px;
        }
        .auto-style9 {
            height: 35px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div class="navbar" style="border-width: 3px; border-color: #333333; height: auto">
        <table style="background-color: Yellow;" align="center" class="auto-style2" >
            <tr>
                <td align="center" width="50%" colspan="2">
                    <h1>
                        Add News
                    </h1>
                    <hr/>
                </td>
            </tr>
            <tr>
                <td align="right" class="auto-style3">
                    <h3>
                        Title:
                    </h3>
                </td>
                <td width="50%">
                    <asp:TextBox ID="txtTitle" runat="server" TextMode="MultiLine"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Enter title of news" ForeColor="Red" ControlToValidate="txtTitle" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr>
                <td align="right" class="auto-style3">
                    <h3>
                        Description:
                    </h3>
                </td>
                <td width="50%">
                    <asp:TextBox ID="txtDesc" runat="server" TextMode="MultiLine"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Enter Description of news" ForeColor="Red" ControlToValidate="txtDesc" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr>
                <td align="right" class="auto-style3">
                    <h3>
                        Date:
                    </h3>
                </td>
                <td width="50%">
                    <asp:TextBox ID="txtDate" runat="server" Height="23px" Width="109px"></asp:TextBox>
                    
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="30px" ImageAlign="AbsBottom" ImageUrl="~/iocns/calendar.jpeg" Width="44px" OnClick="ImageButton1_Click" OnClientClick="ImageButton1_Click"  />
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="109px" OnSelectionChanged="Calendar1_SelectionChanged" ShowGridLines="True" Visible="False" Width="171px">
                        <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                        <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                        <OtherMonthDayStyle ForeColor="#CC9966" />
                        <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                        <SelectorStyle BackColor="#FFCC66" />
                        <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                        <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                    </asp:Calendar>
                    
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*Enter Date of news" ForeColor="Red" ControlToValidate="txtDate" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr>
                <td align="right" class="auto-style3">
                    <h3>
                        Location:
                    </h3>
                </td>
                <td width="50%">
                    <asp:TextBox ID="txtLocation" runat="server" Height="23px" Width="118px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*Enter Location of news" ForeColor="Red" ControlToValidate="txtLocation" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr>
                <td align="right" class="auto-style4">
                    <h3>
                        Category:
                    </h3>
                </td>
                <td width="50%" class="auto-style5">
                   <%-- <asp:TextBox ID="txtCategory" runat="server"></asp:TextBox>--%>
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="23px" Width="126px">
                        <asp:ListItem Selected="True">Select</asp:ListItem>
                        <asp:ListItem>Sports</asp:ListItem>
                        <asp:ListItem>Crime</asp:ListItem>
                        <asp:ListItem>Politics</asp:ListItem>
                        <asp:ListItem Value="Corona">Covid-19</asp:ListItem>
                        <asp:ListItem>Entertainment</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*Select Category of news" ForeColor="Red" ControlToValidate="DropDownList1" Display="Dynamic" InitialValue="Select"></asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr>
                <td align="right" class="auto-style6">
                    <h3>
                        Language:
                    </h3>
                </td>
                <td width="50%" class="auto-style7">
                    <asp:TextBox ID="txtLanguage" runat="server" Text="English" ReadOnly="True" Width="116px"></asp:TextBox>
                   <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*Enter Language of news" ForeColor="Red" ControlToValidate="txtLanguage" Display="Dynamic"></asp:RequiredFieldValidator>--%>
                </td>
            </tr>
             <tr>
                <td align="right" class="auto-style8">
                    <h3>
                        Image:
                    </h3>
                </td>
                <td width="50%" class="auto-style9">
                    <asp:FileUpload ID="imgUpload" runat="server" Width="178px" Height="24px" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*Image is mandatory" ForeColor="Red" ControlToValidate="imgUpload" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="center" width="50%" colspan="2">
                    <asp:Button ID="btnSubmit" runat="server" Text="Add" Font-Bold="True" ForeColor="Black" Height="36px" Width="88px" OnClick="btnSubmit_Click" />
                </td>
            </tr>
            <tr>
                <td align="center" width="50%" colspan="2">
                    <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <%--<tr>
                <td align="center" colspan="2">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" HeaderText="*Fix the following error" />
                </td>
            </tr>--%>
        </table>
        <br />
    </div>
    <div>
       <%-- <asp:SqlDataSource 
    runat="server" ID="SqlDatasouce1" ConnectionString="<%$ ConnectionStrings:SpeakOutConnectionString %>" SelectCommand="SELECT * FROM [users]"></asp:SqlDataSource> </div>--%>

    </div>
</asp:Content>

