<%@ Page Title="" Language="C#" MasterPageFile="~/employee/empmaster.master" AutoEventWireup="true" CodeFile="jobdetail.aspx.cs" Inherits="employee_jobdetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="loading-area"></div>
     <!-- inner page banner -->
        <div class="dez-bnr-inr overlay-black-middle" style="background-image:url(images/banner/bnr1.jpg);">
            <div class="container">
                <div class="dez-bnr-inr-entry">
                    <h1 class="text-white">Job Detail</h1>
					<!-- Breadcrumb row -->
					<div class="breadcrumb-row">
						<ul class="list-inline">
							<li><a href="#">Home</a></li>
							<li>Job Detail</li>
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
						<h3 class="font-weight-700 m-t0 m-b20">Details</h3>
					</div>
				</div>
                <div class="row" style="margin-bottom:20px">
					<div class="col-md-12">
						<div class="p-a30 border-1  max-w1000 m-auto" >
							  <table class="table table-bordered">
                                 <tr>
                                   <td><asp:Label ID="lbljbnm" runat="server" Text="JOB NAME" Font-Bold="True"></asp:Label></td>
                                   <td><asp:Label ID="lbljobname" runat="server" Text=''></asp:Label></td>
                                 </tr>

                                 <tr>
                                   <td><asp:Label ID="lblskills" runat="server" Text="Required Skills" Font-Bold="True"></asp:Label></td>                                   
                                   <td><asp:Label ID="lblreqskills" runat="server" Text=''></asp:Label></td>
                                 </tr>

                                 <tr>
                                   <td><asp:Label ID="lbljbtype" runat="server" Text="JOB TYPE" Font-Bold="True"></asp:Label></td>                                   
                                   <td><asp:Label ID="lbljobtype" runat="server" Text=''></asp:Label></td>
                                 </tr>

                                 <tr>
                                   <td><asp:Label ID="lblcmp" runat="server" Text="COMPANY" Font-Bold="True"></asp:Label></td>                                   
                                   <td><asp:Label ID="lblcmpname" runat="server" Text=''></asp:Label></td>
                                 </tr>

                                  <tr>
                                   <td><asp:Label ID="lble" runat="server" Text="E-MAIL" Font-Bold="True"></asp:Label></td>                                   
                                   <td><asp:Label ID="lblemail" runat="server" Text=''></asp:Label></td>
                                 </tr>

                                 <tr>
                                   <td><asp:Label ID="lbldur" runat="server" Text="DURATION" Font-Bold="True"></asp:Label></td>                                    
                                   <td><asp:Label ID="lblduration" runat="server" Text=''></asp:Label></td>
                                 </tr>

                                 <tr>
                                   <td><asp:Label ID="lbld" runat="server" Text="DOCUMENT" Font-Bold="True"></asp:Label></td>                                    
                                   <td><asp:Label ID="lbldoc" runat="server" Text=''></asp:Label></td>
                                 </tr>

                                 <tr>
                                   <td><asp:Label ID="lblpr" runat="server" Text="AMOUNT" Font-Bold="True"></asp:Label></td>                                    
                                   <td><asp:Label ID="lblamt" runat="server" Text=''></asp:Label></td>
                                 </tr>

                                 <tr>
                                   <td colspan="2"> <asp:Button ID="btnapply" class="site-button" runat="server" 
                                           Text="Apply" onclick="btnapply_Click"  /> </td>
                                 </tr>
                                 
                                 <tr>
                                   <td colspan="2"> <asp:Label ID="lblmsg" runat="server" ForeColor="#CC0000"></asp:Label> </td>
                                 </tr>
                              </table>                                 
						</div>
					</div>
				</div>
			</div>
            <!-- Product END -->
		</div>
		<!-- contact area  END -->

</asp:Content>

