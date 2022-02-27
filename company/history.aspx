<%@ Page Title="" Language="C#" MasterPageFile="~/company/companymaster.master" AutoEventWireup="true" CodeFile="history.aspx.cs" Inherits="company_history" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div class="page-wraper">
   <div id="loading-area"></div>
	
    <!-- Content -->
    <div class="page-content bg-white">
        <!-- inner page banner -->
        <div class="dez-bnr-inr overlay-black-dark" style="background-image:url(images/banner/bnr1.jpg);">
            <div class="container">
                <div class="dez-bnr-inr-entry">
                    <h1 class="text-white">History</h1>
					<!-- Breadcrumb row -->
					<div class="breadcrumb-row">
						<ul class="list-inline">
							<li><a href="#">Home</a></li>
							<li>History</li>
						</ul>
					</div>
					<!-- Breadcrumb row END -->
                </div>
            </div>
        </div>
        <!-- inner page banner END -->
        <!-- contact area -->
        <div class="content-block">
			<!-- Submit Resume -->
        <div class="row">
					<div class="col-md-12 text-center">
						<div style='margin-top:20px'>
                            <h3 class="font-weight-700 m-t0 m-b20">History Projects</h3>
					    </div>
                    </div>
		</div>	
            	<div class="container">
					<div class="row">
						<div class="col-md-10">
							<h5 class="widget-title font-weight-700 text-uppercase">Recent Jobs</h5>
							<ul class="post-job-bx">
								<li>
                                   <%--<asp:Repeater runat="server" ID="rpthistory" >--%>
                                    
									<%--<a href="#">--%>
										<div class="d-flex m-b30">
											<div class="job-post-company">
												<span><img src="images/logo/icon1.png"/></span>
											</div>
											<div class="job-post-info">
												<h4>Digital Marketing Executive</h4>
												<ul>
													<li><i class="fa fa-map-marker"></i> Sacramento, California</li>
													<li><i class="fa fa-bookmark-o"></i> Full Time</li>
													<li><i class="fa fa-clock-o"></i> Published 11 months ago</li>
												</ul>
											</div>
										</div>
										<div class="d-flex">
											<div class="job-time mr-auto">
												<span>Full Time</span>
											</div>
											<div class="salary-bx">
												<span>$1200 - $ 2500</span>
											</div>
										</div>
										<span class="post-like fa fa-heart-o"></span>
									<%--</a>--%>
                                    
                                   <%--</asp:Repeater> --%> 
								</li>								
							</ul>
							<div class="pagination-bx m-t30">
								<ul class="pagination">
									<li class="previous"><a href="#"><i class="ti-arrow-left"></i> Prev</a></li>
									<li class="active"><a href="#">1</a></li>
									<li><a href="#">2</a></li>
									<li><a href="#">3</a></li>
									<li class="next"><a href="#">Next <i class="ti-arrow-right"></i></a></li>
								</ul>
							</div>
						</div>
						
					</div>
				</div>
			
            <!-- Browse Jobs END -->
					
				</div>
			    
            <!-- Submit Resume END -->
    </div>
</div>
    <!-- Content END-->	
    <button class="scroltop fa fa-chevron-up"></button>

</asp:Content>

