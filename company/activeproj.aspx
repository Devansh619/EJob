<%@ Page Title="" Language="C#" MasterPageFile="~/company/companymaster.master" AutoEventWireup="true" CodeFile="activeproj.aspx.cs" Inherits="company_activeproj" %>

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
				<div style='margin-top:20px'> <h3 class="font-weight-700 m-t0 m-b20">Projects</h3></div>
             </div>
		</div>	
        
        <div class="container">
            <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                <asp:View ID="View1" runat="server" >
                
			<div class="row">
            <div class="col-md-1"></div>
				<div class="col-md-10">
                    <table class="table table-bordered">
                    <tr>

                      <th>Id</th>
                      <th>Apply Date</th>
                      <th>Job Seeker</th>
                      <th>Job Name</th>
                      <th>Duration</th>
                      <th>Amount</th>
                      <th>Contact</th>
                      <th>Resume</th>
                      <th>Selection</th>

                    </tr>
                    <asp:Repeater ID="rptactive" runat="server" onitemcommand="rptactive_ItemCommand">
                     <ItemTemplate>
                        <tr>

                           <td><%# Eval("jappid") %> </td>
                           <td><%# Eval("jappdate") %> </td>
                           <td><%# Eval("fnm") %> </td>
                           <td><%# Eval("jbnm") %> </td>
                           <td><%# Eval("duration") %> </td>
                           <td><%# Eval("amt") %> </td>
                           <td><%# Eval("contact") %> </td>
                           <td> <asp:Button ID="btnresume" runat="server" class="site-button m-r5" Text="Resume" CommandName="emp" CommandArgument='<%# Eval("empid")%>' />  </td>
                           <td> <asp:Button ID="btnselect" runat="server" class="site-button m-r5" Text="Hire" CommandName="job" CommandArgument='<%# Eval("jappid")%>' />  </td>
                           
                        </tr>
                     </ItemTemplate>
                    </asp:Repeater>
                    <tr> <td colspan="9">  <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label> </td> </tr>
                    </table>
				</div>						
  		   </div>
           </asp:View>
                <asp:View ID="View2" runat="server">
                  	<div class="row">
                     <div class="col-md-1"></div>
				      <div class="col-md-10">
                          <table class="table table-bordered">

                            <tr>
                              <td>Employee ID</td>
                              <td> <asp:Label ID="lblempid" runat="server" Text=""></asp:Label></td>
                            </tr>

                            <tr>
                              <td>Employee Name</td>
                              <td> <asp:Label ID="lblname" runat="server" Text=""></asp:Label></td>
                            </tr>

                            <tr>
                              <td>Qualification</td>
                              <td> <asp:Label ID="lblquali" runat="server" Text=""></asp:Label></td>
                            </tr>

                            <tr>
                              <td>Experience</td>
                              <td> <asp:Label ID="lblexp" runat="server" Text=""></asp:Label></td>
                            </tr>

                            <tr>
                              <td>Speciality</td>
                              <td> <asp:Label ID="lblspeciality" runat="server" Text=""></asp:Label></td>
                            </tr>

                             <tr>
                              <td>Skills</td>
                              <td> <asp:Label ID="lblskills" runat="server" Text=""></asp:Label></td>
                            </tr>

                             <tr>
                              <td>Hobby</td>
                              <td> <asp:Label ID="lblhobby" runat="server" Text=""></asp:Label></td>
                            </tr>

                            <tr>
                              <td>Details</td>
                              <td> <asp:Label ID="lbldetails" runat="server" Text=""></asp:Label></td>
                            </tr>
                            <tr>
                              <td colspan="2">
                                  <asp:Button ID="btnclose" runat="server" class="site-button m-r5" Text="Close" 
                                      onclick="btnclose_Click" />
                              </td>                              
                            </tr>

                          </table>
                      </div>
                    </div>
                </asp:View>
            </asp:MultiView>
        </div>	
            
    </div>
</div>
    
  
</asp:Content>

