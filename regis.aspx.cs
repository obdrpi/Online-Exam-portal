using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default6 : System.Web.UI.Page
{
    string a, b, c, d,g, h, i, j, k,l,m;
    DateTime z;
    protected void Page_Load(object sender, EventArgs e)
    {
         a = txt_user.Text;
         b = txt_pass1.Text;
         c = txt_fname.Text;
         d = txt_lname.Text;
         g = txt_dob.Text;
        
        if (rdo_male.Checked)
        {
            h = rdo_male.Text;
        }
        else
            h = rdo_female.Text;
         i = txt_add.Text;
         j = txt_email.Text;
         k = txt_contact.Text;
         l = dd.SelectedValue;
         m = txt_answer.Text;

        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        z = Convert.ToDateTime(g);
        Class2 obj=new Class2 (a,b,c,d,z,h,i,j,k,l,m);
        Class2.reg(obj);
        Response.Redirect("Login.aspx");
    }
}