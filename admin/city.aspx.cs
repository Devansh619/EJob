using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient; 

public partial class admin_city : System.Web.UI.Page
{
    DataClass dc = new DataClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            rptdata();
            drpstate.DataSource = dc.getTable("select stateid,statenm from state");
            drpstate.DataMember = "state";
            drpstate.DataTextField = "statenm";
            drpstate.DataValueField = "stateid";
            drpstate.DataBind();
            pnlshow.Visible = true;
            pnlform.Visible = false;
        }
    }

    private void rptdata()
    {
        rptcity.DataSource = dc.getTable("select * from citystate");
        rptcity.DataBind();
    }


    protected void rptcity_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        int id = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "delete")
        {
            string query = "delete from city where cityid='" + id +"'";
            if (dc.saveRecord(query))
            {
                rptdata();
            }
        }
        if (e.CommandName == "update")
        {
            Session["cityid"]=id;
            Session["trans"] = "update";
            string query = "select * from city where cityid='" + id + "'";
            DataRow rw = dc.getRow(query);
            showdata(rw);
            pnlshow.Visible = false;
            pnlform.Visible = true;
        }
    }

    private void showdata(DataRow rw)
    { 
        tbxcitynm.Text = rw["citynm"].ToString();
        tbxshortnm.Text = rw["shortnm"].ToString();
        tbxpin.Text = rw["pincode"].ToString();
        drpstate.SelectedValue = rw["stateid"].ToString();
    }


    protected void btnsave_Click(object sender, EventArgs e)
    {
        string query = "";
        
        if (Session["trans"] == "update")
        {
            int id = Convert.ToInt32(Session["cityid"]);
            query = "update city set citynm='" + tbxcitynm.Text + "', shortnm='" + tbxshortnm.Text + "',pincode='" + tbxpin.Text + "',stateid='" + drpstate.SelectedValue + "' where cityid='" + id + "'";
        }
        if (Session["trans"] == "new")
        {
           
            query = "insert into city (citynm,shortnm,pincode,stateid) values('" + tbxcitynm.Text + "','" + tbxshortnm.Text + "','" + tbxpin.Text + "','" + drpstate.SelectedValue + "')";
        }
        if (dc.saveRecord(query))
        {
            rptdata();
            pnlform.Visible = false;
            pnlshow.Visible = true;
            clearall();
        }

    }
    protected void imgbtnnew_Click(object sender, ImageClickEventArgs e)
    {
        Session["trans"] = "new";
        pnlshow.Visible = false;
        pnlform.Visible = true ;
        tbxcitynm.Focus();
    }

    protected void btncan_Click(object sender, EventArgs e)
    {
        Session["trans"] = "";
        Session["cityid"] = "";
        //lblstatus.Text = "";

        pnlform.Visible = false;
        pnlshow.Visible = true;
        clearall();
    }
    private void clearall()
    {

        tbxcitynm.Text = "";
        tbxshortnm.Text = "";
        tbxpin.Text = "";
        
    }
}