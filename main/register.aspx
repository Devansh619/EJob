<%@ Page Title="" Language="C#" MasterPageFile="~/main/intromaster.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="main_register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="loading-area"></div>
 <!-- Content -->
    <div class="page-content bg-white">
        <!-- inner page banner -->
        <div class="dez-bnr-inr overlay-black-middle bg-pt" style="background-image:url(images/banner/bnr2.jpg);">
            <div class="container">
                <div class="dez-bnr-inr-entry">
                    <h1 class="text-white">Register</h1>
					<!-- Breadcrumb row -->
					<div class="breadcrumb-row">
						<ul class="list-inline">
							<li><a href="#">Home</a></li>
							<li>Register</li>
						</ul>
					</div>
					<!-- Breadcrumb row END -->
                </div>
            </div>
        </div>
        <!-- inner page banner END -->
        <!-- contact area -->
        <div class="section-full content-inner shop-account">
            <!-- Product -->
            <div class="container">
                <div class="row">
					<div class="col-md-12 text-center">
						<h3 class="font-weight-700 m-t0 m-b20">Create An Account</h3>
					</div>
				</div>
                <div class="row">
					<div class="col-md-12 m-b30">
						<div class="p-a30 border-1  max-w500 m-auto">
							<div class="tab-content">
							
									<h4 class="font-weight-700">PERSONAL INFORMATION</h4>
									<p class="font-weight-600">If you have an account with us, please log in.</p>

									<div class="form-group">
										<label class="font-weight-700">User Name *</label>
                                        <asp:TextBox ID="tbxunm"  class="form-control" runat="server" TextMode="SingleLine"></asp:TextBox>
                                        <asp:Label ID="lblunmval" runat="server" ForeColor="#CC0000"></asp:Label>
									</div>

									<div class="form-group">
										<label class="font-weight-700">Password *</label>
										<asp:TextBox ID="tbxpwd"  class="form-control" runat="server" 
                                            TextMode="Password" MaxLength="20"></asp:TextBox>
									</div>

                                    <div class="form-group">
										<label class="font-weight-700">Confirm Password *</label>
										<asp:TextBox ID="tbxconpwd" class="form-control" runat="server" 
                                            TextMode="Password" MaxLength="20"></asp:TextBox>
									    <asp:CompareValidator ID="compareconpwd" runat="server" 
                                            ControlToCompare="tbxpwd" ControlToValidate="tbxconpwd" 
                                            ErrorMessage="Not Matched " ForeColor="#CC0000" SetFocusOnError="True"></asp:CompareValidator>
									</div>

                                    <div class="form-group">
										<label class="font-weight-700">User Type *</label>
                                        <asp:DropDownList ID="drputype" class="form-control"  runat="server">
                                          <asp:listitem Text="company"></asp:listitem>
                                          <asp:listitem Text="jobseeker"></asp:listitem>
                                         
                                        </asp:DropDownList>
									</div>

                                    <div class="form-group">
										<label class="font-weight-700">Contact No. *</label>
                                        <asp:TextBox ID="tbxcon" class="form-control"  runat="server"></asp:TextBox>
									    <asp:RegularExpressionValidator ID="regexpvalcon" runat="server" 
                                            ControlToValidate="tbxcon" ErrorMessage="Enter Valid Info." ForeColor="#CC0000" 
                                            SetFocusOnError="True" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
									</div>

									<div class="form-group">
										<label class="font-weight-700">E-mail *</label>
										<asp:TextBox ID="tbxemail" class="form-control"  runat="server"></asp:TextBox>
									    <asp:RegularExpressionValidator ID="regexpvalemail" runat="server" 
                                            ControlToValidate="tbxemail" ErrorMessage="Enter Valid Info." 
                                            ForeColor="#CC0000" SetFocusOnError="True" 
                                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
									</div>

                                    <div class="form-group">
										<label class="font-weight-700">Security Code *</label>										
										<asp:TextBox ID="tbxscode" class="form-control"  runat="server"></asp:TextBox>
                                    </div>
                                    									
									<div class="text-left">         
                                        <asp:Button ID="btnreg" class="site-button button-lg outline outline-2" 
                                            runat="server" Text="Register" onclick="btnreg_Click" />
                                        <asp:Button ID="btncan" class="site-button button-lg outline outline-2" 
                                            runat="server" Text="Cancel" onclick="btncan_Click1" />
                                        <asp:Label ID="lblmsg" runat="server" ForeColor="#CC0000"></asp:Label>
									</div>
								
							</div>
						</div>
					</div>
				</div>
			</div>
            <!-- Product END -->
		</div>
		<!-- contact area  END -->
    </div>
    <!-- Content END-->

</asp:Content>

