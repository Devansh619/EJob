using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class main_mainmaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlog_Click(object sender, EventArgs e)
    {
        Session["regid"] = "";
        Session["username"] = "";
        Response.Redirect("welcome.aspx");
    }
}
