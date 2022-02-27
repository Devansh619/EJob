using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient; 

public partial class main_pwd : System.Web.UI.Page
{
    DataClass dc = new DataClass(); 
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {
            String username = Convert.ToString(Session["username"]);
            DataRow rw = dc.getRow("select pwd from register where unm='" + username + "'");
            lblpwd.Text = rw["pwd"].ToString();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
}