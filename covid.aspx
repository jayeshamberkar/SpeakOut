<%@ Page Title="" Language="C#" MasterPageFile="~/Users/User.master" AutoEventWireup="true" CodeFile="covid.aspx.cs" Inherits="Speakoutsign.Users_Categories" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  <style type="text/css">
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
    <asp:DataList ID="DataList1" runat="server" DataKeyField="n_id" DataSourceID="SqlDataSource1" 
        Width="1200px" Height="293px" OnItemCommand="DataList1_ItemCommand"  
        CssClass="auto-style10" >
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
                     <%--  <asp:Button ID="Button3" runat="server" Text="Likes" ForeColor="Black" Font-Names="Arial Rounded Mt bold" Font-Bold="True" BorderStyle="None" Font-Size="Large" CommandArgument='<%# Eval("n_id") %>' Height="30px" Width="145px" BackColor="#D2D2D2" OnClick="Button3_Click" CommandName="likes" />
                        <asp:Label ID="Label3" runat="server" Text='<%#Eval("n_likes") %>'></asp:Label>--%>
                        <asp:Button ID="Button2" runat="server" Text="Read more.." ForeColor="Black"  BackColor="#D2D2D2" Font-Italic="True" BorderStyle="None" CommandArgument='<%# Eval("n_id") %>' CommandName="readmore" Font-Size="Large" Height="30px" Width="145px" />
                    </td>
                </tr>
                
            </table> </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SpeakOutConnectionString %>" SelectCommand="SELECT * FROM [news] WHERE ([n_category] = @n_category)">
        <SelectParameters>
            <asp:Parameter DefaultValue="Corona" Name="n_category" Type="String" />
        </SelectParameters>
        
    </asp:SqlDataSource>

</asp:Content>

