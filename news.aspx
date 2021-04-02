<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="news.aspx.cs" Inherits="Speakoutsign.Admin_news" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 1340px;
           
        }
        /*.auto-style3 {
            background: #0052D4;
            background: -webkit-linear-gradient(to right, #6F81FC,#4364F7,#0052D4);
            background: #0052D4;
            margin-top: 0px;
        }*/
        .auto-style6 {
            height: 57px;
            margin-bottom: 1px;
            margin-top:0px;
            width: 1297px;
        }
        .auto-style7 {
            height: 2px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <center>
        <div class="navbar" style="border-width: 3px; border-color: #333333; /*height: 460px*/">
            <table align="center" style="width: 1340px; height: 410px; border:1px solid blue;">
                <tr>
                    
                    <td colspan="2" align="center" class="auto-style7" >
                      
                        <h2  style="font-size: 50px;" class="auto-style6">All News</h2>
                        
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center" class="auto-style2">
                        <%-- onrowupdating="GridView1_RowUpdating" --%>
                        <%-- OnRowCancelingEdit="GridView1_RowCancelingEdit" --%>
                        <asp:GridView ID="GridView1" runat="server" CssClass="auto-style3" AllowPaging="True" AutoGenerateColumns="False" Width="1330px" DataKeyNames="n_id" 
                            onpageindexchanging="GridView1_PageIndexChanging" EmptyDataText="No news to display"
                            onrowdeleting="GridView1_RowDeleting"
                            BorderColor="#333333" BorderWidth="2px" Font-Bold="True">
                            <Columns>
                                <asp:TemplateField HeaderText="News Title">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("n_title") %>' Font-Bold="true">

                                        </asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("n_title") %>'></asp:Label>
                                    </ItemTemplate>
                                    <ItemStyle HorizontalAlign="Center"/>
                                </asp:TemplateField>
                                <asp:ImageField DataImageUrlField="n_photo" HeaderText="News Image ">
                                    <ControlStyle Height="200px" Width="380px" />
                                     <ItemStyle HorizontalAlign="Center"/>
                                    </asp:ImageField>

                                 <asp:TemplateField HeaderText="News Description">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Eval("n_desc") %>' Font-Bold="true">

                                        </asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("n_desc") %>'></asp:Label>
                                    </ItemTemplate>
                                    <ItemStyle HorizontalAlign="Center"/>
                                </asp:TemplateField>

                                 <asp:TemplateField HeaderText="Date">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Eval("n_date") %>' Font-Bold="true">

                                        </asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("n_date") %>'></asp:Label>
                                    </ItemTemplate>
                                    <ItemStyle HorizontalAlign="Center"/>
                                </asp:TemplateField>

                                 <asp:TemplateField HeaderText="Language">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Eval("n_langauge") %>' Font-Bold="true">
                                        </asp:TextBox>
                                    </EditItemTemplate>
                                     <ItemTemplate>
                                         <asp:Label ID="Label4" runat="server" Text='<%# Eval("n_langauge") %>'></asp:Label>
                                     </ItemTemplate>

                                    <ItemStyle HorizontalAlign="Center"/>
                                </asp:TemplateField>

                                 <asp:TemplateField HeaderText="Category">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox6" runat="server" Text='<%# Eval("n_category") %>' Font-Bold="true">

                                        </asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("n_category") %>'></asp:Label>
                                    </ItemTemplate>
                                    <ItemStyle HorizontalAlign="Center"/>
                                </asp:TemplateField>

                                 <asp:TemplateField HeaderText="Location">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox7" runat="server" Text='<%# Eval("n_location") %>' Font-Bold="true">

                                        </asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("n_location") %>'></asp:Label>
                                    </ItemTemplate>
                                    <ItemStyle HorizontalAlign="Center"/>
                                </asp:TemplateField>
                                <asp:CommandField CausesValidation="false" HeaderText="Operation" ShowDeleteButton="true" ShowEditButton="false">
                                     <ItemStyle HorizontalAlign="Center"/>
                                    </asp:CommandField>
                            </Columns>
                            <HeaderStyle BorderColor="#333333" 
                        BorderWidth="3px" Font-Size="Large"/> </asp:GridView>
                    </td>
                </tr>
            </table>
        </div>
    </center>

</asp:Content>

