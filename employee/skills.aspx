<%@ Page Title="" Language="C#" MasterPageFile="~/employee/empmaster.master" AutoEventWireup="true" CodeFile="skills.aspx.cs" Inherits="employee_skills" %>

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
                    <h1 class="text-white">Skills</h1>
					<!-- Breadcrumb row -->
					<div class="breadcrumb-row">
						<ul class="list-inline">
							<li><a href="#">Home</a></li>
							<li>Skills</li>
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
						<h3 class="font-weight-700 m-t0 m-b20">Skills</h3>
					</div>
				</div>
                <div class="row">
					<div class="col-md-12 m-b30">
						<div class="p-a30 border-1  max-w500 m-auto">
							<div class="tab-content">
                                
									<div class="text-left">
                                        <label>Skills*</label>
                                        <asp:DropDownList ID="drpdwnskills" runat="server">
                                            <asp:listitem Text="Java Script" Value="1"></asp:listitem>
                                            <asp:listitem Text="Java" Value="2"></asp:listitem>
                                            <asp:listitem Text="Python" Value="3"></asp:listitem>
                                            <asp:listitem Text="Kotlin" Value="4"></asp:listitem>
                                            <asp:listitem Text="Php" Value="5"></asp:listitem>
                                            <asp:listitem Text="Full Stack Developer" Value="6"></asp:listitem>
                                            <asp:listitem Text="c#" Value="7"></asp:listitem>
                                            <asp:listitem Text="c++" Value="8"></asp:listitem>
                                            <asp:listitem Text="Database Manager" Value="9"></asp:listitem>
                                            <asp:listitem Text="Ruby" Value="10"></asp:listitem>
                                            <asp:listitem Text="Sql" Value="11"></asp:listitem>                                
                                            <asp:listitem Text="Other" Value="12"></asp:listitem>                                
                                        </asp:DropDownList>
                                    </div>
                                        &nbsp
                                       
									<div class="text-left">                                      
                                        <asp:Button ID="tbnadd" class="site-button" runat="server" Text="Add" 
                                            onclick="tbnadd_Click" />
                                            &nbsp
                                        <asp:Button ID="btndone" class="site-button" runat="server" Text="Done" onclick="btndone_Click" />                                            
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

