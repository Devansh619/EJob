using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class company_profile : System.Web.UI.Page
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
                  
            string cmpid = Session["regid"].ToString();
            string query = "select * from company where cmpid='" + cmpid + "'";
            DataRow rw = dc.getRow(query);
            if (rw != null)
            {
                showdata(rw);
            }
        }
    }

    private void showdata(DataRow rw)
    {
        tbxcmpnm.Text = rw["cnm"].ToString();
        tbxadd.Text = rw["address"].ToString();
        drpdwncity.SelectedValue = rw["cityid"].ToString();
        tbxcon.Text = rw["contact"].ToString();
        tbxhead.Text = rw["chead"].ToString();
        drpdwncmptype.SelectedValue=rw["ctype"].ToString();
        tbxfax.Text = rw["fax"].ToString();
        tbxemail.Text = rw["email"].ToString();
        imglogo.ImageUrl = "companylogo/" + rw["logo"].ToString();
    }

    protected void btnsub_Click(object sender, EventArgs e)
    {
        string cmpid = Session["regid"].ToString();
        string query = "";
        if (fileuplogo.HasFile)
        {
            query = "update company set cnm='" + tbxcmpnm.Text + "', address='" + tbxadd.Text + "', cityid='" + drpdwncity.SelectedValue + "',contact='" + tbxcon.Text + "',logo='" + fileuplogo.PostedFile.FileName + "',chead='" + tbxhead.Text + "',ctype='" + drpdwncmptype.SelectedValue + "',fax='" + tbxfax.Text + "',email='" + tbxemail.Text + "' where cmpid='" + cmpid + "' ";
        }
        else
        {
            query = "update company set cnm='" + tbxcmpnm.Text + "', address='" + tbxadd.Text + "', cityid='" + drpdwncity.SelectedValue + "',contact='" + tbxcon.Text + "',chead='" + tbxhead.Text + "',ctype='" + drpdwncmptype.SelectedValue + "',fax='" + tbxfax.Text + "',email='" + tbxemail.Text + "' where cmpid='" + cmpid + "' ";
        }
        if (dc.saveRecord(query))
        {
            if (fileuplogo.HasFile)
            {
                string path = Server.MapPath("~/company/companylogo/");
                fileuplogo.SaveAs(path + fileuplogo.PostedFile.FileName);
            }
        }
        Response.Redirect("chome.aspx");
    }

    protected void btncan_Click(object sender, EventArgs e)
    {
        Response.Redirect("chome.aspx");
    }
}