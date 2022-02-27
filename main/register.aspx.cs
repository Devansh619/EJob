using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient; 

public partial class main_register : System.Web.UI.Page
{
    DataClass dc = new DataClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            tbxunm.Focus();
        }
    }
   
    protected void btncan_Click(object sender, EventArgs e)
    {
        Response.Redirect("welcome.aspx");
    }

    protected void btnreg_Click(object sender, EventArgs e)
    {
        int regid = dc.primarykey("select max(regid) from register");
        string regdate = DateTime.Today.ToString("MM/dd/yyyy");
        string unm = tbxunm.Text;
        string q1 = "select count(*) from register where lower(unm)='" + tbxunm.Text.ToLower() + "'";
        string query = "insert into register (regid,regdate,unm,pwd,utype,contact,email,securitycode) values ('" + regid +"','"+ regdate + "','" + unm + "','" + tbxpwd.Text + "','" + drputype.SelectedItem.Text + "','" + tbxcon.Text + "','" + tbxemail.Text + "','" + tbxscode.Text + "')";

        if (!dc.unique(q1))
        {
            if (dc.saveRecord(query))
            {            
                string query1;
                if (drputype.SelectedItem.Text == "company")
                {
                    query1 = "insert into company(cmpid,cnm) values('" + regid + "','" + unm + "')";
                    dc.saveRecord(query1);

                }
                else if (drputype.SelectedItem.Text == "jobseeker")
                {
                    query1 = "insert into employee(empid,fnm) values('" + regid + "','" + unm + "')";
                    dc.saveRecord(query1);
                    query1 = "insert into biodata(empid) values('" + regid + "')";
                    dc.saveRecord(query1);
                }
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
            lblunmval.Text = "Please Enter Unique Username";
        }
    }

    protected void btncan_Click1(object sender, EventArgs e)
    {
        Response.Redirect("welcome.aspx");
    }

    //private int CheckUsername(String name)
    //{
    //    string query = "Select * from register where unm = '" + name + "'";
    //    DataRow rw = dc.getRow(query);
    //    if (rw["unm"].ToString() == "")
    //    {
    //        return 0;
    //    }
    //    else if (rw["unm"] == name)
    //    {
    //        return 1;
    //    }
    //    else 
    //    {
    //        return 1;
    //    }
    //}
}