using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient; 

public partial class employee_skills : System.Web.UI.Page
{
    DataClass dc = new DataClass();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void tbnadd_Click(object sender, EventArgs e)
    {
        int skillid = dc.primarykey("select max(skillid) from skills");
        string empid = Session["regid"].ToString();
        string query = "insert into skills (skillid,skills,empid) values ('" + skillid + "','" + drpdwnskills.SelectedItem.Text + "','" + empid + "')";
        dc.saveRecord(query);
    }
    protected void btndone_Click(object sender, EventArgs e)
    {
        Response.Redirect("ehome.aspx");
    }
}