using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.SqlServer.Management.Common;
using Microsoft.SqlServer.Management.Smo;
using Microsoft.SqlServer;
using System.Web.Configuration;

/// <summary>
/// Summary description for Dynamictable
/// </summary>
public class Dynamictable
{
    static ServerConnection scon;
    static Server ser;
    static Database db;
    static Column col1,col2,col3,col4,col5,col6,col7;
    static Microsoft.SqlServer.Management.Smo.Table tb;
	public Dynamictable()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public static void con()
    {
        scon = new ServerConnection();
        scon.ConnectionString =WebConfigurationManager.ConnectionStrings["finalconnectivity"].ConnectionString;
        scon.Connect();
        if (scon.SqlConnectionObject.State == ConnectionState.Open)
        {

            ser = new Server(scon);
        }
    }
    public static void database() {
        con();
        db=ser.Databases["final"];
    }
    public static void create_table(string a,string name, out string mess,ref int count) {
        database();
        count = 0;
        if (a == "NEW EXAM")
        {
            tb = new Table(db, name, "dbo");
        }
        else 
        {
            tb = new Table(db, a + name, "dbo");

        }
        col7 = new Column(tb,"id",DataType.VarChar(5));
        tb.Columns.Add(col7);
        col1=new Column(tb,"Question",DataType.VarChar(200));
        tb.Columns.Add(col1);
        col2=new Column(tb,"CHOICE1",DataType.VarChar(200));
        tb.Columns.Add(col2);
        col3=new Column(tb,"CHOICE2",DataType.VarChar(200));
        tb.Columns.Add(col3);
                col4=new Column(tb,"CHOICE3",DataType.VarChar(200));
        tb.Columns.Add(col4);

        col5=new Column(tb,"CHOICE4",DataType.VarChar(200));
        tb.Columns.Add(col5);
        col6 = new Column(tb,"Ans", DataType.VarChar(200));
        tb.Columns.Add(col6);
        tb.Create();
        db.Tables.Refresh();
        mess = "Table Create Successfully";
    }
}