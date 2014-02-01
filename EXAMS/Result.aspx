<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Result.aspx.cs" Inherits="EXAMS_Result" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Neo Blog Theme - Free HTML CSS Template</title>
<meta name="keywords" content="Neo Blog Theme, Free HTML CSS Template, 2 column, header artwork" />
<meta name="description" content="Neo Blog Theme - Free HTML CSS Template brought to you by templatemo.com" />
<link href="css/templatemo_style.css" rel="stylesheet" type="text/css" />

<link href="css/svwp_style.css" rel="stylesheet" type="text/css" />
<script src="js/jquery-1.3.2.min.js" type="text/javascript"></script>
<script src="js/jquery.slideViewerPro.1.0.js" type="text/javascript"></script>

<!-- Optional plugins  -->
<script src="js/jquery.timers.js" type="text/javascript"></script>


    
    
    <style type="text/css">
        .style2
        {
            height: 65px;
        }
        .style7
        {
            width: 745px;
            height: 53px;
        }
        .style8
        {
            height: 53px;
        }
        .style9
        {
            height: 54px;
        }
    </style>


    
    
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
        <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">





<div id="templatemo_top_wrapper">
	<div id="templatemo_top">
    	<ul id="social_box">
            <li><a href="#"><img src="images/facebook.png" alt="facebook" /></a></li>
            <li><a href="#"><img src="images/twitter.png" alt="twitter" /></a></li>
            <li><a href="#"><img src="images/linkedin.png" alt="linkin" /></a></li>
            <li><a href="#"><img src="images/technorati.png" alt="technorati" /></a></li>
            <li><a href="#"><img src="images/myspace.png" alt="myspace" /></a></li>                
        </ul>
    </div>
</div>

<div id="templatemo_header_wrapper">
	<div id="templatemo_header">
    
    	<div id="site_title">
            <h1>ONLINE EXAM PORTAL</h1>
            <h1>&nbsp;</h1>
            <h1><a href="index.html"><span>"WINNER NEVER STOPS TRYING"</span></a></h1>
        </div> <!-- end of site_title -->
        
    </div>
</div> <!-- end of templatemo_header -->

<div id="templatemo_menu_wrapper">
	<div id="templatemo_menu">
        <ul>
            
            <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                    Text="RESULT"></asp:Label>
            </li>
        </ul>    	
    </div> <!-- end of templatemo_menu -->
</div>

        
    </div>
    <div>
    
        <br />
        <br />
    
    </div>
    <table style="width: 100%; margin-bottom: 0px;">
        <tr>
            <td align="center" class="style7">
                <asp:Label ID="Label6" runat="server" Text="EXAM NAME"></asp:Label>
            </td>
            <td class="style8">
                <asp:Label ID="lbl_name" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" class="style7">
                <br />
                <asp:Label ID="Label3" runat="server" ForeColor="#FF9966" 
                    Text="TOTAL NUMBER OF QUESTIONS ATTEMPTED OUT OF 10"></asp:Label>
                <br />
            </td>
            <td class="style8">
                <asp:Label ID="lbl_que" runat="server" Font-Bold="True" ForeColor="#FFFFCC" 
                    Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" class="style7">
                <asp:Label ID="Label2" runat="server" ForeColor="#66FF33" 
                    Text="TOTAL NUMBER OF RIGHT ANSWERS"></asp:Label>
            </td>
            <td class="style8">
                <asp:Label ID="lbl_right" runat="server" Font-Bold="True" ForeColor="#FFFFCC" 
                    Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" class="style8">
                <asp:Label ID="Label4" runat="server" ForeColor="Red" 
                    Text="TOTAL NUMBER OF WRONG ANSWERS"></asp:Label>
            </td>
            <td class="style8">
                <asp:Label ID="lbl_wrong" runat="server" Font-Bold="True" ForeColor="#FFFFCC" 
                    Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" class="style9">
                <asp:Label ID="Label5" runat="server" ForeColor="#99FF99" Text="TOTAL SCORE"></asp:Label>
            </td>
            <td class="style9">
                <asp:Label ID="lbl_score" runat="server" Font-Bold="True" ForeColor="#FFFFCC" 
                    Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" class="style2" colspan="2">
                <asp:Button ID="Button1" runat="server" BackColor="#FF6600" 
                    BorderColor="#FF6600" BorderStyle="Solid" Font-Bold="True" Font-Size="Large" 
                    ForeColor="White" onclick="Button1_Click" Text="See Your Marksheet" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>

