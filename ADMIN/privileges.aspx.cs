using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.SqlServer.Management.Common;
using Microsoft.SqlServer.Management.Smo;
using Microsoft.SqlServer;

public partial class ADMIN_Default : System.Web.UI.Page
{
    ServerConnection scon;
    Server ser;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    public void con() {
        scon = new ServerConnection();
        scon.ConnectionString = "";
        scon.Connect();
        if (scon.SqlConnectionObject.State == ConnectionState.Open)
        {
           
            ser = new Server(scon);
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
}