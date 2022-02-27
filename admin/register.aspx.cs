using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient; 

public partial class admin_profile : System.Web.UI.Page
{
    DataClass dc = new DataClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            tbxunm.Focus();
        }
    }

    protected void btnsave_Click(object sender, EventArgs e)
    {
        int regid = dc.primarykey("select max(regid) from register");
        string regdate = DateTime.Today.ToString("MM/dd/yyyy");

        string unm = tbxunm.Text;
        //int checkunm = CheckUsername(unm);
       
        string usertype = "admin";
        string query = "insert into register (regid,regdate,unm,pwd,utype,contact,email) values ('" + regid + "','" + regdate + "','" + unm + "','" + tbxpwd.Text + "','" + usertype + "','" + tbxcontact.Text + "','" + tbxemail.Text + "')";
        string q1 = "select count(*) from register where lower(unm)='" + tbxunm.Text.ToLower() + "'";
        //DataRow rw = dc.getRow(query);

        if (!dc.unique(q1))
        {
            if (dc.saveRecord(query))
            {               
                Session["username"] = tbxunm.Text;
                Response.Redirect("login.aspx");              
            }
            else
            {
                lblmsg.Text = "Not Registered";
            }
        }
        else
        {
            lbluniqueunm.Text = "Please enter Unique Username!";
        }
    }

    //private int CheckUsername(String name)
    //{
    //    string query = "select * from register where unm = '" + name + "'";
    //    DataRow rw = dc.getRow(query);
    //    if (rw["unm"].ToString() == name)
    //    {
    //        return 1;
    //    }
    //    return 0;
    //}

    protected void btncancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("login.aspx");
    }
}