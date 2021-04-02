<%@ Page Title="" Language="C#" MasterPageFile="~/Reporter/ReporterMaster.master" AutoEventWireup="true" CodeFile="Templatenews.aspx.cs" Inherits="Speakoutsign.Reporter_Templatenews" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        /*.auto-style2 {
            width: 1300px;
           
        }
        .auto-style3 {
            background: #0052D4;
            background: -webkit-linear-gradient(to right, #6F81FC,#4364F7,#0052D4);
            background: #0052D4;
            margin-top: 0px;
        }*/
        .auto-style6 {
            height: 47px;
            margin-bottom: 1px;
            margin-top:0px;
            width: 1294px;
        }
        .auto-style7 {
            height: 1px;
        }


    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <center>
        <div class="navbar" style="border-width: 3px; border-color: #333333; /*height: 460px*/">
            <table align="center" style="width: 1300px; height: 410px; border:1px solid blue;">
                <tr>
                    
                    <td colspan="2" align="center" class="auto-style7" >
                      
                        <h3  style="font-size: 50px;" class="auto-style6">Users News</h3>
                        
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center" class="auto-style2">
                        <%--onrowupdating="GridView1_RowUpdating" 
                         OnRowCancelingEdit="GridView1_RowCancelingEdit"--%> 
                        <asp:GridView ID="GridView1" runat="server" CssClass="auto-style3" AllowPaging="True" AutoGenerateColumns="False" Width="1300px" DataKeyNames="t_id" 
                            onpageindexchanging="GridView1_PageIndexChanging" EmptyDataText="No news to display"
                            onrowdeleting="GridView1_RowDeleting"
                            BorderColor="#333333" BorderWidth="2px" Font-Bold="True">
                            <Columns>
                                <asp:TemplateField HeaderText="News Title">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("t_title") %>' Font-Bold="true">

                                        </asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("t_title") %>'></asp:Label>
                                    </ItemTemplate>
                                    <ItemStyle HorizontalAlign="Center"/>
                                </asp:TemplateField>
                                <%-- <asp:TemplateField DataImageUrlField="t_photo" HeaderText="Photo">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("t_photo") %>' Font-Bold="true">

                                        </asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("t_photo") %>'></asp:Label>
                                    </ItemTemplate>
                                    <ItemStyle HorizontalAlign="Center"/>
                                </asp:TemplateField>--%>
                                <asp:ImageField DataImageUrlField="t_photo" HeaderText="News Image ">
                                    <ControlStyle Height="300px" Width="340px" />
                                     <ItemStyle HorizontalAlign="Center"/>
                                    </asp:ImageField>
                                    

                                 <asp:TemplateField HeaderText="News Description">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Eval("t_desc") %>' Font-Bold="true">

                                        </asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("t_desc") %>'></asp:Label>
                                    </ItemTemplate>
                                    <ItemStyle HorizontalAlign="Center"/>
                                </asp:TemplateField>

                                 <asp:TemplateField HeaderText="Date">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Eval("t_date") %>' Font-Bold="true">

                                        </asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("t_date") %>'></asp:Label>
                                    </ItemTemplate>
                                    <ItemStyle HorizontalAlign="Center"/>
                                </asp:TemplateField>

                                 <asp:TemplateField HeaderText="Language">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Eval("t_language") %>' Font-Bold="true">
                                        </asp:TextBox>
                                    </EditItemTemplate>
                                     <ItemTemplate>
                                         <asp:Label ID="Label4" runat="server" Text='<%# Eval("t_language") %>'></asp:Label>
                                     </ItemTemplate>

                                    <ItemStyle HorizontalAlign="Center"/>
                                </asp:TemplateField>

                                 <asp:TemplateField HeaderText="Category">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Eval("t_category") %>' Font-Bold="true">

                                        </asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("t_category") %>'></asp:Label>
                                    </ItemTemplate>
                                    <ItemStyle HorizontalAlign="Center"/>
                                </asp:TemplateField>

                                 <asp:TemplateField HeaderText="Location">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox7" runat="server" Text='<%# Eval("t_location") %>' Font-Bold="true">

                                        </asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("t_location") %>'></asp:Label>
                                    </ItemTemplate>
                                    <ItemStyle HorizontalAlign="Center"/>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Download Image ">
                                    <ItemTemplate>
                                    <asp:LinkButton runat="server" CommandArgument='<%# Eval("t_photo") %>' OnClick="Download_Click">Download</asp:LinkButton>
                                        </ItemTemplate>
                                </asp:TemplateField>
                               
                                <asp:CommandField CausesValidation="false" HeaderText="Operation" ShowDeleteButton="true" ShowEditButton="false">
                                     <ItemStyle HorizontalAlign="Center"/>
                                    </asp:CommandField>
                            </Columns>
                            <HeaderStyle BorderColor="#333333" 
                        BorderWidth="3px" Font-Size="Large"/> </asp:GridView>
                    </td>
                </tr>
               <%-- <tr>
                    <td>
                        <asp:DataList ID="DataList1" runat="server" DataKeyField="t_id" DataSourceID="SqlDataSource1" 
        Width="1330px" Height="400px" OnItemCommand="DataList1_ItemCommand" OnItemDataBound="DataList1_ItemDataBound" EmptyDataText="No news to display"
        CssClass="auto-style10">
        <ItemTemplate>
            <table align="center"
        style="text-align: center; " class="auto-style9">
                <tr>
                    <td style="text-align:center; border-style: inset inset none inset; border-width: thin; border-color: black; background-color:#5f98f3" class="auto-style11">
                        <asp:Label ID="Label2" runat="server" Text='<%#Eval("t_title") %>' Font-Bold="true" 
                            Font-Names="Open Sans Extrabold" Fore-color="White"></asp:Label>

                    </td>
                </tr>
                <tr>
                    <td style= "border-style: none inset none inset; border-width: thin; border-color: #000000; text-align:center; background-color: #D2D2D2;" class="auto-style8">
                        <asp:Image CssClass="All" ID="Image1" runat="server" BorderColor="#5f98f3" BorderWidth="1px" 
                    Width="423px" Height="160px" ImageUrl='<%# Eval("t_photo") %>' />
                       
                        
                    </td>
                </tr>
                <tr>
                    <td style="text-align:right; border-style: none inset none inset; border-width: thin; border-color: #000000;  background-color: #D2D2D2;">
                        <asp:Label ID="Label3" runat="server" Text='<%#Eval("t_date") %>' Font-Bold="true" 
                            Font-Names="Open Sans Extrabold" Fore-color="White"></asp:Label>
                    </td>
                </tr>
                
                <tr>
                    <td style="text-align:inherit;  border-style: none inset none inset; border-width: thin; border-color: #000000;  background-color: #D2D2D2; line-height: inherit;" class="auto-style12">
                        <asp:Label ID="Label1" runat="server" Text='<%#Eval("t_desc") %>' Font-Bold="true" 
                            Font-Names="Open Sans Extrabold" Fore-color="White"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td style=" border-style: none inset inset inset; border-width: thin; border-color: #000000;  background-color: #D2D2D2;" class="auto-style13">
                        <asp:Label ID="Label4" runat="server" Text='<%#Eval("t_location") %>' Font-Bold="true" 
                            Font-Names="Open Sans Extrabold" Fore-color="White"></asp:Label>
                    </td>
                    </tr>
                </table>
            </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SpeakOutConnectionString %>" SelectCommand="SELECT * FROM [t_news] ORDER BY [t_id] DESC">
    </asp:SqlDataSource>
                    </td>
                </tr>--%>
            </table>
        </div>
    </center>
</asp:Content>

