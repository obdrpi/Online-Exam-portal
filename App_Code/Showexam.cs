using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Web.Configuration;

/// <summary>
/// Summary description for Showexam
/// </summary>
public class Showexam
{
    public Showexam()
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

    public static DataSet showexam(string a) {
        /*SqlConnection con1 = open();
        DataSet ds = new DataSet();
        SqlDataAdapter sd = new SqlDataAdapter("select * from  ", con1);
        
        sd.Fill(ds);
        
        DataTable dt = ds.Tables["GATE"];
        */
        SqlConnection con1 = open();


        SqlCommand cmd = new SqlCommand("select * from ["+a+"]", con1);
        SqlDataAdapter sd = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sd.Fill(ds);
        return ds;
        

    }
}