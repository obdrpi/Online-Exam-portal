using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ADMIN_addquestion : System.Web.UI.Page
{
    string id,name;
    protected void Page_Load(object sender, EventArgs e)
    {
        String q = Request.QueryString["examname"];
        name = Request.QueryString["table"];
        id = Request.QueryString["id"];
         
         
        if (!IsPostBack)
        {
            SqlDataReader sdr;
            lbl_exam.Text = q;
            /* txt_question.Text = "";
             txt_1.Text = "";
             txt_2.Text = "";
             txt_3.Text = "";
             txt_4.Text = "";
             */
            sdr = extract.extract1(name, id);
            if (sdr.HasRows)
            {
                sdr.Read();
                txt_question.Text = sdr.GetString(1);
                txt_1.Text = sdr.GetString(2);
                txt_2.Text = sdr.GetString(3);
                txt_3.Text = sdr.GetString(4);
                txt_4.Text = sdr.GetString(5);
                dd1.SelectedValue = sdr.GetString(6);
            }

        }
    }
   
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Write("<script>alert('Your exam has been added successfully')</script>");
        System.Threading.Thread.Sleep(5000);
        Response.Redirect("privileges.aspx");
    }
   
    protected void txt_delete_Click(object sender, EventArgs e)
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
        int count=0;
        DeleteExam.delete(name,id,ref count);
        txt_question.Text = "";
        txt_1.Text = "";
        txt_2.Text = "";
        txt_3.Text = "";
        txt_4.Text = "";
        lbl_number.Text = count.ToString();

    }


    protected void txt_update_Click2(object sender, EventArgs e)
    {
        string a, b, c, d, f, g, h;
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
        int count = 0;
        UpdateExam.update(name, id, a, b, c, d, f, h, ref count);
        txt_question.Text = "";
        txt_1.Text = "";
        txt_2.Text = "";
        txt_3.Text = "";
        txt_4.Text = "";
        lbl_number.Text = count.ToString();
        Response.Redirect("Showexam.aspx");
    }
}