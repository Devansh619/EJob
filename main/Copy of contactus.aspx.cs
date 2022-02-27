using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class main_contactus : System.Web.UI.Page
{
    DataClass dc = new DataClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {
            tbxunm.Text = Session["username"].ToString();
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

    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        if (Session["regid"] == "")
        {
            lblmsg.Text = "Please Login First";
        }
        else
        {
            int qid = dc.primarykey("select max(qid) from query");
            int regid = Convert.ToInt32(Session["regid"]);
            string qdate = DateTime.Today.ToString("MM/dd/yyyy");
            string query = "insert into query(qid,qdate,querydetail,regid,answer) values('" + qid + "','" + qdate + "','" + tbxquery.Text + "','" + regid + "','none')";

            if (dc.saveRecord(query))
            {
                lblmsg.Text = "Submit Successfully";
            }
            else
            {
                lblmsg.Text = "Not Submitted";
            }

        }
    }
}