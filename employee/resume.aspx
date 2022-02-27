<%@ Page Title="" Language="C#" MasterPageFile="~/employee/empmaster.master" AutoEventWireup="true" CodeFile="resume.aspx.cs" Inherits="employee_resume" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

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
                    <h1 class="text-white">Resume</h1>
					<!-- Breadcrumb row -->
					<div class="breadcrumb-row">
						<ul class="list-inline">
							<li><a href="#">Home</a></li>
							<li>Resume</li>
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
                            <h3 class="font-weight-700 m-t0 m-b20">Submit Resume</h3>
					    </div>
                    </div>
		    </div>
            <div class="max-w500 m-auto m-b30">
		    <div class="p-a30 border-1 seth"> 
			<%--<div class="section-full bg-white submit-resume content-inner-2">--%>
				<div class="container">
                        <div class="form-group">
							<label>Name*</label>
							<asp:TextBox ID="tbxnm" class="form-control" runat="server" placeholder="Your Name"></asp:TextBox>
						</div>
					    
						<div class="form-group">
							<label>Qualification*</label>
							<asp:DropDownList ID="drpdwnqualification" class="form-control"  runat="server" >
                                
                                <asp:listitem Text="BCA(Bechlore of Computer Application)" Value="1"></asp:listitem>
                                <asp:listitem Text="CS(Computer Science)" Value="2"></asp:listitem>
                                <asp:listitem Text="BE(Computer Engneering)" Value="3"></asp:listitem> 
                                <asp:listitem Text="Bachelor of Science in H/W & Networking" Value="4"></asp:listitem>
                                <asp:listitem Text="Bachelor of Science in Information Technology" Value="5"></asp:listitem>

                            </asp:DropDownList>
						</div>

						<div class="form-group">
							<label>Experience*</label>
							<asp:TextBox ID="tbxexp" class="form-control" runat="server" placeholder="In Years"></asp:TextBox>
						</div>

						<div class="form-group">
							<label>Speciality*</label>
							<asp:TextBox ID="tbxspeciality" class="form-control" runat="server" placeholder="Speciality"></asp:TextBox>
						</div>

                        <div class="form-group">
							<label>Skills*</label>
							<asp:TextBox ID="tbxskills" class="form-control" placeholder="Skills" runat="server"></asp:TextBox>
						</div>

						<%--<div class="form-group">
							<label>Skills</label>
                             <asp:DropDownList ID="drpswnskills" runat="server">
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
                             </asp:DropDownList>
						</div>--%>

						<div class="form-group">
							<label>Last Company</label>
							<asp:TextBox ID="tbxlstcmp" class="form-control" placeholder="Last Company" runat="server"></asp:TextBox>
						</div>

						<div class="form-group">
							<label>Hobby</label>
							<asp:TextBox ID="tbxhobby" class="form-control" placeholder="Hobby" runat="server"></asp:TextBox>
						</div>

						<div class="form-group">
							<label>Details</label>
							<asp:TextBox ID="tbxdetails" class="form-control" placeholder="Details" runat="server"></asp:TextBox>
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

