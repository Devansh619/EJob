using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class employee_jobdetail : System.Web.UI.Page
{
    DataClass dc = new DataClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            rptdata();
        }
    }

    private void rptdata()
    {
        int jbid = Convert.ToInt32(Session ["jobid"]);
        string query = "select * from vwjob where jbid='" + jbid + "'";
        DataRow rw = dc.getRow(query);
        showdata(rw);
    }

    private void showdata(DataRow rw)
    {
        lbljobname.Text =rw["jbnm"].ToString ();
        lblreqskills.Text = rw["requiredskills"].ToString();
        lbljobtype.Text = rw["jbtype"].ToString();
        lblcmpname.Text = rw["cnm"].ToString();
        lblemail.Text = rw["email"].ToString();
        lblduration.Text = rw["duration"].ToString();
        lbldoc.Text = rw["doc"].ToString();
        lblamt.Text = rw["amt"].ToString();
        Session["cmpid"] = rw["cmpid"].ToString(); 

    }

  /*  protected void rptjob_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        int jbid = Convert.ToInt32(Session["jbid"]);
        int cmpid = Convert.ToInt32(Session["cmpid"]);
        int empid = Convert.ToInt32(Session["regid"]);
        string jappdate = DateTime.Today.ToString("MM/dd/yyyy");
        if (e.CommandName == "insert")
        {
            string query = "insert into applyjob (jappdate,jbid,cmpid,empid) values ('" + jappdate + "','" + jbid + "','" + cmpid + "','" + empid + "')";
            if (dc.saveRecord(query))
            {
                lblmsg.Text = "Inserted";
            }
            else
            {
                lblmsg.Text = "Not Inserted";
            }

        }
    } */
   
    protected void btnapply_Click(object sender, EventArgs e)
    {
        string appdate = DateTime.Today.ToString("MM/dd/yyyy"); 
        int jbid = Convert.ToInt32(Session["jobid"]);
        int cmpid = Convert.ToInt32(Session["cmpid"]);
        int empid = Convert.ToInt32(Session["regid"]);

        string query = "insert into applyjob(jappdate,jbid,cmpid,empid,selection) values('" + appdate + "','" + jbid + "','" + cmpid + "','" + empid + "','no')";
        if (dc.saveRecord(query))
        {
            lblmsg.Text = "Job Apply Successfully....";
        }
        else
        {
            lblmsg.Text = "Job not Applied....";
        }

    }
}