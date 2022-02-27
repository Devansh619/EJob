<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.master" AutoEventWireup="true" CodeFile="city.aspx.cs" Inherits="admin_city" %>

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
                                                onclick="imgbtnnew_Click" />
                                </div>
                                <div class="panel-body panel-body-table">
                                    
                                    <div class="table-responsive">
                                        <asp:Panel ID="pnlshow" runat="server">
                                        <table class="table table-bordered table-striped table-actions">
                                            <thead>
                                                <tr>
                                                    <th width="50" class="text-center">City Name</th>
                                                    <th width="50" class="text-center">Short Name</th>
                                                    <th width="50" class="text-center">Pincode</th>
                                                    <th width="50" class="text-center">State Name</th>
                                                    
                                                    <th width="150" class="text-center">Actions</th>

                                                </tr>
                                            </thead>
                                            <tbody>
                                                
                                                <asp:Repeater ID="rptcity" runat="server" onitemcommand="rptcity_ItemCommand">
                                                
                                                    <ItemTemplate>
                                                    <tr>

                                                        <td class="text-center"><%# Eval("citynm") %></td>
                                                        <td class="text-center"><%# Eval("shortnm") %></td>
                                                        <td class="text-center"><%# Eval("pincode") %></td>
                                                        <td class="text-center"><%# Eval("stateid") %></td>
                                                                                                                
                                                        <td class="text-center">
                                                                                            
                                                            <asp:ImageButton ID="imgbtnedit" class="btn btn-default btn-rounded btn-condensed btn-sm" runat="server" CommandName ="delete" CommandArgument='<%# Eval("cityid") %>' ImageUrl ="../icons/delete.png" />
                                                            <asp:ImageButton ID="imgbtndel" class="btn btn-danger btn-rounded btn-condensed btn-sm" runat="server" CommandName ="update" CommandArgument='<%# Eval("cityid") %>' ImageUrl ="../icons/edit.png" />
                                                           
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

                                                    <th width="50">City Name</th>
                                                    <th width="50">Short Name</th>
                                                    <th width="50">Pincode</th>
                                                    <th width="50">State Name</th>
                                                                                                      
                                                </tr>
                                            </thead>
                                            <tbody>                                            
                                                <tr>
                                                    
                                                    <td>
                                                        <asp:TextBox ID="tbxcitynm" runat="server"></asp:TextBox></td>
                                                    <td>
                                                        <asp:TextBox ID="tbxshortnm" runat="server"></asp:TextBox></td>
                                                    <td>
                                                        <asp:TextBox ID="tbxpin" runat="server"></asp:TextBox></td>
                                                    <td>
                                                            <asp:DropDownList ID="drpstate" runat="server">
                                                            </asp:DropDownList>
                                                        </td>
                                                                                                        
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

