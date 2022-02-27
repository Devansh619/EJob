using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient; 


public partial class company_history : System.Web.UI.Page
{
    DataClass dc = new DataClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        //if (!IsPostBack)
        //{
        //    rptdata();
        //}
    }
    //private void rptdata()
    //{
    //    rpthistory.DataSource = dc.getTable("select * from job");
    //    rpthistory.DataBind();
    //}
    //private void showdata(DataRow rw)
    //{
    //    tbxregdate.Text = rw["regdate"].ToString();
    //    tbxunm.Text = rw["unm"].ToString();
    //    tbxpwd.Text = rw["pwd"].ToString();
    //    tbxutype.Text = rw["utype"].ToString();
    //    tbxcontact.Text = rw["contact"].ToString();
    //    tbxemail.Text = rw["email"].ToString();
    //}
}