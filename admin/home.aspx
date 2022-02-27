<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="admin_home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 <!-- START RESPONSIVE TABLES -->
                    <div class="row">
                        <div class="col-md-12">
                            <div class="panel panel-default">
                                                               
                                <div class="panel-heading">
                                            <h3 class="title">New</h3>
                                            <asp:ImageButton ID="imgbtnnew" runat="server" ImageUrl ="../icons/add.png" 
                                                onclick="imgbtnnew_Click"/>
                                </div>

                                <div class="panel-body panel-body-table">
                                    
                                    <div class="table-responsive">
                                        <asp:Panel ID="pnlshow" runat="server">
                                        <table class="table" id="customers2">
                                            
                                            <thead>
                                                <tr>
                                                    <th>regid</th>
                                                    <th>regdate</th>
                                                    <th>UserName</th>
                                                    <th>Password</th>
                                                    <th>User Type</th>
                                                    <th>Contact</th>
                                                    <th>E-mail</th>
                                                    <th>Actions</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                
                                                <asp:Repeater ID="rptregister" runat="server" onitemcommand="rptregister_ItemCommand">
                                                    <ItemTemplate>
                                                    <tr>
                                                        <td class="text-center"><%# Eval("regid") %></td>
                                                        <td class="text-center"><%# Eval("regdate") %></td>
                                                        <td class="text-center"><%# Eval("unm") %></td>
                                                        <td class="text-center"><%# Eval("pwd") %></td>
                                                        <td class="text-center"><%# Eval("utype") %></td>
                                                        <td class="text-center"><%# Eval("contact") %></td>
                                                        <td class="text-center"><%# Eval("email") %></td>
                                                        <td>
                                                                                            
                                                            <asp:ImageButton ID="imgbtnedit" class="btn btn-default btn-rounded btn-condensed btn-sm" runat="server" CommandName ="delete" CommandArgument='<%# Eval("regid") %>' ImageUrl ="../icons/delete.png" />
                                                            <asp:ImageButton ID="imgbtndel" class="btn btn-danger btn-rounded btn-condensed btn-sm" runat="server" CommandName ="update" CommandArgument='<%# Eval("regid") %>' ImageUrl ="../icons/edit.png" />
                                                           
                                                        </td>
                                                    </tr>
                                                    </ItemTemplate>
                                                </asp:Repeater>   
                                                 
                                            </tbody>
                                        </table>
                                        
                                        </asp:Panel>
                                    </div>
               
               <!-- START RESPONSIVE TABLES -->
               <asp:Panel ID="pnlform" runat="server" Visible="false">
                                  
                   <div class="row">
                        <div class="col-md-12">
                            <div class="panel panel-default">
                                
                                <asp:Label ID="lblstatus" runat="server" Text=""></asp:Label>

                                <div class="panel-heading">
                                    <h3 class="panel-title">New</h3>
                                    <asp:Button ID="btnsave" runat="server" 
                                        class="site-button button-lg outline outline-2" Text="Save" 
                                        onclick="btnsave_Click" />
                                </div>
                                <div class="panel-body panel-body-table">

                                    <div class="table-responsive">
                                        <table class="table table-bordered table-striped table-actions">
                                            <thead>
                                                <tr>
                                                    <th >Regid</th>
                                                    <th>RegDate</th>
                                                    <th>UserName</th>
                                                    <th>Password</th>
                                                    <th >User Type</th>
                                                    <th>Contact</th>
                                                    <th>E-mail</th>
                                                    
                                                </tr>
                                            </thead>
                                            <tbody>                                            
                                                <tr>
                                                    <td>
                                                        <asp:TextBox ID="tbxregid" runat="server" ReadOnly="True"></asp:TextBox></td>
                                                    <td>
                                                        <asp:TextBox ID="tbxregdate" runat="server" ReadOnly="True"></asp:TextBox></td>
                                                    <td>
                                                        <asp:TextBox ID="tbxunm" runat="server"></asp:TextBox></td>
                                                    <td>
                                                        <asp:TextBox ID="tbxpwd" runat="server"></asp:TextBox></td>
                                                    <td>
                                                        <asp:TextBox ID="tbxutype" runat="server"></asp:TextBox></td>
                                                    <td>
                                                        <asp:TextBox ID="tbxcontact" runat="server"></asp:TextBox></td>
                                                    <td>
                                                        <asp:TextBox ID="tbxemail" runat="server"></asp:TextBox></td>
                                                    
                                                </tr>
                                           </tbody>
                                        </table>
                                    </div>                                

                                </div>
                            </div>                                                

                        </div>
                    </div>
                    <!-- END RESPONSIVE TABLES -->                                    
                                        
                                    
               </asp:Panel>
                                </div>
                            </div>                                                

                        </div>
                    </div>
                    <!-- END RESPONSIVE TABLES -->

</asp:Content>

