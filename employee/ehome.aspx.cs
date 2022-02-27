using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class employee_ehome : System.Web.UI.Page
{
    DataClass dc = new DataClass();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            rptjob.DataSource = dc.getTable("select * from vwjob");
            rptjob.DataBind();
            //rptdata();
        }
    }

    //private void rptdata()
    //{
    //    String chk = "";
    //    for (int i = 0; i < CheckBoxList1.Items.Count; i++)
    //    {
    //        if (CheckBoxList1.Items[i].Selected)
    //        {
    //            if (chk == "")
    //            {
    //                chk = "'" + CheckBoxList1.Items[i].Text + "'";
    //            }
    //            else
    //            {
    //                chk += "," + "'" + CheckBoxList1.Items[i].Text + "'";
    //            }
                               
    //        }
    //        rptjob.DataSource = dc.getTable("select * from vwjob where jbtype in (" + chk +") ");
    //        rptjob.DataBind();
    //    }
    //}
    protected void rptjob_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        int jobid = Convert.ToInt32(e.CommandArgument);
        Session["jobid"] = jobid;
        Response.Redirect("jobdetail.aspx");
    }
    protected void btnsearch_Click(object sender, EventArgs e)
    {
        String chk = "";
        for (int i = 0; i < CheckBoxList1.Items.Count; i++)
        {
            if (CheckBoxList1.Items[i].Selected)
            {
                if (chk == "")
                {
                    chk = "'" + CheckBoxList1.Items[i].Text + "'";
                }
                else
                {
                    chk += "," + "'" + CheckBoxList1.Items[i].Text + "'";
                }
            }
            rptjob.DataSource = dc.getTable("select * from vwjob where requiredskills in (" + chk + ") ");
            rptjob.DataBind();
        }
    }
}