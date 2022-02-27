using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient; 


public partial class admin_home : System.Web.UI.Page
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
        rptregister.DataSource = dc.getTable("select * from register");
        rptregister.DataBind();
    }

    protected void rptregister_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        int id = Convert.ToInt32(e.CommandArgument);
        if (e.CommandName == "delete")
        {
            string query = "delete from register where regid = '" + id + "'";
            if (dc.saveRecord(query))
            {
                rptdata();
            }
        }
        if (e.CommandName == "update")
        {
            Session["id"] = id;
            Session["trans"] = "update";
            lblstatus.Text = "DATA UPDATED";
            string query = "select * from register where regid = '" + id + "'";
            DataRow rw = dc.getRow(query);
            showdata(rw);
            pnlshow.Visible = false;
            pnlform.Visible = true;
        }
    }
    private void showdata(DataRow rw)
    {
        tbxregdate.Text = rw["regdate"].ToString();
        tbxunm.Text = rw["unm"].ToString();
        tbxpwd.Text = rw["pwd"].ToString();
        tbxutype.Text = rw["utype"].ToString();
        tbxcontact.Text = rw["contact"].ToString();
        tbxemail.Text = rw["email"].ToString();
    }
    protected void btnsave_Click(object sender, EventArgs e)
    {
        String query = "";
        if (Session["trans"] == "update")
        {
            int id = Convert.ToInt32(Session["regid"]);
            string tbxregdate = DateTime.Today.ToString("MM/dd/yyyy");
            query="update register set regdate='" + tbxregdate + "', unm='" + tbxunm .Text + "',pwd='" + tbxpwd.Text + "',utype='" + tbxutype.Text + "',contact='" + tbxcontact.Text + "',email='" + tbxemail.Text + "' where regid='" + id + "'";

        }

        if (Session["trans"] == "new")
        {
            string tbxregdate = DateTime.Today.ToString("MM/dd/yyyy");
            query = "insert into register (regdate,unm,pwd,utype,contact,email) values('" + tbxregdate + "','" + tbxunm.Text + "','" + tbxpwd.Text + "','" + tbxutype.Text + "','" + tbxcontact.Text + "','" + tbxemail.Text + "',)";
        }

        if (dc.saveRecord(query))
        {
            
            rptdata();
            pnlform.Visible = false ;
            pnlshow.Visible = true;

     
        }
    }

    protected void imgbtnnew_Click(object sender, ImageClickEventArgs e)
    {
        Session["trans"] = "new";
        pnlform.Visible = true;
        pnlshow.Visible = false;
        tbxunm.Focus();

    }
}