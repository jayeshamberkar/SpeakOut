<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Uers.aspx.cs" Inherits="Speakoutsign.Admin_Uers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style2 {
            width: 1000px;
           
        }
        /*.auto-style3 {
           background: #0052D4;
            background: -webkit-linear-gradient(to right, #6F81FC,#4364F7,#0052D4);
            background: #0052D4;
            margin-top: 0px;
        }*/
        .auto-style6 {
            height: 5px;
            margin-bottom: 1px;
            margin-top:0px
        }
        .auto-style7 {
            height: 1px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
        <div class="navbar" style="border-width: 3px; border-color: #333333; /*height: 460px*/">
            <table align="center" style="width: 1000px; height: 410px; border:1px solid blue;">
                <tr>
                    
                    <td colspan="2" align="center" class="auto-style7" >
                      
                        <h2  style="font-size: 50px;" class="auto-style6">Users details</h2>
                        
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center" class="auto-style2">
                        <%-- onrowupdating="GridView1_RowUpdating" --%>
                        <%-- OnRowCancelingEdit="GridView1_RowCancelingEdit" --%>
                        <asp:GridView ID="GridView1" runat="server" CssClass="auto-style3" AllowPaging="True" AutoGenerateColumns="False" Width="1000px" 
                            DataKeyNames="u_id" 
                            onpageindexchanging="GridView1_PageIndexChanging" EmptyDataText="No users to display"
                            onrowdeleting="GridView1_RowDeleting"
                            BorderColor="#333333" BorderWidth="2px" Font-Bold="True">
                            <Columns>
                                <asp:TemplateField HeaderText="User Name">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("u_name") %>' Font-Bold="true">

                                        </asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("u_name") %>'></asp:Label>
                                    </ItemTemplate>
                                    <ItemStyle HorizontalAlign="Center"/>
                                </asp:TemplateField>

                                 <asp:TemplateField HeaderText="User Mobile no">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Eval("u_mobileno") %>' Font-Bold="true">

                                        </asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("u_mobileno") %>'></asp:Label>
                                    </ItemTemplate>
                                    <ItemStyle HorizontalAlign="Center"/>
                                </asp:TemplateField>

                                 <asp:TemplateField HeaderText="User mail-id">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Eval("u_emailid") %>' Font-Bold="true">

                                        </asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("u_emailid") %>'></asp:Label>
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

