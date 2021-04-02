<%@ Page Title="" Language="C#" MasterPageFile="~/Users/User.master" AutoEventWireup="true" CodeFile="open.aspx.cs" Inherits="Speakoutsign.Users_open" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
         .auto-style9 {
            width: 753px;
            margin-left: 292px;
            margin-right: 118px;
            height: 428px;
        }
        .auto-style10 {
            margin-right: 355px;
        }
        .auto-style11 {
            height: 38px;
            width: 979px;
        }
        .auto-style12 {
            height: 79px;
            width: 979px;
        }
        .auto-style14 {
            width: 979px;
        }
        .auto-style15 {
            width: 754px;
            height: 27px;
            margin-top: 0px;
            margin-left: 293px;
        }
        .auto-style16 {
            width: 976px;
        }
        .auto-style17 {
            width: 754px;
             
        }
        .auto-style18 {
            width: 754px;
             margin-left: 293px;
        }
        .auto-style3{
            width: 616px;
        }
        </style>
    
    
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList1" runat="server" DataKeyField="n_id" DataSourceID="SqlDataSource1" 
        Width="1364px" Height="400px" OnItemCommand="DataList1_ItemCommand" OnItemDataBound="DataList1_ItemDataBound" 
        CssClass="auto-style10">
        <ItemTemplate>
            <table align="center"
        style=" border-style: solid solid none solid; border-width: 2px; border-color: black; text-align: center; " class="auto-style9">
                <tr>
                    <td style="text-align:center;  background-color:#5f98f3" class="auto-style11">
                        <asp:Label ID="Label2" runat="server" Text='<%#Eval("n_title") %>' Font-Bold="true" 
                            Font-Names="Open Sans Extrabold" Fore-color="White"></asp:Label>

                    </td>
                </tr>
                <tr>

                    <td style= " text-align:center; background-color: #D2D2D2;" class="auto-style14">
                        <asp:Image CssClass="All" ID="Image1" runat="server" BorderColor="#5f98f3" BorderWidth="1px" 
                    Width="538px" Height="238px" ImageUrl='<%# Eval("n_photo") %>' />
                       
                        
                    </td>
                </tr>
                <tr>
                    <td style="text-align:center;   background-color: #D2D2D2;" class="auto-style14">
                        <asp:Label ID="Label3" runat="server" Text='<%#Eval("n_date") %>' Font-Bold="true" 
                            Font-Names="Open Sans Extrabold" Fore-color="White"></asp:Label>
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         <asp:Label ID="Label5" runat="server" Text='<%#Eval("n_location") %>' Font-Bold="true" 
                            Font-Names="Open Sans Extrabold" Fore-color="White"></asp:Label>
                    </td>

                </tr>
                
                <tr>
                    <td style="text-align:inherit;   background-color: #D2D2D2; line-height: inherit;" class="auto-style12">
                        <asp:Label ID="Label1" runat="server" Text='<%#Eval("n_desc") %>' Font-Bold="true" 
                            Font-Names="Open Sans Extrabold" Fore-color="White"></asp:Label>
                    </td>
                </tr>
               
            </table>
            
        </ItemTemplate>
    </asp:DataList>
                             <table 
        style=" border-style: solid solid none solid; border-width: 2px; border-color: black; text-align: center; " class="auto-style15">
                                <tr>
                                    <td style="  background-color:#D2D2D2;" class="auto-style16">
                                        
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        
                                        <asp:ImageButton ID="ImageButton1" runat="server"  Height="40px" ImageAlign="AbsBottom" Width="141px" OnClick="Button3_Click" ImageUrl="~/iocns/Like.jpg" /> 
                                      
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Open Sans Extrabold" Fore-color="White" Height="27px"></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:ImageButton ID="ImageButton2" runat="server" Height="40px" ImageAlign="AbsBottom" Width="141px" OnClick="Button1_Click" ImageUrl="~/iocns/Dislike.jpg" Enabled="False" />
                                        <asp:Button align="right" ID="Button1" runat="server" Text="Back" OnClick="Button2_Click"  ForeColor="Black" Font-Names="Arial Rounded Mt bold" Font-Bold="True" BorderStyle="None" Font-Size="Large"  Height="35px" Width="100px" BackColor="#D2D2D2" Font-Underline="True" />
                                       

                                    </td>
                                </tr>
                                 
                            </table>
     <table 
        style=" border-style: solid; border-width: 2px; border-color: black; text-align: left; " class="auto-style18" >
                                <tr align="left">
                                    <td style="  background-color:#5f98f3" class="auto-style17">
                                        
                                        <asp:Label ID="Label6" runat="server" Text="Comments :" ForeColor="Black" Font-Names="Arial Rounded Mt bold" Font-Bold="True" BorderStyle="None" Font-Size="Large" BackColor="#5f98f3"></asp:Label>
                                        <br />
                                        <br />
                                         <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Your Comments Here" Width="184px" Height="16px" ></asp:TextBox>
                                        
                                        <asp:Button ID="Button4" runat="server" Text="Add Comment" OnClick="Button4_Click" ValidationGroup="add" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please enter comment"  Display="Dynamic" ValidationGroup="add"></asp:RequiredFieldValidator>
                                        
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please enter characters only" ControlToValidate="TextBox1" Display="Dynamic" ValidationExpression="[a-zA-Z ]*$" ValidationGroup="add"></asp:RegularExpressionValidator>
                                        
                                        <br />
                                        <asp:GridView align="left" ID="GridView1" runat="server" Class="auto-style3" AllowPaging="False"  EmptyDataText="No Comments yet"
                                            AutoGenerateColumns="False" Width="522px" DataKeyNames="u_name"   Font-Bold="True"
                                            BorderStyle="None" GridLines="None">
                                            <Columns>
                                                 <asp:TemplateField>
                                                 <ItemTemplate>
                                                      <asp:Label ID="Label1" runat="server" Text='<%# Eval("u_name") %>'></asp:Label>:
                                                 </ItemTemplate>
                                                  <ItemStyle HorizontalAlign="right"/>
                                                 </asp:TemplateField>
                                                <asp:TemplateField >
                                                <ItemTemplate>
                                                    
                                                    <asp:TextBox ID="TextBox2" runat="server" readonly="true" Text='<%# Eval("c_content") %>'  ></asp:TextBox>
                                                 </ItemTemplate>
                                                  <ItemStyle HorizontalAlign="left"/>
                                                 </asp:TemplateField>
                                            </Columns>
                                            </asp:GridView>
                                     
                                       

                                        </td>
                                    </tr>
         </table>
                    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SpeakOutConnectionString %>" SelectCommand="SELECT * FROM [news] WHERE ([n_id] = @n_id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="n_id" QueryStringField="id" Type="Int32" />
        </SelectParameters>      
    </asp:SqlDataSource>


</asp:Content>

