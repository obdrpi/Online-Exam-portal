using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EXAMS_Default : System.Web.UI.Page
{
    int i = 0;
    int j;
    DataRow dr;
    DataSet ds = new DataSet();
    DataTable dt;
   
    protected void Page_Load(object sender, EventArgs e)
    {


        if (!IsPostBack)
        {
            btn_1.BackColor = System.Drawing.Color.Gold;
            j = i + 1;
            btn_previous.Visible = false;
            lbl_no.Text = j.ToString();
            //DataRow dr;
            //DataSet ds = new DataSet();
            Random rand = new Random((int)DateTime.Now.Ticks);
            int numIterations = 0;
            numIterations = rand.Next(1, 3);
            //Response.Write(numIterations.ToString());
            string a = Session["value"].ToString();

            string f = a + numIterations.ToString();
            Session["tablename"] = a;
            ds = Showexam.showexam(f);
            dt = ds.Tables[0];
            DataColumn dc = new DataColumn("userans");
            dt.Columns.Add(dc);
            dc.DefaultValue = "";
            ViewState["ds"] = dt;
            ViewState["ind"] = i;
            lbl_no.Text = j.ToString();
            if (ds.Tables.Count > 0)
            {
                dr = ds.Tables[0].Rows[i];
                lbl_que.Text = dr["Question"].ToString();
                rdo_button1.Text = dr["CHOICE1"].ToString();
                rdo_button2.Text = dr["CHOICE2"].ToString();
                rdo_button3.Text = dr["CHOICE3"].ToString();
                rdo_button4.Text = dr["CHOICE4"].ToString();
            }

        }
       /* else {
            i = (int)ViewState["ind"];
            if (i == 1)
            {
                btn_2.BackColor = System.Drawing.Color.Yellow;
                btn_1.BackColor = System.Drawing.Color.White;
            }
            else if (i == 2)
            {
                btn_3.BackColor = System.Drawing.Color.Yellow;
                btn_2.BackColor = System.Drawing.Color.White;
            }
            else if (i == 3)
            {
                btn_5.BackColor = System.Drawing.Color.Yellow;
                btn_3.BackColor = System.Drawing.Color.White;
            }
            else if (i == 4)
            {
                btn_6.BackColor = System.Drawing.Color.Yellow;
                btn_5.BackColor = System.Drawing.Color.White;
            }
            else if (i == 5)
            {
                btn_7.BackColor = System.Drawing.Color.Yellow;
                btn_6.BackColor = System.Drawing.Color.White;
            }
            else if (i == 6)
            {
                btn_8.BackColor = System.Drawing.Color.Yellow;
            btn_7.BackColor = System.Drawing.Color.White;
            }
            else if (i == 7)
            {
                btn_9.BackColor = System.Drawing.Color.Yellow;
            btn_8.BackColor = System.Drawing.Color.White;
            }
            else if (i == 8){
                btn_10.BackColor = System.Drawing.Color.Yellow;
            btn_9.BackColor = System.Drawing.Color.White;
            }
            else if (i == 9)
            {
                btn_11.BackColor = System.Drawing.Color.Yellow;
                btn_10.BackColor = System.Drawing.Color.White;
            }
            
        }*/
        
    }
    public void choices(){
    
    }
    protected void btn_next_Click(object sender, EventArgs e)
    {
        clear();               
        i = (int)ViewState["ind"];
        i++;
        Response.Write(i);
        if (i == 1)
        {
            btn_previous.Visible = true;
        }
        if (i == 9)
        {
            btn_next.Visible = false;
        }

       
        j = i + 1;
        lbl_no.Text = j.ToString();
        ViewState["ind"] = i;
     //   Response.Write(j);
        
        
        dt = (DataTable)ViewState["ds"];
        radiotick(dt, i);
        dr = dt.Rows[i];
        lbl_que.Text = dr["Question"].ToString();
        rdo_button1.Text = dr["CHOICE1"].ToString();
        rdo_button2.Text = dr["CHOICE2"].ToString();
        rdo_button3.Text = dr["CHOICE3"].ToString();
        rdo_button4.Text = dr["CHOICE4"].ToString();

    }
    
           
    
    public void clear()
    {
        rdo_button1.Checked = false;
        rdo_button2.Checked = false;
        rdo_button3.Checked = false;
        rdo_button4.Checked = false;
        chk1.Checked = false;
    }
    protected void btn_previous_Click(object sender, EventArgs e)
    {
       
        clear();

        i = (int)ViewState["ind"];
        dt = (DataTable)ViewState["ds"];

        i--;
        Response.Write(i);
        j = i + 1;
        lbl_no.Text = j.ToString();
        if (i == 0)
        {
            btn_previous.Visible = false;
            
        }
        if (i == 8)
        {
            btn_next.Visible = true;
        }
            
        ViewState["ind"] = i;
        
        radiotick(dt, i);
        dr = dt.Rows[i];
   
        lbl_que.Text = dr["Question"].ToString();
        rdo_button1.Text = dr["CHOICE1"].ToString();
       
        rdo_button2.Text = dr["CHOICE2"].ToString();
        
        
        
        rdo_button3.Text = dr["CHOICE3"].ToString();
        rdo_button4.Text = dr["CHOICE4"].ToString();
    }
    
   
    protected void btn_first_Click2(object sender, EventArgs e)
    {
        clear();
        dt = (DataTable)ViewState["ds"];
        btn_previous.Visible = false;
        btn_next.Visible = true;
        i = 0;
        radiotick(dt, i);
        j = i + 1;
        lbl_no.Text = j.ToString();
        ViewState["ind"] = i;
        dr = dt.Rows[i];
        lbl_que.Text = dr["Question"].ToString();
        rdo_button1.Text = dr["CHOICE1"].ToString();
        rdo_button2.Text = dr["CHOICE2"].ToString();
        rdo_button3.Text = dr["CHOICE3"].ToString();
        rdo_button4.Text = dr["CHOICE4"].ToString();
    }
  
    protected void btn_last_Click2(object sender, EventArgs e)
    {
        clear();
        dt = (DataTable)ViewState["ds"];
        btn_next.Visible = false;
        btn_previous.Visible = true;
        i = 4;
        radiotick(dt, i);
        ViewState["ind"] = i;
        dr = dt.Rows[i];
        lbl_que.Text = dr["Question"].ToString();
        rdo_button1.Text = dr["CHOICE1"].ToString();
        rdo_button2.Text = dr["CHOICE2"].ToString();
        rdo_button3.Text = dr["CHOICE3"].ToString();
        rdo_button4.Text = dr["CHOICE4"].ToString();
    }
    protected void btn_end_Click(object sender, EventArgs e)
    {
        int right=0, wrong=0,notattempt=0,count=0,attempt=0;
        dt = (DataTable)ViewState["ds"];
        Session["marksheet"] = dt;
        for(i=0;i<5;i++)
        {
            dr=dt.Rows[i];
            if (dr["userans"].ToString() == "")
            {
                notattempt = notattempt + 1;
            }
            else
            {
                if (dr["userans"].ToString() == dr["Ans"].ToString())
                {
                    right = right + 1;
                    count = count + 1;
                }
                else
                {
                    wrong = wrong + 1;
                    count = count - 1;
                }
                attempt = attempt + 1;
            }
        }
        Response.Redirect("Result.aspx?a=" + attempt + "&b=" + right + "&c=" + wrong);

    }
    public void radiotick(DataTable dt,int i)
    {
        dr = dt.Rows[i];
        string a=dr["userans"].ToString();/*These choices have to be taken from the database because using label texts , the comparison were not valid*/
        string b = dr["CHOICE1"].ToString();/*It was taking  label texts of previous page*/
        string c = dr["CHOICE2"].ToString();
        string d = dr["CHOICE3"].ToString();
        string e = dr["CHOICE4"].ToString();
       // Response.Write(a);
       // Response.Write(rdo_button2.Text);
        if (b == a)
        {
            rdo_button1.Checked = true;
        }
        else if (c== a)
            
        {
            rdo_button2.Checked = true;
        }
        else if (d == a)
        {
            rdo_button3.Checked = true;
            }
        else if (e == a)
        {
            rdo_button4.Checked = true;
        }
        else { if(a=="")Response.Write("NONE"); }
    }
    protected void rdo_button1_CheckedChanged(object sender, EventArgs e)
    {
        string a = rdo_button1.Text;
        dt = (DataTable)ViewState["ds"];
        i=(int)ViewState["ind"];
        insert(dt, i, a);

    }
    public void insert(DataTable dt,int i,string ans)
    {
        dr = dt.Rows[i];
        dr["userans"] = ans;

    }
    public Button find(int i)
    {
        Button b=null;
        if (i == 0)
            b= btn_1;
        else if (i == 1)
            b= btn_2;
        else if (i == 2)
            b= btn_3;
        else if (i == 3)
            b= btn_5;
        else if (i == 4)
            b= btn_6;
        else if (i == 5)
            b= btn_7;
        else if (i == 6)
            b= btn_8;
        else if (i == 7)
            b= btn_9;
        else if (i == 8)
            b= btn_10;
        else if (i == 9)
            b= btn_11;
        
        return b;
    }
    protected void rdo_button2_CheckedChanged(object sender, EventArgs e)
    {
        string a = rdo_button2.Text;
        dt = (DataTable)ViewState["ds"];
        i = (int)ViewState["ind"];
        insert(dt, i, a);
    }
    protected void rdo_button3_CheckedChanged(object sender, EventArgs e)
    {
        string a = rdo_button3.Text;
        dt = (DataTable)ViewState["ds"];
        i = (int)ViewState["ind"];
        insert(dt, i, a);

    }
    protected void rdo_button4_CheckedChanged(object sender, EventArgs e)
    {
        string a = rdo_button4.Text;
        dt = (DataTable)ViewState["ds"];
        i = (int)ViewState["ind"];
        insert(dt, i, a);
    }
    protected void Timer1_Tick(object sender, EventArgs e)
    {
       
        
    }
    public void EndExamResult()
    {
        int right = 0, wrong = 0, notattempt = 0, count = 0, attempt = 0;
        dt = (DataTable)ViewState["ds"];
        Session["marksheet"] = dt;
        for (i = 0; i < 10; i++)
        {
            dr = dt.Rows[i];
            if (dr["userans"].ToString() == "")
            {
                notattempt = notattempt + 1;
            }
            else
            {
                if (dr["userans"].ToString() == dr["Ans"].ToString())
                {
                    right = right + 1;
                    count = count + 1;
                }
                else
                {
                    wrong = wrong + 1;
                    count = count - 1;
                }
                attempt = attempt + 1;
            }
        }
        Response.Redirect("Result.aspx?a=" + attempt + "&b=" + right + "&c=" + wrong);
    }
    protected void Timer1_Tick1(object sender, EventArgs e)
    {
        string h;
        Time t = new Time();
        h = t.count();
        lbl_time.Text = h;
        if (lbl_time.Text == "1:0")
        {
            Timer1.Enabled = false;
            Response.Write("<script>alert('You have only 1 Minute Left')</script>");
            Timer1.Enabled = true;
        }

        if (lbl_time.Text == "0:0")
        {
            EndExamResult();
        }
    }

    protected void chk1_CheckedChanged(object sender, EventArgs e)
    {
        i = (int)ViewState["ind"];
        Button b = (Button)find(i);
        
        if (chk1.Checked == true)
        {
            b.BackColor = System.Drawing.Color.Blue;
          //  chk1. = "Unbookmark";
        }
        else
        {
            b.BackColor = System.Drawing.Color.White;
            //b.Text = "Bookmark";

        }
    }
    protected void btn_1_Click(object sender, EventArgs e)
    {
        clear();
        dt = (DataTable)ViewState["ds"];
        btn_previous.Visible = false;
        btn_next.Visible = true;
        i = 0;
        radiotick(dt, i);
        j = i + 1;
        lbl_no.Text = j.ToString();
        ViewState["ind"] = i;
        dr = dt.Rows[i];
        lbl_que.Text = dr["Question"].ToString();
        rdo_button1.Text = dr["CHOICE1"].ToString();
        rdo_button2.Text = dr["CHOICE2"].ToString();
        rdo_button3.Text = dr["CHOICE3"].ToString();
        rdo_button4.Text = dr["CHOICE4"].ToString();
    }
    protected void btn_2_Click(object sender, EventArgs e)
    {
        clear();
        dt = (DataTable)ViewState["ds"];
        btn_previous.Visible = true;
        btn_next.Visible = true;
        i = 1;
        radiotick(dt, i);
        j = i + 1;
        lbl_no.Text = j.ToString();
        ViewState["ind"] = i;
        dr = dt.Rows[i];
        lbl_que.Text = dr["Question"].ToString();
        rdo_button1.Text = dr["CHOICE1"].ToString();
        rdo_button2.Text = dr["CHOICE2"].ToString();
        rdo_button3.Text = dr["CHOICE3"].ToString();
        rdo_button4.Text = dr["CHOICE4"].ToString();
    }
    protected void btn_3_Click(object sender, EventArgs e)
    {
        clear();
        dt = (DataTable)ViewState["ds"];
        btn_previous.Visible = true;
        btn_next.Visible = true;
        i = 2;
        radiotick(dt, i);
        j = i + 1;
        lbl_no.Text = j.ToString();
        ViewState["ind"] = i;
        dr = dt.Rows[i];
        lbl_que.Text = dr["Question"].ToString();
        rdo_button1.Text = dr["CHOICE1"].ToString();
        rdo_button2.Text = dr["CHOICE2"].ToString();
        rdo_button3.Text = dr["CHOICE3"].ToString();
        rdo_button4.Text = dr["CHOICE4"].ToString();
    }
    protected void btn_5_Click(object sender, EventArgs e)
    {
        clear();
        dt = (DataTable)ViewState["ds"];
        btn_previous.Visible = true;
        btn_next.Visible = true;
        i = 3;
        radiotick(dt, i);
        j = i + 1;
        lbl_no.Text = j.ToString();
        ViewState["ind"] = i;
        dr = dt.Rows[i];
        lbl_que.Text = dr["Question"].ToString();
        rdo_button1.Text = dr["CHOICE1"].ToString();
        rdo_button2.Text = dr["CHOICE2"].ToString();
        rdo_button3.Text = dr["CHOICE3"].ToString();
        rdo_button4.Text = dr["CHOICE4"].ToString();
    }
    protected void btn_6_Click(object sender, EventArgs e)
    {
        clear();
        dt = (DataTable)ViewState["ds"];
        btn_previous.Visible = true;
        btn_next.Visible = true;
        i = 4;
        radiotick(dt, i);
        j = i + 1;
        lbl_no.Text = j.ToString();
        ViewState["ind"] = i;
        dr = dt.Rows[i];
        lbl_que.Text = dr["Question"].ToString();
        rdo_button1.Text = dr["CHOICE1"].ToString();
        rdo_button2.Text = dr["CHOICE2"].ToString();
        rdo_button3.Text = dr["CHOICE3"].ToString();
        rdo_button4.Text = dr["CHOICE4"].ToString();
    }
    protected void btn_7_Click(object sender, EventArgs e)
    {
        clear();
        dt = (DataTable)ViewState["ds"];
        btn_previous.Visible = true;
        btn_next.Visible = true;
        i = 5;
        radiotick(dt, i);
        j = i + 1;
        lbl_no.Text = j.ToString();
        ViewState["ind"] = i;
        dr = dt.Rows[i];
        lbl_que.Text = dr["Question"].ToString();
        rdo_button1.Text = dr["CHOICE1"].ToString();
        rdo_button2.Text = dr["CHOICE2"].ToString();
        rdo_button3.Text = dr["CHOICE3"].ToString();
        rdo_button4.Text = dr["CHOICE4"].ToString();
    }
    protected void btn_8_Click(object sender, EventArgs e)
    {
        clear();
        dt = (DataTable)ViewState["ds"];
        btn_previous.Visible = true;
        btn_next.Visible = true;
        i = 6;
        radiotick(dt, i);
        j = i + 1;
        lbl_no.Text = j.ToString();
        ViewState["ind"] = i;
        dr = dt.Rows[i];
        lbl_que.Text = dr["Question"].ToString();
        rdo_button1.Text = dr["CHOICE1"].ToString();
        rdo_button2.Text = dr["CHOICE2"].ToString();
        rdo_button3.Text = dr["CHOICE3"].ToString();
        rdo_button4.Text = dr["CHOICE4"].ToString();
    }
    protected void btn_9_Click(object sender, EventArgs e)
    {
        clear();
        dt = (DataTable)ViewState["ds"];
        btn_previous.Visible = true;
        btn_next.Visible = true;
        i = 7;
        radiotick(dt, i);
        j = i + 1;
        lbl_no.Text = j.ToString();
        ViewState["ind"] = i;
        dr = dt.Rows[i];
        lbl_que.Text = dr["Question"].ToString();
        rdo_button1.Text = dr["CHOICE1"].ToString();
        rdo_button2.Text = dr["CHOICE2"].ToString();
        rdo_button3.Text = dr["CHOICE3"].ToString();
        rdo_button4.Text = dr["CHOICE4"].ToString();
    }
    protected void btn_10_Click(object sender, EventArgs e)
    {
        clear();
        dt = (DataTable)ViewState["ds"];
        btn_previous.Visible = true;
        btn_next.Visible = true;
        i = 8;
        radiotick(dt, i);
        j = i + 1;
        lbl_no.Text = j.ToString();
        ViewState["ind"] = i;
        dr = dt.Rows[i];
        lbl_que.Text = dr["Question"].ToString();
        rdo_button1.Text = dr["CHOICE1"].ToString();
        rdo_button2.Text = dr["CHOICE2"].ToString();
        rdo_button3.Text = dr["CHOICE3"].ToString();
        rdo_button4.Text = dr["CHOICE4"].ToString();
    }
    protected void btn_11_Click(object sender, EventArgs e)
    {
        clear();
        dt = (DataTable)ViewState["ds"];
        btn_previous.Visible = true;
        btn_next.Visible = true;
        i = 9;
        radiotick(dt, i);
        j = i + 1;
        lbl_no.Text = j.ToString();
        ViewState["ind"] = i;
        dr = dt.Rows[i];
        lbl_que.Text = dr["Question"].ToString();
        rdo_button1.Text = dr["CHOICE1"].ToString();
        rdo_button2.Text = dr["CHOICE2"].ToString();
        rdo_button3.Text = dr["CHOICE3"].ToString();
        rdo_button4.Text = dr["CHOICE4"].ToString();
    }
}