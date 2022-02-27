using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class employee_resume : System.Web.UI.Page
{
    DataClass dc = new DataClass(); 
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string empid = Session["regid"].ToString();
            string query = "select * from biodata where empid='" + empid + "'";
            DataRow rw = dc.getRow(query);
            if (rw != null)
            {
                showdata(rw);
            }
        }
    }
    
    private void showdata(DataRow rw)
    {
        tbxnm.Text = rw["fnm"].ToString();
        drpdwnqualification.SelectedItem.Text = rw["qualification"].ToString();
        tbxexp.Text = rw["exp"].ToString();
        tbxskills.Text = rw["skills"].ToString();
        tbxspeciality.Text = rw["speciality"].ToString();
        //drpswnskills.SelectedItem.Text = rw["skills"].ToString();
        tbxlstcmp.Text = rw["lastcompany"].ToString();
        tbxhobby.Text  = rw["hobby"].ToString();
        tbxdetails.Text = rw["details"].ToString();
    }

    protected void btnsub_Click(object sender, EventArgs e)
    {
        string empid = Session["regid"].ToString();
        string query = "";
        query = "update biodata set fnm='" + tbxnm.Text + "',qualification='" + drpdwnqualification.SelectedItem.Text + "', exp='" + tbxexp.Text + "', skills='" + tbxskills.Text + "',speciality='" + tbxspeciality.Text + "',lastcompany='" + tbxlstcmp.Text + "',hobby='" + tbxhobby.Text + "',details='" + tbxdetails.Text + "' where empid='" + empid + "' ";
        dc.saveRecord(query);
        Response.Redirect("ehome.aspx");
    }

    protected void btncan_Click(object sender, EventArgs e)
    {
        tbxnm.Text = "";
        drpdwnqualification.SelectedItem.Text = "";
        tbxexp.Text = "";
        tbxskills.Text = "";
        tbxspeciality.Text = "";
        //drpswnskills.SelectedItem.Text = "";
        tbxlstcmp.Text = "";
        tbxhobby.Text = "";
        tbxdetails.Text = "";
        Response.Redirect("resume.aspx");
    }
}