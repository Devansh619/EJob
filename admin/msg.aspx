<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.master" AutoEventWireup="true" CodeFile="msg.aspx.cs" Inherits="admin_msg" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <!-- START RESPONSIVE TABLES -->
                    <div class="row">
                        <div class="col-md-12">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h3 class="panel-title">Messages</h3>
                                </div>                          
                                <div class="panel-heading">
                                            
                                            <h3 class="title">New</h3>
                                            <asp:ImageButton ID="imgbtnnew" runat="server" ImageUrl ="../icons/add.png" 
                                                onclick="imgbtnnew_Click" />
                                
                                </div>
                                <div class="panel-body panel-body-table">
                                    
                                    <div class="table-responsive">
                                        <asp:Panel ID="pnlshow" runat="server">
                                        <table class="table table-bordered table-striped table-actions">
                                            <thead>
                                                <tr>
                                                                                                        
                                                    <th width="50" class="text-center">Messages</th>
                                                    <th width="50" class="text-center">Contact No.</th>
                                                    
                                                    <th width="150" class="text-center">Actions</th>

                                                </tr>
                                            </thead>
                                            <tbody>
                                                
                                                <asp:Repeater ID="rptmsg" runat="server" OnItemCommand="rptcity_ItemCommand">
                                                                                                                                                    
                                                    <ItemTemplate>
                                                    <tr>

                                                        <td class="text-center"><%# Eval("msg")%></td>
                                                        <td class="text-center"><%# Eval("mobile")%></td>
                                                                                                                                                                        
                                                        <td class="text-center">
                                                                                            
                                                            <asp:ImageButton ID="imgbtnedit" class="btn btn-default btn-rounded btn-condensed btn-sm" runat="server" CommandName ="delete" CommandArgument='<%# Eval("msgid") %>' ImageUrl ="../icons/delete.png" />
                                                            <asp:ImageButton ID="imgbtndel" class="btn btn-danger btn-rounded btn-condensed btn-sm" runat="server" CommandName ="update" CommandArgument='<%# Eval("msgid") %>' ImageUrl ="../icons/edit.png" />
                                                        
                                                        </td>
                                                    
                                                    </tr>
                                                    </ItemTemplate>
                                                
                                                </asp:Repeater>   
                                                 
                                            </tbody>
                                        </table>
                                        
                                        </asp:Panel>
                                    </div>
                                    <!-- END RESPONSIVE TABLES -->

                    <!-- START RESPONSIVE TABLES -->
               <asp:Panel ID="pnlform" runat="server">
                                  
                   <div class="row">
                        <div class="col-md-12">
                            <div class="panel panel-default">
                                
                                <asp:Label ID="lblstatus" runat="server" Text=""></asp:Label>

                                <div class="panel-heading">
                                    
                                    <asp:Button ID="btnsave" runat="server" 
                                        class="btn btn-success" Text="Save" onclick="btnsave_Click" />
                                    <asp:Button ID="btncan" runat="server" class="btn btn-success" Text="Cancel" 
                                        onclick="btncan_Click" />

                                </div>
                                <div class="panel-body panel-body-table">

                                    <div class="table-responsive">
                                        <table class="table table-bordered table-striped table-actions">
                                            <thead>
                                                <tr>

                                                    <th width="50">Message</th>
                                                    <th width="50">Contact No.</th>
                                                                                                                                                          
                                                </tr>
                                            </thead>
                                            <tbody>                                            
                                                <tr>
                                                    
                                                    <td>
                                                        <asp:TextBox ID="tbxmsg" class="form-control " runat="server"></asp:TextBox></td>
                                                    <td>
                                                        <asp:TextBox ID="tbxcontact" class="form-control " runat="server"></asp:TextBox></td>
                                                                                                                                                            
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

</asp:Content>

