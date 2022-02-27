using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class company_post : System.Web.UI.Page
{
    DataClass dc = new DataClass(); 
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string cmpid = Session["regid"].ToString();
            string query = "select * from job where cmpid='" + cmpid + "'";
                        
        }
    }    

    protected void btnpost_Click(object sender, EventArgs e)
    {
        int jbid = dc.primarykey("select max (jbid) from job");
        int cmpid = Convert.ToInt32(Session["regid"]);
        string query = "";
        if (filedoc.PostedFile.FileName != "")
        {
            query = "insert into job (jbnm,cmpid,requiredskills,jbtype,duration,details,amt,doc) values ('" + tbxjob.Text + "','" + cmpid + "','" + drpdwnskills.SelectedItem.Text + "','" + drpdwnjbtype.SelectedItem.Text + "','" + tbxdur.Text + "','" + tbxdetails.Text + "','" + tbxamt.Text + "','" + filedoc.PostedFile.FileName + "')";
        }
        else 
        {
            query = "insert into job (jbnm,cmpid,requiredskills,jbtype,duration,details,amt) values ('" + tbxjob.Text + "','" + cmpid + "','" + drpdwnskills.SelectedItem.Text + "','" + drpdwnjbtype.SelectedItem.Text + "','" + tbxdur.Text + "','" + tbxdetails.Text + "','" + tbxamt.Text + "')";
        }
        if (dc.saveRecord(query))
        {
            if (filedoc.PostedFile.FileName != "")
            {
                string path = Server.MapPath("~/company/postdocs/");
                filedoc.SaveAs(path + filedoc.PostedFile.FileName);
            }
            Session["jobid"] = jbid;
            Session["cmpid"] = cmpid;
        }        
        else
        {
            lblmsg.Text = "Not Posted";
        }
        Response.Redirect("chome.aspx");
    }

    protected void tbncancel_Click(object sender, EventArgs e)
    {

        Response.Redirect("#");
    }
}