<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Content1" Runat="Server">

            <div id="templatemo_middle_wrapper_outer">
<div id="templatemo_middle_wrapper_inner">
	<div id="templatemo_middle_top">
    
    	<div id="templatemo_content">
        	
            <div id="templatemo_slider">
                
                <div id="featuredslideshow">
                    <ul> 
                        <li><img width="600" height="300" alt="photo one" src="images/slideshow/06.jpg" /></li> 
                        <li><img width="600" height="300" alt="photo two" src="images/slideshow/08.jpg" /></li> 
                        <li><img width="600" height="300" alt="photo three" src="images/slideshow/09.jpg" /></li> 
                        <li><img width="600" height="300" alt="photo four" src="images/slideshow/10.jpg" /></li> 
                        <li><img width="600" height="300" alt="photo five" src="images/slideshow/11.jpg" /></li> 
                        <!-- eccetera --> 
                    </ul> 
                </div>
                <script type="text/javascript">
                    $("div#featuredslideshow").slideViewerPro({
                        thumbs: 4,
                        thumbsPercentReduction: 15,
                        galBorderWidth: 0,
                        galBorderColor: "#666",
                        thumbsTopMargin: 10,
                        thumbsRightMargin: 10,
                        thumbsBorderWidth: 1,
                        thumbsActiveBorderColor: "#000",
                        thumbsActiveBorderOpacity: 0.8,
                        thumbsBorderOpacity: 0,
                        buttonsTextColor: "#707070",
                        autoslide: true,
                        typo: true
                    });  	
                </script>
            </div>
            </div>
             <div id="templatmeo_sidebar">
        
            <div class="sidebar_box">
            	<h4>LATEST SOLVED SAMPLE PAPERS</h4>
                <div class="recent_comment_box">
                <p> <font size="4" style="color:ButtonShadow">GATE 2013 CSE</font></p>
                    <a href="http://www.gate.iitb.ac.in/gate2013/wp-content/uploads/2013/03/CS-A.pdf">SET A</a>
                    <a href="http://www.gate.iitb.ac.in/gate2013/wp-content/uploads/2013/03/CS-B.pdf">SET B</a>
                    <a href="http://www.gate.iitb.ac.in/gate2013/wp-content/uploads/2013/03/CS-C.pdf">SET C</a>
                    <a href="http://www.gate.iitb.ac.in/gate2013/wp-content/uploads/2013/03/CS-D.pdf">SET D</a>
                    <a href="http://www.gate.iitb.ac.in/gate2013/wp-content/uploads/2013/03/cs.pdf">Answer Key</a>
                    <p></p>
                </div>
            </div>
            </div>
            </div>
            
            </div>
            </div>
</asp:Content>

