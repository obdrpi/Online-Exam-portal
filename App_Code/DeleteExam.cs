using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

/// <summary>
/// Summary description for DeleteExam
/// </summary>
public class DeleteExam
{
	public DeleteExam()
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
    public static void delete(string tb,string id,ref int count)
    {
    
        count = count + 1;
        SqlConnection con = open();
        
        SqlCommand cmd=new SqlCommand("delete  from ["+tb+"] where id="+id,con);
    cmd.ExecuteNonQuery();
    con.Close();

    }
}