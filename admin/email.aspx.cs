using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient; 

public partial class admin_email : System.Web.UI.Page
{
    DataClass dc = new DataClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            rptdata();
        }
        pnlshow.Visible = true;
        pnlform.Visible = false;
    }

    private void rptdata()
    {
        rptemail.DataSource = dc.getTable("select * from email");
        rptemail.DataBind();
    }

    protected void rptemail_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        int id = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "delete")
        {
            string query = "delete from email where eid='" + id + "'";
            if (dc.saveRecord(query))
            {
                rptdata();
            }
        }
        if (e.CommandName == "update")
        {
            Session["eid"] = id;
            Session["trans"] = "update";
            lblstatus.Text = "RECORD UPDATED";
            string query = "select * from email where eid='" + id + "'";
            DataRow rw = dc.getRow(query);
            showdata(rw);
            pnlshow.Visible = false;
            pnlform.Visible = true;
        }
    }

    private void showdata(DataRow rw)
    {
        tbxefrom.Text = rw["efrom"].ToString();
        tbxeto.Text = rw["eto"].ToString();
        tbxsubj.Text = rw["subject"].ToString();
        tbxdescript.Text = rw["description"].ToString();
    }
    
    protected void btnsave_Click(object sender, EventArgs e)
    {
        string query = "";
        string edate = DateTime.Today.ToString("MM/dd/yyyy");
        if (Session["trans"] == "update")
        {
            int id = Convert.ToInt32(Session["eid"]);
            query = "update email set efrom='" + tbxefrom.Text + "', eto='" + tbxeto.Text + "',subject='" + tbxsubj.Text + "',description='" + tbxdescript .Text + "' where eid='" + id + "'";
        }

        if (Session["trans"] == "new")
        {
            query = "insert into email (edate,efrom,eto,subject,description) values('" + edate + "','" + tbxefrom.Text + "','" + tbxeto.Text + "','" + tbxsubj.Text + "','" + tbxdescript.Text + "')";
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
        tbxefrom.Focus();
    }

    protected void btncan_Click(object sender, EventArgs e)
    {
        Session["trans"] = "";
        Session["eid"] = "";
        lblstatus.Text = "";

        pnlform.Visible = false;
        pnlshow.Visible = true;
        clearall();
    }

    private void clearall()
    {

        tbxefrom.Text = "";
        tbxeto.Text = "";
        tbxsubj.Text = "";
        tbxdescript.Text = "";

    }
}