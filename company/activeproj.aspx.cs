using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class company_activeproj : System.Web.UI.Page
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
        int cmpid = Convert.ToInt32(Session["regid"]);
        rptactive.DataSource =dc.getTable("select * from vwapplyjob where selection='no' and cmpid='"+ cmpid +"'");
        rptactive.DataBind();
    }
    protected void rptactive_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        
        if (e.CommandName == "job")
        {
            int jappid = Convert.ToInt32(e.CommandArgument);
            string query = "update applyjob set selection='yes' where jappid='" + jappid + "'";
            if (dc.saveRecord(query))
            {
                lblmsg.Text = "Select Employee for Job...";
                rptdata();
            }
        }

        if (e.CommandName == "emp")
        {

           int empid = Convert.ToInt32(e.CommandArgument);
           DataRow rw=dc.getRow("select * from biodata where empid='" +  empid + "'");
           DataTable tb = dc.getTable("select * from skills");
           MultiView1.ActiveViewIndex = 1;
           lblempid.Text=rw["empid"].ToString();
           lblname.Text=rw["fnm"].ToString();
           lblquali.Text = rw["qualification"].ToString();
           lblexp.Text = rw["exp"].ToString();
           lblspeciality.Text = rw["speciality"].ToString();
           lblskills.Text = rw["skills"].ToString();
           lblhobby.Text = rw["hobby"].ToString();
           lbldetails.Text = rw["details"].ToString();
        }
    }
    protected void btnclose_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
}