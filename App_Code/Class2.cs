using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

/// <summary>
/// Summary description for Class2
/// </summary>
public class Class2
{
    string a, b, c, d, f, g, h, i,j,k;
    DateTime e;
	public Class2()
	{
	}

    public  Class2(string a,string b,string c,string d,DateTime e,string f,string g,string h,string i,string j,string k)
    {
        this.a = a;
        this.b=b;
        this.c = c;
        this.d = d;
        this.e = e;
        this.f=f;
        this.g = g;
        this.h = h;
        this.i = i;
        this.j = j;
        this.k = k;
    }
    public static SqlConnection open() {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = WebConfigurationManager.ConnectionStrings["finalconnectivity"].ConnectionString;
        con.Open();
        return con;
    }
    public static void reg(Class2 obj)
    {
        SqlConnection con1 = open();
        SqlCommand cmd = new SqlCommand("insert regis values(@a,@b,@c,@d,@e,@f,@g,@h,@i,@j,@k)",con1);
        cmd.Parameters.Add(new SqlParameter("@a",obj.a));
        cmd.Parameters.Add(new SqlParameter("@b",obj.b));
        cmd.Parameters.Add(new SqlParameter("@c", obj.c));
        cmd.Parameters.Add(new SqlParameter("@d", obj.d));
        cmd.Parameters.Add(new SqlParameter("@e", obj.e));
        cmd.Parameters.Add(new SqlParameter("@f", obj.f));
        cmd.Parameters.Add(new SqlParameter("@g", obj.g));
        cmd.Parameters.Add(new SqlParameter("@h", obj.h));
        cmd.Parameters.Add(new SqlParameter("@i", obj.i));
        cmd.Parameters.Add(new SqlParameter("@j", obj.j));
        cmd.Parameters.Add(new SqlParameter("@k", obj.k));
        cmd.ExecuteNonQuery();
        insertlogin(obj,con1);
        con1.Close();
    }
    public static void insertlogin(Class2 obj,SqlConnection con)
    {
        SqlCommand cmd2 = new SqlCommand("insert LOGIN values(@a,@b)",con);
        cmd2.Parameters.Add(new SqlParameter("@a",obj.a));
        cmd2.Parameters.Add(new SqlParameter("@b",obj.b));
        cmd2.ExecuteNonQuery();               
            



    }
}