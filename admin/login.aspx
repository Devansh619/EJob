<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="admin_login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" class="body-full-height">
<head runat="server">    
     <!-- META SECTION -->
        <title>EJob</title>            
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        
        <link rel="icon" href="../icons/pex2.png" type="image/x-icon" />
        <!-- END META SECTION -->
        
        <!-- CSS INCLUDE -->        
        <link rel="stylesheet" type="text/css" id="theme" href="html/css/theme-default.css"/>
        <!-- EOF CSS INCLUDE --> 
</head>
<body>

    <div class="login-container">        
            <div class="login-box animated fadeInDown">
                <div class="login-logo"></div>
                <div class="login-body">
                    <div class="login-title"><strong>Welcome</strong>, Please login</div>
                    <form id="form1"  class="form-horizontal" runat ="server" >
                    <div class="form-group">
                        <div class="col-md-12">
                            <asp:TextBox ID="tbxunm" class="form-control" runat="server" placeholder="Enter Username"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-12">                            
                            <asp:TextBox ID="tbxpwd" class="form-control" runat="server" 
                                placeholder="Enter Password" TextMode="Password"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">                       
                        <div class="col-md-6">                            
                            <asp:Button ID="btnlogin" class="btn btn-info btn-block" runat="server" 
                                Text="Login" onclick="btnlogin_Click" />
                            <asp:Label ID="lblmsg" runat="server" Text="" ForeColor="#CC0000"></asp:Label>
                        </div>
                    </div>
                    </form>
                </div>               
            </div>            
        </div> 

</body>
</html>
