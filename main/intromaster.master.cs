using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class main_intromaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsignup_Click(object sender, EventArgs e)
    {
        Response.Redirect("register.aspx");
    }
    protected void btnlog_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
    //protected void imgbtnkingadmin_Click(object sender, ImageClickEventArgs e)
    //{
    //    Response.Redirect("../admin/login.aspx");
    //}
}
