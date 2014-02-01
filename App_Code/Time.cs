using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Time
/// </summary>
public class Time
{
    static int min = 1;
    static int sec = 1;
	public Time()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    public string count()
    {
        sec = sec - 1;
        string t = min + ":" + sec;
        if(sec==0)
        {
            sec=60;
            min = min - 1;
        }
        
        
        return t;

    }
}