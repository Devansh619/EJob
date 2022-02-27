using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class admin_msg : System.Web.UI.Page
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
        rptmsg.DataSource = dc.getTable("select * from message");
        rptmsg.DataBind();
    }


    protected void rptcity_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        int id = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "delete")
        {
            string query = "delete from message where msgid='" + id + "'";
            if (dc.saveRecord(query))
            {
                rptdata();
            }
        }
        if (e.CommandName == "update")
        {
            Session["msgid"] = id;
            Session["trans"] = "update";
            lblstatus.Text = "RECORD UPDATED";
            string query = "select * from message where msgid='" + id + "'";
            DataRow rw = dc.getRow(query);
            showdata(rw);
            pnlshow.Visible = false;
            pnlform.Visible = true;
        }
    }

    private void showdata(DataRow rw)
    {
        tbxmsg.Text = rw["msg"].ToString();
        tbxcontact.Text = rw["mobile"].ToString();
    }
    
    protected void btnsave_Click(object sender, EventArgs e)
    {
        string query = "";
        string msgdate = DateTime.Today.ToString("MM/dd/yyyy");
        if (Session["trans"] == "update")
        {
            int id = Convert.ToInt32(Session["msgid"]);
            query = "update message set msg='" + tbxmsg.Text + "', mobile='" + tbxcontact.Text + "' where msgid='" + id + "'";
        }
        if (Session["trans"] == "new")
        {
            string tbxmsgdate = DateTime.Today.ToString("MM/dd/yyyy");
            query = "insert into message(msgdate,msg,mobile) values('" + msgdate + "','" + tbxmsg.Text + "','" + tbxcontact.Text + "')";
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
        pnlform.Visible = true;
        lblstatus.Text = "RECORD INSERTED";
        tbxmsg.Focus();
    }
    
    protected void btncan_Click(object sender, EventArgs e)
    {
        Session["trans"] = "";
        Session["msgid"] = "";
        lblstatus.Text = "";

        pnlform.Visible = false;
        pnlshow.Visible = true;
        clearall();
    }
    
    private void clearall()
    {

        tbxmsg.Text = "";
        tbxcontact.Text = "";
        
    }
}