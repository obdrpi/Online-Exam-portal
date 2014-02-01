using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

/// <summary>
/// Summary description for UpdateExam
/// </summary>
public class UpdateExam
{
    
    
	public UpdateExam()
	{
		//
		// TODO: Add constructor logic here
		//
	} public static SqlConnection open()
    {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = WebConfigurationManager.ConnectionStrings["finalconnectivity"].ConnectionString;
          con.Open();
          return con;    
    }
   
    public static void update(string tb,string id,string a,string b,string c,string d,string e,string f,ref int count)
        {

            count = count + 1;
        SqlConnection con;
        con = open();
        SqlCommand cmd = new SqlCommand("update ["+tb+"] set Question=@a,CHOICE1=@b,CHOICE2=@c,CHOICE3=@d,CHOICE4=@e,Ans=@f where id="+id,con);
        string s = cmd.CommandText;
       
        cmd.Parameters.Add(new SqlParameter("@a",a));
        cmd.Parameters.Add(new SqlParameter("@b",b));
        cmd.Parameters.Add(new SqlParameter("@c",c));
        cmd.Parameters.Add(new SqlParameter("@d",d));
        cmd.Parameters.Add(new SqlParameter("@e",e));
        cmd.Parameters.Add(new SqlParameter("@f",f));
        cmd.ExecuteNonQuery();
        con.Close();
       
    }
}