using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient; 

public partial class admin_State : System.Web.UI.Page
{
    DataClass dc = new DataClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            rptdata();
        }
        pnlform.Visible = false;
        pnlshow.Visible = true;
    }

    private void rptdata()
    {
        rptstate.DataSource = dc.getTable("select * from state");
        rptstate.DataBind();
    }
        
    protected void rptstate_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        int id = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "delete")
        {
            string query = "delete from state where stateid='" + id + "'";
            if (dc.saveRecord(query))
            {
                rptdata();
            }
        }
        if (e.CommandName == "update")
        {
            Session["stateid"] = id;
            Session["trans"] = "update";            
            string query = "select * from state where stateid='" + id + "'";
            DataRow rw = dc.getRow(query);
            showdata(rw);
            pnlshow.Visible = false;
            pnlform.Visible = true;
        }
    }
    private void showdata(DataRow rw)
    {
        tbxstatenm.Text = rw["statenm"].ToString();
        tbxshortnm.Text = rw["shortnm"].ToString();
        
    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        string query = "";
        
        if (Session["trans"] == "update")
        {
            int id = Convert.ToInt32(Session["stateid"]);
            query = "update state set statenm='" + tbxstatenm.Text + "', shortnm='" + tbxshortnm.Text + "' where stateid='" + id + "'";
        }
        if (Session["trans"] == "new")
        {
            
            query = "insert into state (statenm,shortnm) values('" + tbxstatenm.Text + "','" + tbxshortnm.Text + "')";
        }
        if (dc.saveRecord(query))
        {
            rptdata();
            pnlform.Visible = false;
            pnlshow.Visible = true;
            clearall();
        }

    }

    protected void btncan_Click(object sender, EventArgs e)
    {
        Session["trans"] = "";
        Session["stateid"] = "";
        lblstatus.Text = "";

        pnlform.Visible = false;
        pnlshow.Visible = true;
        clearall();
    }

    private void clearall()
    {

        tbxstatenm.Text = "";
        tbxshortnm.Text = "";
        
    }
    protected void imgbtnnew_Click(object sender, ImageClickEventArgs e)
    {
        Session["trans"] = "new";
        pnlshow.Visible = false;
        pnlform.Visible = true;
        lblstatus.Text = "RECORD INSERTED";
        tbxstatenm.Focus();
    }
}