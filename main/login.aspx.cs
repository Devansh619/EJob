using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient; 

public partial class main_login : System.Web.UI.Page
{
    DataClass dc = new DataClass(); 
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["username"] != null)
            {
                tbxunm.Text = Session["username"].ToString();
                tbxpwd.Focus();
            }
        }
    }
   
    
    protected void btnlog_Click1(object sender, EventArgs e)
    {
        string query = "select regid,unm,pwd,utype from register where unm = '" + tbxunm.Text + "'";

        DataRow rw = dc.getRow(query);
        try
        {
            if (tbxpwd.Text == rw["pwd"].ToString())
            {
                Session["regid"] = rw["regid"];
                Session["username"] = rw["unm"];

                if (rw["utype"].ToString() == "company")
                {
                    Response.Redirect("../company/chome.aspx");
                }
                else if (rw["utype"].ToString() == "jobseeker")
                {
                    Response.Redirect("../employee/ehome.aspx");
                }
                else if (rw["utype"].ToString() == "admin")
                {
                    Response.Redirect("../admin/home.aspx");
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

    protected void btncan_Click(object sender, EventArgs e)
    {
        Response.Redirect("welcome.aspx");
    }
   
    protected void lnkbtnforgotpwd_Click(object sender, EventArgs e)
    {
        Session["username"] = tbxunm.Text;
        Response.Redirect("forgotpwd.aspx");
    }
}
