<%@ Page Title="" Language="C#" MasterPageFile="~/main/intromaster.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="main_login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
.form_group
{
  width:100%!important;
}
.form_control
{
  width:100%!important;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="loading-area"></div>
    <!-- Content -->
    <div class="page-content bg-white">
        <!-- inner page banner -->
        <div class="dez-bnr-inr overlay-black-middle bg-pt" style="background-image:url(images/banner/bnr2.jpg);">
            <div class="container">
                <div class="dez-bnr-inr-entry">
                    <h1 class="text-white">Login</h1>
					<!-- Breadcrumb row -->
					<div class="breadcrumb-row">
						<ul class="list-inline">
							<li><a href="#">Home</a></li>
							<li>Login</li>
						</ul>
					</div>
					<!-- Breadcrumb row END -->
                </div>
            </div>
        </div>
        <!-- inner page banner END -->
        <!-- contact area -->
        <div class="section-full content-inner-1 shop-account">
            <!-- Product -->
            <div class="container">
                <div class="row">
					<div class="col-md-12 text-center">
						<h3 class="font-weight-700 m-t0 m-b20">Login Your Account</h3>
					</div>
				</div>
                <div class="row">
					<div class="col-md-12 m-b30">
						<div class="p-a30 border-1  max-w500 m-auto">
							<div class="tab-content">                           
								
									<h4 class="font-weight-700">LOGIN</h4>
									<p class="font-weight-600">If you have an account with us, please log in.</p>

									<div class="form-group">
										<label class="font-weight-700">Username *</label>                                        
                                        <asp:TextBox ID="tbxunm" class="form-control" runat="server" placeholder="Enter Username"></asp:TextBox>
									</div>

									<div class="form-group">
										<label class="font-weight-700">Password *</label>
                                        <asp:TextBox ID="tbxpwd" class="form-control" runat="server" 
                                            placeholder="Enter your Password" TextMode="Password"></asp:TextBox>
									</div>

                                <%--<div class="form-group">
										<label class="font-weight-700">User Type *</label>
                                        <asp:DropDownList ID="drputype" class="form-control"  runat="server">
                                          <asp:listitem Text="Company" Value="1"></asp:listitem>
                                          <asp:listitem Text="Job Seeker" Value="2"></asp:listitem>
                                          <asp:listitem Text="Admin" Value="3"></asp:listitem>
                                        </asp:DropDownList>
									</div>--%>

									<div class="text-left">
                                         <asp:Button ID="btnlog" class="site-button m-r5 button-lg" runat="server" 
                                            Text="Login" onclick="btnlog_Click1" />
										<asp:Button ID="btncan" class="site-button m-r5 button-lg" runat="server" 
                                            Text="Cancel" onclick="btncan_Click" />
                                        <asp:LinkButton ID="lnkbtnforgotpwd" class="fa fa-unlock-alt" runat="server" onclick="lnkbtnforgotpwd_Click" 
                                            >Forgot Password</asp:LinkButton>                                     
                                       <asp:Label ID="lblmsg"  runat="server" BackColor="White" ForeColor="Red"></asp:Label>
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

