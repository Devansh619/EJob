<%@ Page Title="" Language="C#" MasterPageFile="~/main/intromaster.master" AutoEventWireup="true" CodeFile="forgotpwd.aspx.cs" Inherits="main_forgotpwd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div id="loading-area"></div>
            <!-- inner page banner -->
        <div class="dez-bnr-inr overlay-black-middle bg-pt" style="background-image:url(images/banner/bnr2.jpg);">
            <div class="container">
                <div class="dez-bnr-inr-entry">
                    <h1 class="text-white">Change Password</h1>
					<!-- Breadcrumb row -->
					<div class="breadcrumb-row">
						<ul class="list-inline">
							<li>Home</li>
							<li>Change Password</li>
						</ul>
					</div>
					<!-- Breadcrumb row END -->
                </div>
            </div>
        </div>
        <!-- inner page banner END -->
           <div class="section-full content-inner-2 shop-account">  
            <!-- Product -->
            <div class="container">
                <div class="row">
					<div class="col-md-12 text-center">
						<h3 class="font-weight-700 m-t0 m-b20">FORGET PASSWORD ?</h3>
					</div>
				</div>
                <div>
					<div class="row">
					  <div class="col-md-12 m-b30">
						<div class="p-a30 border-1  max-w500 m-auto">
							<div class="tab-content">
                                    <h4 class="font-weight-700">FORGET PASSWORD ?</h4>
									<p class="font-weight-600">We will send you an email to reset your password </p>
									<div class="form-group">
										<%--<label class="font-weight-700">USERNAME *</label>										
                                        <asp:TextBox ID="tbxunm" class="form-control" runat="server"></asp:TextBox>--%>
                                    
                                        <label class="font-weight-700">E-MAIL *</label>										
                                        <asp:TextBox ID="tbxemail" class="form-control" runat="server" placeholder="Your Email Id"></asp:TextBox>

                                        <label class="font-weight-700">Security Code *</label>	
                                        <asp:TextBox ID="tbxscode" class="form-control" runat="server" placeholder="Security Code"></asp:TextBox>

									</div>
									<div class="text-left"> 										
                                            <asp:Button ID="btnsend" class="site-button m-r5 button-lg" runat="server" 
                                                Text="Send" onclick="btnsend_Click" />
                                            <asp:Button ID="btncan" class="site-button m-r5 button-lg" runat="server" 
                                                Text="Cancel" onclick="btncan_Click" />
                                    </div>
                                    <asp:Label ID="lblmsg" runat="server" Text="" ForeColor="#CC0000"></asp:Label>
                             </div>
                           </div>
                        </div>
                    </div>
                 </div>
            </div>
       </div>
</asp:Content>

