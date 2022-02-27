<%@ Page Title="" Language="C#" MasterPageFile="~/company/companymaster.master" AutoEventWireup="true" CodeFile="post.aspx.cs" Inherits="company_post" %>

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
                    <h1 class="text-white">Post Job</h1>
					<!-- Breadcrumb row -->
					<div class="breadcrumb-row">
						<ul class="list-inline">
							<li><a href="#">Home</a></li>
							<li>Post job</li>
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
						<h3 class="font-weight-700 m-t0 m-b20">Post Job</h3>
					</div>
				</div>
                <div class="row">
					<div class="col-md-12 m-b30">
						<div class="p-a30 border-1  max-w500 m-auto">
							<div class="tab-content">

									<div class="form-group">
										<label class="font-weight-700">Job title *</label>
                                        <asp:TextBox ID="tbxjob" class="form-control" runat="server" PlaceHolder="Job Title"></asp:TextBox>
									</div>
                                    <div class="form-group">
										<label class="font-weight-700">Job Type *</label>
                                        <asp:DropDownList ID="drpdwnjbtype" runat="server">
                                            <asp:listitem Text="Designing" Value="1"></asp:listitem>
                                            <asp:listitem Text="Coding" Value="2"></asp:listitem>
                                            <asp:listitem Text="Testing" Value="3"></asp:listitem>
                                            <asp:listitem Text="Typing" Value="4"></asp:listitem>
                                            <asp:listitem Text="DataBase Management" Value="5"></asp:listitem>
                                            <asp:listitem Text="Others" Value="6"></asp:listitem>
                                                                           
                                        </asp:DropDownList>
									</div>
									<div class="form-group">
										<label class="font-weight-700">Details *</label>
                                        <asp:TextBox ID="tbxdetails" class="form-control"  runat="server" TextMode="MultiLine" PlaceHolder="Job Details"></asp:TextBox>
									</div>
                                    <div class="form-group">
										<label class="font-weight-700">Required Skills *</label>
										
                                            <asp:DropDownList ID="drpdwnskills" runat="server">

                                                    <asp:listitem Text="JavaScript" Value="1"></asp:listitem>
                                                    <asp:listitem Text="Java" Value="2"></asp:listitem>
                                                    <asp:listitem Text="Python" Value="3"></asp:listitem>
                                                    <asp:listitem Text="Kotlin" Value="4"></asp:listitem>
                                                    <asp:listitem Text="Php" Value="5"></asp:listitem>
                                                    <asp:listitem Text="FullStack" Value="6"></asp:listitem>
                                                    <asp:listitem Text="c#" Value="7"></asp:listitem>
                                                    <asp:listitem Text="c++" Value="8"></asp:listitem>
                                                    <asp:listitem Text="MySQL" Value="9"></asp:listitem>
                                                    <asp:listitem Text="Ruby" Value="10"></asp:listitem>                                                    
                                                                                
                                            </asp:DropDownList>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									</div>
                                    <div class="form-group">
										<label class="font-weight-700">Duration *</label>
                                        <asp:TextBox ID="tbxdur" class="form-control" runat="server" PlaceHolder="Duration"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
										<label class="font-weight-700">Amount *</label>
                                        <asp:TextBox ID="tbxamt" class="form-control" runat="server" PlaceHolder="Amount"></asp:TextBox>
                                    </div>
                                    <div class="form-group">
										<label class="font-weight-700">Post Related Document (optional) </label>
                                        <div class="custom-file">    
                                            <asp:FileUpload ID="filedoc"  runat="server" Text="Upload" />
                                        </div>
                                    </div>
									<div class="text-left">         
                                        <asp:Button ID="btnpost" class="site-button button-lg outline outline-2" 
                                            runat="server" Text="Post" onclick="btnpost_Click" />
                                        <asp:Button ID="tbncancel" class="site-button button-lg outline outline-2" 
                                            runat="server" Text="Cancel" onclick="tbncancel_Click" />
                                        <asp:Label ID="lblmsg" runat="server" Text="" ForeColor="#CC0000"></asp:Label>
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

