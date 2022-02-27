using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_adminmaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void lnkbtnlogout_Click(object sender, EventArgs e)
    {
        Session["regid"] = "";
        Session["username"] = "";
        Response.Redirect("../main/login.aspx");
    }
    protected void lnkbtnprofile_Click(object sender, EventArgs e)
    {
        Response.Redirect("register.aspx");
    }
}
