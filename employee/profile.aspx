<%@ Page Title="" Language="C#" MasterPageFile="~/employee/empmaster.master" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="employee_profile" %>

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
                    <h1 class="text-white">Profile</h1>
					<!-- Breadcrumb row -->
					<div class="breadcrumb-row">
						<ul class="list-inline">
							<li><a href="#">Home</a></li>
							<li>Profile</li>
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
                            <h3 class="font-weight-700 m-t0 m-b20">Update Your Profile</h3>
					    </div>
                    </div>
		</div>
		<div class="max-w500 m-auto m-b30">
		<div class="p-a30 border-1 seth"> 
            <%--<div class="section-full bg-white submit-resume content-inner-2">--%>
				<div class="container">
					    
                        <div class="form-group">
							<label>First Name </label>
							<asp:TextBox ID="tbxfnm" runat="server" class="form-control" placeholder="Your First Name"></asp:TextBox>
						</div>
						
                        <div class="form-group">
							<label>Middle Name </label>
							<asp:TextBox ID="tbxmnm" runat="server" class="form-control" placeholder="Your Middle Name"></asp:TextBox>
						</div>
                        
                        <div class="form-group">
							<label>Last Name </label>
							<asp:TextBox ID="tbxlnm" runat="server" class="form-control" placeholder="Your Last Name"></asp:TextBox>
						</div>
                        
                        <div class="form-group">
							<label>Address</label>
							<asp:TextBox ID="tbxadd" runat="server" class="form-control" placeholder="Your Address" TextMode="MultiLine"></asp:TextBox>
						</div>

						<div class="form-group">
							<label>City </label>
							    <asp:DropDownList ID="drpdwncity" runat="server">
                                </asp:DropDownList>
						</div>
                        
						<div class="form-group">
							<label>Contact </label>
							<asp:TextBox ID="tbxcon" runat="server" class="form-control" placeholder="Your Contact No."></asp:TextBox>
						</div>
                       
                        <div class="form-group">
						    <label>Gender </label>							
                                <asp:RadioButtonList ID="radiolstgen" runat="server">
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                                <asp:ListItem>Other</asp:ListItem>
                                </asp:RadioButtonList>                                        
						</div>
                        
                        <div class="form-group">
							<label>Photo (optional)</label>
							<div class="custom-file">								
                                <asp:FileUpload ID="fileuppropic" Text="Upload" runat="server" />
							</div>
						</div>

                        <div class="form-group">
							<label>Date of Birth </label>
							<asp:TextBox ID="tbxdob" runat="server" class="form-control" placeholder="MM-dd-yyyy"></asp:TextBox>
						</div>

                        <asp:Button ID="btnsub" class="site-button" runat="server" Text="Submit" 
                            onclick="btnsub_Click" />
                        <asp:Button ID="btncan" class="site-button" runat="server" Text="Cancel" 
                            onclick="btncan_Click" />				
				</div>
			    <%--</div>--%>
        </div>
        </div>
            <!-- Submit Resume END -->
		</div>
    </div>
    <!-- Content END-->
	
    <button class="scroltop fa fa-chevron-up"></button>
</div>

</asp:Content>

