<%@ Page Title="" Language="C#" MasterPageFile="~/company/companymaster.master" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="company_profile" %>

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
                            <h3 class="font-weight-700 m-t0 m-b20">Update Profile</h3>
					    </div>
                    </div>
		</div>

    <div class="container">   
         <div class="p-a30 border-1 seth">   
         <div class="row">

       
         <div class="col-md-4">         		
				<div class="container">					
						<div class="form-group">
							<label>Company Name </label>
							<asp:TextBox ID="tbxcmpnm" runat="server" class="form-control" placeholder="Your First Name"></asp:TextBox>
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
               </div>
         </div>
        
         <div class="col-md-4">
                        <div class="form-group">
							<label>Company Head </label>
							<asp:TextBox ID="tbxhead" runat="server" class="form-control" placeholder="Company Head "></asp:TextBox>
						</div>
                        <div class="form-group">
							<label>Company Type </label>
                            <asp:DropDownList ID="drpdwncmptype" runat="server">
                                <asp:listitem Text="Programmers Company" Value="1"></asp:listitem>
                                <asp:listitem Text="Web Development Company" Value="2"></asp:listitem>
                                <asp:listitem Text="Technical Support Company" Value="3"></asp:listitem>
                                <asp:listitem Text="Computer Systems Analyst Company" Value="4"></asp:listitem>
                                <asp:listitem Text="Networking Company" Value="5"></asp:listitem>
                                <asp:listitem Text="IT Security Company" Value="6"></asp:listitem>
                                <asp:listitem Text="Internet Marketing Company" Value="7"></asp:listitem>
                                <asp:listitem Text="Others" Value="8"></asp:listitem>
                            </asp:DropDownList>
						</div>                       
                        <div class="form-group">
							<label>Fax No. </label>
							<asp:TextBox ID="tbxfax" runat="server" class="form-control" placeholder="Fax No."></asp:TextBox>
						</div>
                        <div class="form-group">
							<label>E-mail </label>
							<asp:TextBox ID="tbxemail" runat="server" class="form-control" placeholder="Company E-mail"></asp:TextBox>
						</div>
                        
            </div>             
         
         <div class="col-md-4"> 
               <div class="form-group">
							<label>Logo (optional) (70 X 70)</label>
							<div class="custom-file">
								
                                <asp:FileUpload ID="fileuplogo" Text="Upload" runat="server" />

						    </div>
                         </div> 
           <asp:Image ID="imglogo" runat="server" Width="100%" Height="300px" >   </asp:Image>
         </div>
         </div>
         
         <div class="row">
         <div class="col-md-12">   
                        <asp:Button ID="btnsub" class="site-button" runat="server" Text="Submit" 
                            onclick="btnsub_Click" />
                        <asp:Button ID="btncan" class="site-button" runat="server" Text="Cancel" 
                            onclick="btncan_Click" />				
				</div>
           </div>
           </div>

        </div>
        </div>
            <!-- Submit Resume END -->
		</div>
    </div>
    <!-- Content END-->
	
    <button class="scroltop fa fa-chevron-up"></button>
</div>

</asp:Content>

