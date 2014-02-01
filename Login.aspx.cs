using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_login_Click(object sender, EventArgs e)
    {
        string a = txt_user.Text.Trim();
        string b = txt_pass.Text.Trim();
        int c = Class1.login(a, b);
        if (c > 0)
        {
            Response.Write(a);
            if (a == "admin@1994")
            {

                System.Web.Security.FormsAuthentication.RedirectFromLoginPage(a, false);
                //Response.Write("HI");
                Response.Redirect("~/ADMIN/privileges.aspx");
            }
            else {
                if(Session["value"] != null)
                System.Web.Security.FormsAuthentication.RedirectFromLoginPage(a, false);
                //Response.Redirect("home.aspx");                
            }
           // System.Web.Security.FormsAuthentication.RedirectFromLoginPage(a, false);
        }
        else
            Response.Write("<script>alert('INVALID USER')</script>");
    }
}