<%@ Page Title="" Language="C#" MasterPageFile="~/admin/adminmaster.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="admin_profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <!-- START PAGE CONTAINER -->
        <div class="page-container">
            
            <!-- PAGE CONTENT -->
            <div class="page-content">
              
                                                              
                
                <!-- PAGE TITLE -->
                <div class="page-title">                    
                    <h2><span class="fa fa-pencil"></span> New Admin</h2>
                </div>
                <!-- END PAGE TITLE -->                     
                
                <!-- PAGE CONTENT WRAPPER -->
                <div class="page-content-wrap">
                                   
                    <div class="row">                        
                       
                        <div class="col-md-12 ">
                         
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <%--<h3><span class="fa fa-pencil"></span> Profile</h3>
                                    <p>This information lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer faucibus, est quis molestie tincidunt, elit arcu faucibus erat.</p>--%>
                                </div>
                                <div class="panel-body form-group-separated">
                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-5 control-label">UserName</label>
                                        <div class="col-md-9 col-xs-7">                                            
                                            <asp:TextBox ID="tbxunm" class="form-control" runat="server" PlaceHolder="Your Name"></asp:TextBox>                                            
                                        </div>
                                        <asp:Label ID="lbluniqueunm" runat="server" Text=""></asp:Label>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-5 control-label">Password</label>
                                        <div class="col-md-9 col-xs-7">
                                            <asp:TextBox ID="tbxpwd" class="form-control" runat="server" PlaceHolder="Enter Password" TextMode="Password"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-5 control-label">Confirm Password</label>
                                        <div class="col-md-9 col-xs-7">
                                            <asp:TextBox ID="tbxconpwd" class="form-control" runat="server" PlaceHolder="Confirm Password" TextMode="Password"></asp:TextBox>
                                        </div>
                                        <asp:CompareValidator ID="compareconpwd" runat="server" 
                                            ControlToCompare="tbxpwd" ControlToValidate="tbxconpwd" 
                                            ErrorMessage="Not Matched !" ForeColor="#CC0000" SetFocusOnError="True"></asp:CompareValidator>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-5 control-label">User Type</label>
                                        <div class="col-md-9 col-xs-7">
                                             <asp:TextBox ID="tbxusertype" class="form-control" runat="server" PlaceHolder="User Tupe" Text="admin" ReadOnly="True"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-5 control-label">Contact</label>
                                        <div class="col-md-9 col-xs-7">
                                             <asp:TextBox ID="tbxcontact" class="form-control" runat="server" PlaceHolder="Contact"></asp:TextBox>
                                        </div>
                                        <asp:RegularExpressionValidator ID="regexpvalcon" runat="server" 
                                            ControlToValidate="tbxcontact" ErrorMessage="Enter Valid Info." ForeColor="#CC0000" 
                                            SetFocusOnError="True" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-3 col-xs-5 control-label">E-mail</label>
                                        <div class="col-md-9 col-xs-7">
                                             <asp:TextBox ID="tbxemail" class="form-control" runat="server" PlaceHolder="Enter Your Email"></asp:TextBox>
                                        </div>
                                         <asp:RegularExpressionValidator ID="regexpvalemail" runat="server" 
                                            ControlToValidate="tbxemail" ErrorMessage="Enter Valid Info." 
                                            ForeColor="#CC0000" SetFocusOnError="True" 
                                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                    </div>                                          
                                    <div class="form-group">
                                        <div class="col-md-6 col-md-6">                        
                                            <asp:Button ID="btncancel" class="btn btn-primary btn-rounded pull-right" 
                                                runat="server" Text="Cancel" onclick="btncancel_Click" />                    
                                            <asp:Button ID="btnsave" class="btn btn-primary btn-rounded pull-right" 
                                                runat="server" Text="Save" onclick="btnsave_Click" />                                                                                        
                                        </div>
                                        <asp:Label ID="lblmsg" runat="server" ForeColor="#CC0000"></asp:Label>
                                    </div>
                                </div>
                            </div>
                       
                        </div>
                                           
                    </div>
                    
                </div>
                <!-- END PAGE CONTENT WRAPPER -->                                                 
            </div>            
            <!-- END PAGE CONTENT -->
        </div>
        <!-- END PAGE CONTAINER -->


</asp:Content>

