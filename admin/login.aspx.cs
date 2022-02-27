using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient; 

public partial class admin_login : System.Web.UI.Page
{
    DataClass dc = new DataClass(); 
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {
            tbxunm.Text = Session["username"].ToString();
            tbxpwd.Focus();
        }
    }

    protected void btnlogin_Click(object sender, EventArgs e)
    {
        string query = "select regid,unm,pwd,utype from register where unm = '" + tbxunm.Text + "'";

        DataRow rw = dc.getRow(query);
        try
        {
            if (tbxpwd.Text == rw["pwd"].ToString())
            {
                if (rw["utype"].ToString() == "admin")
                {
                    Session["regid"] = rw["regid"];
                    Session["username"] = rw["unm"];
                    Response.Redirect("home.aspx");
                }                
            }
            else
            {
                lblmsg.Text = "Invalid Password";
                tbxpwd.Focus();
            }
        }
        catch (Exception ex)
        {
            lblmsg.Text = "Invalid Username or Password";
            tbxunm.Focus();
        }
    }
}