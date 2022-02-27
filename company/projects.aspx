<%@ Page Title="" Language="C#" MasterPageFile="~/company/companymaster.master" AutoEventWireup="true" CodeFile="projects.aspx.cs" Inherits="company_projects" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="page-wraper">
   <div id="loading-area"></div>	
    
    <div class="page-content bg-white">
        <!-- inner page banner -->
        <div class="dez-bnr-inr overlay-black-dark" style="background-image:url(images/banner/bnr1.jpg);">
            <div class="container">
                <div class="dez-bnr-inr-entry">
                    <h1 class="text-white">Projects</h1>
					<!-- Breadcrumb row -->
					<div class="breadcrumb-row">
						<ul class="list-inline">
							<li><a href="#">Home</a></li>
							<li>Projects</li>
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
				<div style='margin-top:20px'> <h3 class="font-weight-700 m-t0 m-b20">Active Projects</h3></div>
             </div>
		</div>	
        
               <div class="container">
			<div class="row">
            <div class="col-md-1"></div>
				<div class="col-md-10">
                    <table class="table table-bordered">
                    <tr>

                      <th>Job Id</th>                      
                      <th>Job Name</th>
                      <th>Job Type</th>
                      <th>E-mail</th>
                      <th>Duration</th>
                      <th>Amount</th>
                      <th>Details</th>
                      <th>Employee List</th>

                    </tr>
                    <asp:Repeater ID="rptactive" runat="server">
                     <ItemTemplate>
                        <tr>

                           <td><%# Eval("jappid") %> </td>                          
                           <td><%# Eval("jbnm") %> </td>
                           <td><%# Eval("jbtype") %> </td>
                           <td><%# Eval("duration") %> </td>
                           <td><%# Eval("amt") %> </td> 
                           <td><%# Eval("details") %> </td> 
                           <td></td> 
                           <td> <asp:Button ID="btnlist" runat="server" class="site-button m-r5" Text="Client List" CommandName="list" CommandArgument='<%# Eval("cmpid")%>' />  </td>
                          
                        </tr>
                     </ItemTemplate>
                    </asp:Repeater>
                    <tr> <td colspan="8">  <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label> </td> </tr>
                    </table>
				</div>						
  		   </div>
        </div>
            
    </div>
</div>

</asp:Content>

