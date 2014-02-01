using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADMIN_addexam : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        int count = 0;
        string mess;
        string a;
        if (rdo1.Checked)
        {
            a = rdo1.Text;
        }
        else if (rdo2.Checked)
        {
            a = "ASP NET";
        }
        else if (rdo3.Checked)
        {
            a = "CSHARP";
        }
        else a = rdo4.Text;
       
        Dynamictable.create_table(a.Trim(),txt_name.Text.Trim(), out mess,ref count);

       // Label2.Text = mess;
        if(rdo4.Checked)
        Response.Redirect("addquestion.aspx?examname="+txt_name.Text);
        else
            Response.Redirect("addquestion.aspx?examname=" +a+txt_name.Text);
    }
}