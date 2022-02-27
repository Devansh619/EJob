using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class main_changepwd : System.Web.UI.Page
{
    DataClass dc = new DataClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {
            tbxunm.Text = Session["username"].ToString ();
        }
    }
    protected void btnchangepwd_Click(object sender, EventArgs e)
    {
        if (Session["regid"] == "")
        {
            lblmsg.Text = "Please Login First";
        }
        else
        {
            int regid = Convert.ToInt32(Session["regid"]);
            string query = "";
            query = "select pwd from register where regid='" + regid + "'";
            DataRow rw = dc.getRow(query);
            if (tbxoldpwd.Text.Equals(rw["pwd"]))
            {
                query = "update register set pwd='" + tbxnewpwd.Text + "' where regid='" + regid + "'";
                if (dc.saveRecord(query))
                {
                    string query1 = "select utype from register where unm='" + tbxunm.Text + "' ";
                    DataRow rw1 = dc.getRow(query1);

                    if (rw1["utype"].ToString() == "company")
                    {
                        Response.Redirect("../company/chome.aspx");
                    }
                    else if (rw1["utype"].ToString() == "jobseeker")
                    {
                        Response.Redirect("../employee/ehome.aspx");
                    }
                }
                else
                {
                    lblmsg.Text = " Not Updated ";
                }
            }
            else
            {
                lblmsg.Text = "Password old does not match";
            }
        }
    }
    protected void btncan_Click(object sender, EventArgs e)
    {

        string query1 = "select utype from register where unm='" + tbxunm.Text + "' ";
        DataRow rw1 = dc.getRow(query1);

        if (rw1["utype"].ToString() == "company")
        {
            Response.Redirect("../company/chome.aspx");
        }
        else if (rw1["utype"].ToString() == "jobseeker")
        {
            Response.Redirect("../employee/ehome.aspx");
        }
    }
}