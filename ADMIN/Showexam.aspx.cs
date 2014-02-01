using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADMIN_Showexam : System.Web.UI.Page
{
    static DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
       // DataSet ds = new DataSet();
        string a = dd1.SelectedValue;
        ds=Showexam.showexam(a);
        if (ds.Tables.Count > 0)
        {
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
        }
        else
        {
            GridView1.DataSource = null;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
       GridViewRow row= GridView1.SelectedRow;
       string id = row.Cells[1].Text.ToString();
       
        Response.Redirect("UpdateQuestion.aspx?table="+dd1.SelectedItem.Text + "&id=" + id);   
    }
}