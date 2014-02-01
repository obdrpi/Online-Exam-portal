using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADMIN_addquestion : System.Web.UI.Page
{
    int count;
    protected void Page_Load(object sender, EventArgs e)
    {
        String q = Request.QueryString["examname"];
        lbl_exam.Text = q;
       /* txt_question.Text = "";
        txt_1.Text = "";
        txt_2.Text = "";
        txt_3.Text = "";
        txt_4.Text = "";
        */
    }
    protected void txt_add_Click(object sender, EventArgs e)
    {
        
        string a, b, c, d, f,g,h;
        a = txt_question.Text;
        b = txt_1.Text;
        c = txt_2.Text;
        d = txt_3.Text;
        f = txt_4.Text;
        g = dd1.SelectedValue;
        if (g == "CHOICE A")
        {
            h = b;
        }
        else if (g == "CHOICE B")
        {
            h = c;
        }
        else if (g == "CHOICE C")
        {
            h = d;
        }
        else h = f;
        Insertexam obj =new Insertexam(a, b, c, d, f, h,lbl_exam.Text);
        Insertexam.question(obj,out count);
        txt_question.Text = "";
        txt_1.Text = "";
        txt_2.Text = "";
        txt_3.Text = "";
        txt_4.Text = "";
        lbl_number.Text = count.ToString();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        count = 0;
        Response.Write("<script>alert('Your exam has been added successfully')</script>");
      // System.Threading.Thread.Sleep(5000);
        //Response.Redirect("privileges.aspx");
    }
    
}