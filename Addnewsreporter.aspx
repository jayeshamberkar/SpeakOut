<%@ Page Title="" Language="C#" MasterPageFile="~/Reporter/ReporterMaster.master" AutoEventWireup="true" CodeFile="Addnewsreporter.aspx.cs" Inherits="Speakoutsign.Reporter_Addnewsreporter" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
        width: 159px;
    }
        .auto-style2 {
            width: 159px;
            height: 44px;
        }
        .auto-style3 {
            height: 44px;
        width: 61%;
    }
    .auto-style4 {
        width: 61%;
    }
    .auto-style5 {
        width: 688px;
        height: 415px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
        <div class="navbar" style="border-width: 3px; border-color: #333333;">
            <table align="center" style="border:1px solid blue;"" class="auto-style5">
                <tr>
                    
                    <td colspan="2" align="center" >
                      
                        <h2  style="font-size: 50px;">Add&nbsp; News</h2>
                        
                    </td>
                </tr>
                 <tr>
                <td align="right" class="auto-style2">
                    <h3>
                        Title:
                    </h3>
                </td>
                <td align="left" class="auto-style3">
                    <asp:TextBox ID="txtTitle" runat="server" TextMode="MultiLine" Width="178px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Enter title of news" ForeColor="Red" ControlToValidate="txtTitle" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr>
                <td align="right"" class="auto-style1">
                    <h3>
                        Description:
                    </h3>
                </td>
                <td align="left" class="auto-style4">
                    <asp:TextBox ID="txtDesc" runat="server" TextMode="MultiLine" Width="181px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Enter Description of news" ForeColor="Red" ControlToValidate="txtDesc" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr>
                <td align="right" class="auto-style1" >
                    <h3>
                        Date:
                    </h3>
                </td>
                <td align="left" class="auto-style4">
                    <asp:TextBox ID="txtDate" runat="server" Width="181px" Height="28px"></asp:TextBox>
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/iocns/calendar.jpeg" ImageAlign="AbsBottom" Height="34px" Width="43px" OnClick="ImageButton1_Click" OnClientClick="ImageButton1_Click" />
                    <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" OnSelectionChanged="Calendar1_SelectionChanged" ShowGridLines="True" Visible="False"  Height="95px" Width="171px">
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
                <td align="right" class="auto-style1" >
                    <h3>
                        Location:
                    </h3>
                </td>
                <td align="left" class="auto-style4">
                    <asp:TextBox ID="txtLocation" runat="server" TextMode="MultiLine" Width="179px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*Enter Location of news" ForeColor="Red" ControlToValidate="txtLocation" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr>
                <td align="right" class="auto-style1" >
                    <h3>
                        Category:
                    </h3>
                </td>
                <td align="left" class="auto-style4">
                    <asp:TextBox ID="txtCategory" runat="server" Width="174px" Height="24px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*Enter Category of news" ForeColor="Red" ControlToValidate="txtCategory" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr>
                <td align="right" class="auto-style1" >
                    <h3>
                        Language:
                    </h3>
                </td>
                <td align="left" class="auto-style4">
                    <asp:TextBox ID="txtLanguage" runat="server" Width="172px" Height="22px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*Enter Language of news" ForeColor="Red" ControlToValidate="txtLanguage" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
            </tr>
             <tr>
                <td align="right" class="auto-style1" >
                    <h3>
                        Image:
                    </h3>
                </td>
                <td align="left" class="auto-style4">
                    <asp:FileUpload ID="imgUpload" runat="server" Width="182px" Height="24px" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*Image is mandatory" ForeColor="Red" ControlToValidate="imgUpload" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    <asp:Button ID="btnSubmit" runat="server" Text="Add" Font-Bold="True" ForeColor="Black" Height="36px" Width="88px" OnClick="btnSubmit_Click" />
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2">
 
                   <asp:Label ID="Label1" runat="server"></asp:Label>

                </td>
            </tr>
        </table>
            </div>
        </center>
</asp:Content>

