<%@ Page Title="" Language="C#" MasterPageFile="~/company/companymaster.master" AutoEventWireup="true" CodeFile="chome.aspx.cs" Inherits="company_chome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="page-wraper">
<div id="loading-area"></div>

    <!-- Content -->
    <%--<div class="page-content">--%>
		<!-- Section Banner -->
		<div class="dez-bnr-inr dez-bnr-inr-md overlay-black-dark" style="background-image:url(../icons/656670.jpg);">
            <div class="container">
                <div class="dez-bnr-inr-entry align-m text-white">
					<div class=" job-search-form">
						<h2 class="text-center">The Easiest Way to Get Your New Job</h2>
						<h3>Find Jobs, Employment & Career Opportunities</h3>
						
							<%--<div class="input-group">
								
                                <asp:TextBox ID="searchbox" runat="server" class="form-control" placeholder="Job Title, Keywords Or Company Name"></asp:TextBox>
								<div class="input-group-prepend">
									
                                    <asp:Button ID="btnsearch" class="site-button" runat="server" Text="Search" 
                                        onclick="btnsearch_Click" />
								</div>
							</div>
						--%>
					</div>
				</div>
            </div>
        </div>
		<!-- Section Banner END -->
       
	<%--</div>--%>
	
    <!-- scroll top button -->
    <button class="scroltop fa fa-arrow-up" ></button>
</div>
</asp:Content>

