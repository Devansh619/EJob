using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class employee_profile : System.Web.UI.Page
{
    DataClass dc = new DataClass(); 
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            drpdwncity.DataSource = dc.getTable("select cityid,citynm from city");
            drpdwncity.DataMember = "city";
            drpdwncity.DataTextField = "citynm";
            drpdwncity.DataValueField = "cityid";
            drpdwncity.DataBind();
      
            string empid = Session["regid"].ToString();
            string query = "select * from employee where empid='" + empid + "'";
            DataRow rw = dc.getRow(query);
            showdata(rw);
        }
    }

    private void showdata(DataRow rw)
    {
        tbxfnm.Text = rw["fnm"].ToString();
        tbxmnm.Text = rw["mnm"].ToString();
        tbxlnm.Text = rw["lnm"].ToString();
        tbxadd.Text = rw["address"].ToString();
        drpdwncity.SelectedValue = rw["cityid"].ToString();       
        tbxcon.Text = rw["contact"].ToString();
        radiolstgen.SelectedValue = rw["gender"].ToString();
        tbxdob.Text = rw["dob"].ToString();
        
    }

    protected void btnsub_Click(object sender, EventArgs e)
    {
        string empid = Session["regid"].ToString();
        string query = "";
        if (fileuppropic.PostedFile.FileName != "")
        {
            query = "update employee set fnm='" + tbxfnm.Text + "', mnm='" + tbxmnm.Text + "',lnm='" + tbxlnm.Text + "',address='" + tbxadd.Text + "',cityid='" + drpdwncity.SelectedValue + "',contact='" + tbxcon.Text + "',gender='" + radiolstgen.SelectedValue + "',photo='" + fileuppropic.PostedFile.FileName + "',dob='" + tbxdob.Text + "' where empid='" + empid + "' ";
        }
        else
        {
            query = "update employee set fnm='" + tbxfnm.Text + "', mnm='" + tbxmnm.Text + "',lnm='" + tbxlnm.Text + "',address='" + tbxadd.Text + "',cityid='" + drpdwncity.SelectedValue + "',contact='" + tbxcon.Text + "',gender='" + radiolstgen.SelectedValue + "',dob='" + tbxdob.Text + "' where empid='" + empid + "' ";
        }
        if (dc.saveRecord(query))
        {
            if (fileuppropic.PostedFile.FileName != "")
            {
                string path = Server.MapPath("empimages/");
                fileuppropic.SaveAs(path + fileuppropic.PostedFile.FileName);
            }
        }
        Response.Redirect("ehome.aspx");
    }

    protected void btncan_Click(object sender, EventArgs e)
    {
        tbxfnm.Text = "";
        tbxmnm.Text = "";
        tbxlnm.Text = "";
        tbxadd.Text = "";
        drpdwncity.SelectedValue = "";
        tbxcon.Text = "";
        radiolstgen.SelectedValue = "";
        tbxdob.Text = "";
        Response.Redirect("profile.aspx");
    }
}