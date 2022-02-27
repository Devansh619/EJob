using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class main_forgotpwd : System.Web.UI.Page
{
    DataClass dc = new DataClass();
    string username = "";
    string email = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {
            username = Convert.ToString(Session["username"]);
            //tbxunm.Text = Convert.ToString(Session["username"]);
            try
            {
                DataRow rw = dc.getRow("select regid,unm,email from register where unm='" + username + "'");
                tbxemail.Text = Convert.ToString(rw["email"]);
                email = Convert.ToString(rw["email"]);
            }
            catch (Exception ex)
            {
                lblmsg.Text = "User not found";
            }
        }
    }

    protected void btnsend_Click(object sender, EventArgs e)
    {
        DataRow rw = dc.getRow("select securitycode from register where email='" + email + "' ");

        if (tbxscode.Text == rw["securitycode"].ToString())
        {
            Response.Redirect("pwd.aspx");
        }
        else
        {
            lblmsg.Text = "Failed";
        }
    }

    protected void btncan_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
}
   
 