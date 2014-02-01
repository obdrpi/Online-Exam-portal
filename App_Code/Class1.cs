using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;
/// <summary>
/// Summary description for Class1
/// </summary>
public class Class1
{
	public Class1()
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
    public static int login(string c,string d)
    {
        int b=0;   
        SqlConnection con1=open();
        
          
        SqlCommand cmd = new SqlCommand("select * from  LOGIN where Loginid=@use and Password=@pass",con1);
        cmd.Parameters.Add(new SqlParameter("@use", c));
        cmd.Parameters.Add(new SqlParameter("@pass", d));
        SqlDataReader sdr=cmd.ExecuteReader();
       /* DataSet ds = new DataSet();
        SqlDataAdapter sd = new SqlDataAdapter("select * from  LOGIN where Loginid=@c and Password=d",con1);
        sd.SelectCommand.Parameters.Add();                                              
        sd.Fill(ds);
        DataTable dt=ds.Tables["LOGIN"];*/
        if (sdr.HasRows)
        {
            
            while (sdr.Read())
            {
                b++;
            }
        }

        return b;
    }

}