<%@ Page Title="" Language="C#" MasterPageFile="~/Users/User.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Speakoutsign.Users_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 1364px;
            height: 30px;
            border-color:#1865f3;
        }
        .auto-style3 {
            width: 974px;
            height: 30px;
        }
        .all{
            background-color: green;
            position: relative;
            bottom: 20px;
            left:1px;
            text-align:left;
            float:left;
            color: white;
            border-radius: 0% 50% 50% 0% / 0% 50% 50% 0%;
        }
        
       
        
        .auto-style5 {
            height: 30px;
        }
        .auto-style6 {
            height: 34px;
            width: 1000px;
        }
        .auto-style8 {
            width: 1000px;
        }
        .auto-style9 {
            width: 753px;
            margin-left: 292px;
            margin-right: 118px;
            height: 323px;
        }
        .auto-style10 {
            margin-right: 355px;
        }
        .auto-style11 {
            width: 1000px;
            height: 202px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style2">
        <tr style="background-color: #1865f3;">
            
            <td style="text-align: left" class="auto-style3">
                <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="927px"></asp:TextBox>
                <asp:ImageButton ID="ImageButton1" runat="server" Height="31px"  Width="35px" ImageUrl="~/iocns/search.jpg" ImageAlign="AbsBottom" OnClientClick="ImageButton1_Click" OnClick="ImageButton1_Click"  />
            </td>
           
            <td colspan="2" style="text-align: left;" class="auto-style5">
                <asp:Label ID="Label1" runat="server" style="text-align:left;" Font-Bold="True" Font-Italic="True" Font-Names="Bahnschrift SemiBold"></asp:Label>
                <asp:HyperLink ID="HyperLink1" runat="server" Font-Names="Arial Rounded Mt bold" Font-Bold="True" NavigateUrl="~/Common/Login.aspx" ForeColor="Yellow">Click to login</asp:HyperLink>
                <asp:Button ID="Button1" runat="server" Text="Log Out" BackColor="#FF5050"  BorderColor="White" Font-Bold="true"  Font-Names="Cosmic Sans Ms" ForeColor="Aqua" Height="27px" Width="105px" OnClick="Button1_Click" />
            </td>
            
        </tr>
    </table>
    <asp:DataList ID="DataList1" runat="server" DataKeyField="n_id" DataSourceID="SqlDataSource1" 
        Width="1200px" Height="293px" OnItemCommand="DataList1_ItemCommand" OnItemDataBound="DataList1_ItemDataBound" 
        CssClass="auto-style10" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
        <ItemTemplate>
            <table align="center"
        style="border-color: #D2D2D2; text-align: center; " class="auto-style9">
                <tr>
                    <td style="border-style: inset inset none inset; border-width: thin; border-color: black; text-align:center; background-color:#5f98f3" class="auto-style6">
                        <h3><asp:Label ID="Label2" runat="server" Text='<%#Eval("n_title") %>' Font-Bold="true" 
                            Font-Names="Open Sans Extrabold" Fore-color="White"></asp:Label>
                        </h3>
                    </td>
                </tr>
                <tr>
                    <td style="border-style: none inset none inset; border-width: thin; border-color: #000000; text-align:center; background-color: #D2D2D2;" class="auto-style11">
                        <asp:Image CssClass="All" ID="Image1" runat="server" BorderColor="#5f98f3" BorderWidth="1px" 
                    Width="603px" Height="238px" ImageUrl='<%# Eval("n_photo") %>' />
                       
                        
                    </td>
                </tr>
                <tr>
                    <td style="border-style: none inset inset inset; border-width: thin; border-color: #000000; text-align:center; background-color: #D2D2D2;" class="auto-style8">
                       <%--<asp:Button ID="Button3" runat="server" Text="Likes" ForeColor="Black" Font-Names="Arial Rounded Mt bold" Font-Bold="True" BorderStyle="None" Font-Size="Large" CommandArgument='<%# Eval("n_id") %>' Height="30px" Width="145px" BackColor="#D2D2D2" OnClick="Button3_Click" CommandName="likes" />
                        <asp:Label ID="Label3" runat="server" Text='<%#Eval("n_likes") %>'></asp:Label>--%>
                        <asp:Button ID="Button2" runat="server" Text="Read more.." ForeColor="Black"  BackColor="#D2D2D2" Font-Italic="True" BorderStyle="None" CommandArgument='<%# Eval("n_id") %>' CommandName="readmore" Font-Size="Large" Height="30px" Width="145px" Font-Underline="True" />
                    </td>
                </tr>
                
            </table> </ItemTemplate>
        
        
    </asp:DataList>
    <asp:label Id="message" runat="server" Text="No news found" Visible="false"></asp:label>
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SpeakOutConnectionString %>" SelectCommand="SELECT * FROM [news] ORDER BY [n_id] DESC">
        
    </asp:SqlDataSource>

</asp:Content>

