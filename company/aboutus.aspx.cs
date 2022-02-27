using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class main_aboutus : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btncrt_Click(object sender, EventArgs e)
    {
        Response.Redirect("register.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("register.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
}