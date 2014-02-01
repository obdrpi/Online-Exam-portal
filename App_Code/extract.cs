using System;
using System.Data;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for extract
/// </summary>
public class extract
{
	public extract()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public static SqlConnection open()
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = WebConfigurationManager.ConnectionStrings["finalconnectivity"].ConnectionString;
        con.Open();
        return con;
    }
    public static SqlDataReader extract1(string tb,string id)
    {
        SqlConnection con = open();
        SqlCommand cmd = new SqlCommand("select * from ["+tb+"] where id="+id,con);
        SqlDataReader sdr = cmd.ExecuteReader();
        return sdr;
    }
}
