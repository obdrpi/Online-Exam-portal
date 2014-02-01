<%@ Page Title="" Language="C#" MasterPageFile="~/EXAMS/MasterPage.master" AutoEventWireup="true" CodeFile="Result1.aspx.cs" Inherits="EXAMS_Result1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Content1" Runat="Server">
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
<table style="width: 100%; margin-bottom: 0px;">
        <tr>
            <td align="center" class="style7" style="width: 693px; height: 39px">
                <asp:Label ID="Label6" runat="server" Text="EXAM NAME"></asp:Label>
            </td>
            <td class="style8" style="height: 39px">
                <asp:Label ID="lbl_name" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" class="style7" style="width: 693px; height: 35px">
                <br />
                <asp:Label ID="Label3" runat="server" ForeColor="#FF9966" 
                    Text="TOTAL NUMBER OF QUESTIONS ATTEMPTED OUT OF 10"></asp:Label>
                <br />
            </td>
            <td class="style8" style="height: 35px">
                <asp:Label ID="lbl_que" runat="server" Font-Bold="True" ForeColor="#FFFFCC" 
                    Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" class="style7" style="width: 693px; height: 35px">
                <asp:Label ID="Label2" runat="server" ForeColor="#66FF33" 
                    Text="TOTAL NUMBER OF RIGHT ANSWERS"></asp:Label>
            </td>
            <td class="style8" style="height: 35px">
                <asp:Label ID="lbl_right" runat="server" Font-Bold="True" ForeColor="#FFFFCC" 
                    Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" class="style8" style="width: 693px; height: 35px">
                <asp:Label ID="Label4" runat="server" ForeColor="Red" 
                    Text="TOTAL NUMBER OF WRONG ANSWERS"></asp:Label>
            </td>
            <td class="style8" style="height: 35px">
                <asp:Label ID="lbl_wrong" runat="server" Font-Bold="True" ForeColor="#FFFFCC" 
                    Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" class="style9" style="width: 693px; height: 35px">
                <asp:Label ID="Label5" runat="server" ForeColor="#99FF99" Text="TOTAL SCORE"></asp:Label>
            </td>
            <td class="style9" style="height: 35px">
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
</asp:Content>

