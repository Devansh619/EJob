using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class employee_selection : System.Web.UI.Page
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
        if (Session["regid"] == null)
        {
            Session["regid"] = 4;
        }
        int empid = Convert.ToInt32(Session["regid"]);
        rptactive.DataSource =dc.getTable("select * from vwapplyjob where empid='"+ empid +"' and selection='yes'");
        rptactive.DataBind();
    }
   
}