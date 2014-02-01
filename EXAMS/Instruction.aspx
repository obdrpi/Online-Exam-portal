<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Instruction.aspx.cs" Inherits="Default4" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Neo Blog Theme - About Us</title>
<meta name="keywords" content="Neo Blog Theme, About Us, Free HTML CSS Template, 2 column, header artwork" />
<meta name="description" content="Neo Blog Theme (About Us)- Free HTML CSS Template brought to you by templatemo.com" />
<!--<link href="css/templatemo_style.css" rel="stylesheet" type="text/css" />

<link href="css/svwp_style.css" rel="stylesheet" type="text/css" />
<script src="js/jquery-1.3.2.min.js" type="text/javascript"></script>
<script src="js/jquery.slideViewerPro.1.0.js" type="text/javascript"></script>


<script src="js/jquery.timers.js" type="text/javascript"></script>-->
<style>
h6{color:red;}
    body {
	margin: 0px;
	padding: 0px;
	color: #5f5555;
	
	font-size: 13px;
	line-height: 1.5em; 
	background-color: #1c1816;
	
}
    .style12
    {
        width: 242px;
        height: 6px;
    }
    .style16
    {
        height: 6px;
    }
    .style17
    {
        width: 242px;
        height: 2px;
    }
    .style18
    {
        height: 2px;
    }
</style>

</head>


<body>
    <p>
        &nbsp;</p>
&nbsp;<form id="form1" runat="server">
    
                <h2 align="center" >
                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                        ForeColor="#FFFF99" Text="INSTRUCTIONS"></asp:Label>
                <table style="width: 100%; height: 150px; margin-top: 70px;">
                    <tr>
                        <td class="style17" align="right">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <img alt="image" src="images/purple.png" /> </td>
                        <td align="left" class="style18">
                            <asp:Label ID="Label1" runat="server" Text="Time Duration is 1 Hour." 
                                ForeColor="#EAADEA"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" class="style12">
                            <img alt="image" src="images/purple.png" /></td>
                        <td align="left" class="style16">
                            <asp:Label ID="Label5" runat="server" ForeColor="#EAADEA" 
                                Text="Total Questions are 50. "></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" class="style12">
                            <img alt="image" src="images/purple.png" /></td>
                        <td align="left" class="style16">
                            <asp:Label ID="Label6" runat="server" ForeColor="#EAADEA" 
                                
                                Text="Negative Marking is present and half marks will be deducted for each wrong answer.Questions not attempted will result in zero mark"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" class="style12">
                            <img alt="image" src="images/purple.png" /></td>
                        <td align="left" class="style16">
                            <asp:Label ID="Label4" runat="server" 
                                Text="Click next to move to the next question and previous button to go to the previous question." 
                                ForeColor="#EAADEA"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" class="style12">
                            <img alt="image" src="images/purple.png" /></td>
                        <td align="left" class="style16">
                            <asp:Label ID="Label8" runat="server" ForeColor="#EAADEA" 
                                Text="Click stop to stop the exam."></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" class="style12">
                            &nbsp;</td>
                        <td align="left" class="style16">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="right" class="style12">
                            &nbsp;</td>
                        <td align="left" class="style16">
                            <asp:Button ID="Button1" runat="server" BackColor="#0033CC" 
                                BorderColor="#000066" Height="35px" onclick="Button1_Click" 
                                style="margin-bottom: 33px" Text="Proceed Exam" Width="134px" 
                                PostBackUrl="~/EXAMS/IMPORTANT.aspx" />
                        </td>
                    </tr>
                    </table>
                </h2>          
                
                
         
                
               
              <!--<div class="cleaner_h20"></div>-->
            
    
   
    </form>
</body>
</html>
