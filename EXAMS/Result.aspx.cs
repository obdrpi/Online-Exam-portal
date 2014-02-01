using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EXAMS_Result : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string name = (string)Session["tablename"];
        lbl_name.Text = name;
        int score=0,a,b;
        lbl_que.Text=Request.QueryString["a"];
        lbl_right.Text = Request.QueryString["b"];
        lbl_wrong.Text = Request.QueryString["c"];
        a = Convert.ToInt32(lbl_right.Text);
        b = Convert.ToInt32(lbl_wrong.Text);
        score = a - b;
        lbl_score.Text = score.ToString();



    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("marksheet.aspx");

    }
}