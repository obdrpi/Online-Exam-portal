<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="regis.aspx.cs" Inherits="Default6" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Content1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
	
    
    	<div id="site_title" align=center>
           
            <h2><span>REGISTRATION</span>
</h2>
        </div> <!-- end of site_title -->
        
   


    <table style="width:100%;">
        <tr>
            <td style="width: 577px" align="right">
                <asp:Label ID="Label7" runat="server" Text="UserId"></asp:Label>
            </td>
            <td style="width: 324px" align="center">
                <asp:TextBox ID="txt_user" runat="server" Width="110px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txt_user" ErrorMessage="Enter a UserName"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 577px" align="right">
                <asp:Label ID="Label8" runat="server" Text="Password"></asp:Label>
            </td>
            <td style="width: 324px" align="center">
                <asp:TextBox ID="txt_pass1" runat="server" TextMode="Password" Width="110px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txt_pass1" ErrorMessage="Enter the password"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 577px" align="right">
                <asp:Label ID="Label9" runat="server" Text="Confirm Password"></asp:Label>
            </td>
            <td style="width: 324px" align="center">
                <asp:TextBox ID="txt_pass2" runat="server" TextMode="Password" Width="110px"></asp:TextBox>
            </td>
            <td>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txt_pass1" ControlToValidate="txt_pass2" 
                    ErrorMessage="Passwords do not match!"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 577px" align="right">
                <asp:Label ID="Label1" runat="server" Text="First Name"></asp:Label>
            </td>
            <td style="width: 324px" align="center">
                <asp:TextBox ID="txt_fname" runat="server" style="margin-left: 1px" 
                    Width="110px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="You are supposed to have a name!" 
                    ControlToValidate="txt_fname"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 577px" align="right">
                <asp:Label ID="Label2" runat="server" Text="Last Name"></asp:Label>
            </td>
            <td style="width: 324px" align="center">
                <asp:TextBox ID="txt_lname" runat="server" Width="110px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txt_lname" ErrorMessage="Sirname please"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 577px" align="right">
                <asp:Label ID="Label3" runat="server" Text="DOB"></asp:Label>
            </td>
            <td style="width: 324px" align="center">
                <asp:TextBox ID="txt_dob" runat="server" Width="113px" style="margin-left: 0px"></asp:TextBox>
                <asp:CalendarExtender ID="txt_dob_CalendarExtender" runat="server" 
                    Enabled="True" TargetControlID="txt_dob">
                </asp:CalendarExtender>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 577px" align="right">
                <asp:Label ID="Label4" runat="server" Text="Sex"></asp:Label>
            </td>
            <td style="width: 324px" align="center">
                <asp:RadioButton ID="rdo_male" runat="server" GroupName="sex" Text="Male" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="rdo_female" runat="server" GroupName="sex" 
                    Text="Female" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 577px" align="right">
                <asp:Label ID="Label5" runat="server" Text="Address"></asp:Label>
            </td>
            <td style="width: 324px" align="center">
                <asp:TextBox ID="txt_add" runat="server" TextMode="MultiLine" Width="132px" 
                    Height="45px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 577px" align="right">
                <asp:Label ID="Label6" runat="server" Text="Email ID"></asp:Label>
            </td>
            <td style="width: 324px" align="center">
                <asp:TextBox ID="txt_email" runat="server" Width="110px"></asp:TextBox>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="txt_email" ErrorMessage="Enter a valid Email ID,You  *******!" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 577px" align="right">
                <asp:Label ID="Label10" runat="server" Text="Contact No."></asp:Label>
            </td>
            <td style="width: 324px" align="center">
                <asp:TextBox ID="txt_contact" runat="server" Width="110px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 577px" align="right">
                <asp:Label ID="Label11" runat="server" Text="Security Question"></asp:Label>
            </td>
            <td style="width: 324px" align="center">
                <asp:DropDownList ID="dd" runat="server">
                    <asp:ListItem>Who is your favourite sportsman</asp:ListItem>
                    <asp:ListItem>What is your pet name</asp:ListItem>
                    <asp:ListItem>Which car you like the most</asp:ListItem>
                    <asp:ListItem>How many girls can you date in one day</asp:ListItem>
                    <asp:ListItem Selected="True">SELECT</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 577px" align="right">
                <asp:Label ID="Label12" runat="server" Text="Choose your answer"></asp:Label>
            </td>
            <td style="width: 324px" align="center">
                <asp:TextBox ID="txt_answer" runat="server" ToolTip="Choose a secure one!"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 577px" align="right">
                &nbsp;</td>
            <td style="width: 324px">
                <asp:Button ID="Button1" runat="server" Text="Register" 
                    onclick="Button1_Click" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>

</asp:Content>

