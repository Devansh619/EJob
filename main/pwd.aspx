<%@ Page Title="" Language="C#" MasterPageFile="~/main/intromaster.master" AutoEventWireup="true" CodeFile="pwd.aspx.cs" Inherits="main_pwd" %>

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
                    <h1 class="text-white">Your Password</h1>
					<!-- Breadcrumb row -->
					<div class="breadcrumb-row">
						<ul class="list-inline">
							<li><a href="#">Home</a></li>
							<li>Your Password</li>
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
						<h3 class="font-weight-700 m-t0 m-b20">Password</h3>
					</div>
				</div>
               <div class="row">
					<div class="col-md-12 m-b30">
						<div class="p-a30 border-1  max-w500 m-auto">
							<div class="tab-content">
								
						        <h4 class="font-weight-700">Your Password is</h4>
                                <div class="form-group">
                                    <asp:Label ID="lblpwd" runat="server" Text="" Font-Size="XX-Large"></asp:Label>
                                </div>
                                <div class="form-group">
                                    <asp:Button ID="btndone" runat="server" class="site-button m-r5 button-lg" Text="Done" onclick="Button1_Click" />
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--End -- Content -->
</asp:Content>

