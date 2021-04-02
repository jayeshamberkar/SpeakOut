<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="Reporters.aspx.cs" Inherits="Speakoutsign.Admin_Reporters" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
        .auto-style2 {
            width: 800px;
           
        }
        /*.auto-style3 {
            background: #0052D4;
            background: -webkit-linear-gradient(to right, #6F81FC,#4364F7,#0052D4);
            background: #0052D4;
            margin-top: 0px;
        }*/
        .auto-style6 {
            height: 4px;
            margin-bottom: 1px;
            margin-top:0px;
             width: 1029px;
         }
        .auto-style7 {
            height: 1px;
        }
         .auto-style8 {
             width: 1044px;
             height: 410px;
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
        <div class="navbar" style="border-width: 3px; border-color: #333333; /*height: 460px*/">
            <table align="center" style="border:1px solid blue;" class="auto-style8">
                <tr>
                    
                    <td colspan="2" align="center" class="auto-style7" >
                      
                        <h2  style="font-size: 50px;" class="auto-style6">All Reporters</h2>
                        
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center" class="auto-style2">
                        <%-- onrowupdating="GridView1_RowUpdating" --%>
                        <%-- OnRowCancelingEdit="GridView1_RowCancelingEdit" --%>
                        <asp:GridView ID="GridView1" runat="server" CssClass="auto-style3" AllowPaging="True" AutoGenerateColumns="False" Width="800px" DataKeyNames="r_id" 
                            onpageindexchanging="GridView1_PageIndexChanging" EmptyDataText="No Reporters"
                            onrowdeleting="GridView1_RowDeleting"
                            BorderColor="#333333" BorderWidth="2px" Font-Bold="True">
                            <Columns>
                                <asp:TemplateField HeaderText="Reporter Name">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("r_name") %>' Font-Bold="true">

                                        </asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("r_name") %>'></asp:Label>
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

