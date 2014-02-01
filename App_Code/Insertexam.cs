using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;

/// <summary>
/// Summary description for Class3
/// </summary>
public class Insertexam
{
    public static int count;

    string A { get; set; }
    string C { get; set; }
    string B { get; set; }
    string D { get; set; }
    string E { get; set; }
    string F { get; set; }
    string TB { get; set; }
    public Insertexam(string a, string b, string c, string d, string e, string f, string tb)
	{
        
        
        A = a;
        B = b;
        C = c;
        D = d;
        E = e;
        F = f;
        TB = tb;
	}
    public static SqlConnection open()
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = WebConfigurationManager.ConnectionStrings["finalconnectivity"].ConnectionString;
          con.Open();
          return con;    
    }
    public static void question(Insertexam obj,out int cou) 
    {
        count = count + 1;
        cou = count;
        SqlConnection con;
        con = open();
        SqlCommand cmd = new SqlCommand("insert ["+obj.TB+"] values(@v,@a,@b,@c,@d,@e,@f)", con);
        string s = cmd.CommandText;
       cmd.Parameters.Add(new SqlParameter("@v",cou));
        cmd.Parameters.Add(new SqlParameter("@a", obj.A));
        cmd.Parameters.Add(new SqlParameter("@b", obj.B));
        cmd.Parameters.Add(new SqlParameter("@c", obj.C));
        cmd.Parameters.Add(new SqlParameter("@d", obj.D));
        cmd.Parameters.Add(new SqlParameter("@e", obj.E));
        cmd.Parameters.Add(new SqlParameter("@f", obj.F));
        cmd.ExecuteNonQuery();
        con.Close();

    }
}