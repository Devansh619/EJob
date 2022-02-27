<%@ Page Title="" Language="C#" MasterPageFile="~/employee/empmaster.master" AutoEventWireup="true" CodeFile="ehome.aspx.cs" Inherits="employee_ehome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="loading-area"></div>
<!-- Content -->
    <div class="page-content bg-white">
        <!-- inner page banner -->
        <div class="dez-bnr-inr overlay-black-middle" style="background-image:url(images/banner/bnr1.jpg);">
            <div class="container">
                <div class="dez-bnr-inr-entry">
                    <h1 class="text-white">Home</h1>					
                </div>
            </div>
        </div>
        <!-- inner page banner END -->
        <!-- contact area -->
        <div class="content-block">
			<!-- Browse Jobs -->
			<div class="section-full bg-white browse-job content-inner-2">
				<div class="container">
					<div class="row">
						<div class="col-xl-9 col-lg-8">
							<h5 class="widget-title font-weight-700 text-uppercase">Recent Jobs</h5>
							<ul class="post-job-bx">
                                <asp:Repeater ID="rptjob" runat="server" onitemcommand="rptjob_ItemCommand">
                                 <ItemTemplate>

                                 <li>
                                 <a href="#">									
										<div class="d-flex m-b30">
											<div class="job-post-company">
                                                <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/company/companylogo/"+Eval("logo") %>' />
											</div>
											<div class="job-post-info">
												<h4> <asp:Label ID="lbljobname" runat="server" Text='<%# Eval("jbnm") %>'></asp:Label> </h4>												 
                                                <ul>
													<li><asp:Label ID="lblcnm" runat="server" Text='<%# Eval("cnm") %>' Font-Bold="True"></asp:Label></li>
													<li><i class="fa fa-clock-o"></i> <asp:Label ID="lblduration" runat="server" Text='<%# Eval("duration") %>'></asp:Label></li>
													
												</ul>
											</div>
										</div>
										<div class="d-flex">
											<div class="job-time mr-auto">
                                                <asp:Button ID="btnselect" runat="server" class="site-button m-r5" Text="Details..." CommandArgument='<%# Eval("jbid") %>' />
											</div>
											<div class="salary-bx">
                                                ₹<asp:Label ID="lblamt" runat="server" Text='<%# Eval("amt") %>'></asp:Label>												                                                 
											</div>
										</div>                                        
											
								</a>
                                </li>
                                 
                                 </ItemTemplate>
                                </asp:Repeater>								
								
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
                        <%--Start -- Browse Job--%>
						<div class="col-xl-3 col-lg-4">
							<div class="sticky-top">
								<div class="clearfix m-b30">
									<h5 class="widget-title font-weight-700 text-uppercase">Filter By Skills</h5>
									<div class="row">
										<div class="col-lg-12 col-md-12 col-sm-12 col-12">
											<div class="product-brand">
												<div class="custom-control custom-checkbox">													
                                                    <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                                                        
                                                        <asp:listitem>JavaScript</asp:listitem>
                                                        <asp:listitem>Java</asp:listitem>
                                                        <asp:listitem>Python</asp:listitem>
                                                        <asp:listitem>Kotlin</asp:listitem>
                                                        <asp:listitem>Php</asp:listitem>
                                                        <asp:listitem>FullStack</asp:listitem>
                                                        <asp:listitem>c#</asp:listitem>
                                                        <asp:listitem>c++</asp:listitem>
                                                        <asp:listitem>MySQL</asp:listitem>
                                                        <asp:listitem>Ruby</asp:listitem>
                                                        
                                                    </asp:CheckBoxList>
                                                    <asp:Button ID="btnsearch" runat="server" Text="Search" class="site-button outline outline-2"  
                                                        onclick="btnsearch_Click" />

                                                </div>                                            
                                            </div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					<%--End -- Browse Job--%>
                    </div>
				</div>
			</div>
            <!-- Browse Jobs END -->
		</div>
    </div>
    <!-- Content END-->

</asp:Content>

