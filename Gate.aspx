<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" %>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        Session["value"] = "GATE CSE";
    }
</script>
<asp:Content ID="Content2" ContentPlaceHolderID="Content1" Runat="Server">

       
    <div id="templatemo_middle_wrapper_outer">
<div id="templatemo_middle_wrapper_inner">
	
	<div id="templatemo_middle">
    
    	<div id="templatemo_content">
        	
            <div class="content_box">
                
               &nbsp;&nbsp;
                
               <font size="8" style="color:HighlightText">GATE 2014 - CSE<br />
                <br />
                </font>
                &nbsp;<div id="gallery">
                        <ul>
                            <li>
                                <div class="left">
                                    <a href="images/gate.jpg" class="pirobox" title="Project 1"><img src="images/gate.jpg"  width="100" height="100" /></a>
                                </div>
                                <div class="right" >
                                    <font size="4"><p>GATE is conducted jointly by the Indian Institute of Science (<a href="http://www.iisc.ernet.in/">IIS</a>) and seven IIT's (<a href="http://www.iitb.ac.in/">IIT Bombay</a>, <a href="http://www.iitd.ac.in/">IIT Delhi</a>, <a href="http://www.iitg.ac.in/">IIT Guwahati</a>, <a href="http://www.iitk.ac.in/">IIT Kanpur</a>, <a href="http://www.iitkgp.ac.in/">IIT Kharagpur</a>, <a href="http://www.iitm.ac.in/">IIT Madras</a> and <a href="http://www.iitr.ac.in/">IIT Roorkee</a> )</p></font>
                                    <div class="btn_more"><a href="http://gate.iitkgp.ac.in/gate2014/">Visit site <span>&raquo;</span></a> </div>
                                </div>
                            </li>
                         </ul>
                         <ul>
                             <li>
                             <font size="5" style="color:Orange">Our portal ONLINE EXAM provides you the latest and trickiest of the GATE sample papers.See Yourself!  </font>
                             </li>
                             <li >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                 <asp:Button ID="btn_exam" runat="server" Text="START ONLINE EXAM" 
                                     align="center" BackColor="#FF6600" BorderColor="#FF6600" Font-Bold="False" 
                                     ForeColor="White" PostBackUrl="~/EXAMS/Instruction.aspx"/>
                             </li>
                        </ul>
                    
                    </div>
                    </div>
                    </div>
                    </div>
                    
                     <div id="templatmeo_sidebar">
                      <!--<div class="sidebar_box">-->
            <h4>SYLLABUS</h4>
           
            <ul class="tmo_list">
			<li>Digital Logic</li>
<li>Computer Organization and Architecture</li>
<li>Programming and Data Structures</li>
<li>Algorithms</li>
<li>Theory of Computation</li>
<li>Compiler Design</li>
<li>Operating System</li>
<li>Databases</li>
<li>Information Systems and Software Engineering</li>
<li>Computer Networks</li>
<li>Web technologies</li>
</ul>          
            
        </div>
        </div>
        </div>
        
        
          
  

</asp:Content>

