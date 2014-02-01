<%@ Page Title="" Language="C#" MasterPageFile="~/EXAMS/MasterPage.master" AutoEventWireup="true" CodeFile="IMPORTANT.aspx.cs" Inherits="EXAMS_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Content1" Runat="Server">
    <div id="templatemo_menu_wrapper">
	<div id="templatemo_menu">
        <ul>
            
            <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                    Text="WELCOME"></asp:Label>
            &nbsp;&nbsp;
                <asp:LoginName ID="LoginName1" runat="server" />
            </li>
        </ul>    	
    </div> <!-- end of templatemo_menu -->
</div>

<asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
    <p>
        <br />
        <table style="width:100%;">
            <tr>
                <td align="left" colspan="2" style="height: 30px">
                    TOTAL QUESTIONS : 10</td>
                <td style="width: 283px; height: 30px">
                    &nbsp;</td>
                <td align="left" colspan="5" rowspan="2">
                <asp:UpdatePanel runat="server">
                <ContentTemplate>
                    <asp:Label ID="Label3" runat="server" Text="TIME LEFT : "></asp:Label>
                    
                    
                    <asp:Label ID="lbl_time" runat="server" Text="Label"></asp:Label>                          
                                      
                    
                    <br />
                    <asp:Timer ID="Timer1" runat="server" Interval="1000" ontick="Timer1_Tick1" >
                    </asp:Timer>
                   </ContentTemplate>                   
                </asp:UpdatePanel>
                </td>
            </tr>
            <tr>
                <td align="right" style="height: 30px">
                    <asp:Label ID="Label2" runat="server" Text="Q"></asp:Label>
                    &nbsp;<asp:Label ID="lbl_no" runat="server" Text="Label"></asp:Label>
                    )&nbsp;
                </td>
                <td align="center" style="height: 30px">
                    <asp:Label ID="lbl_que" runat="server" Text=" of   10"></asp:Label>
                </td>
                <td style="width: 283px; height: 30px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" colspan="2" rowspan="2">
                    <asp:RadioButton ID="rdo_button1" runat="server" GroupName="choice" 
                        oncheckedchanged="rdo_button1_CheckedChanged" />
                </td>
                <td style="width: 283px;" align="center" rowspan="2">
                    <asp:RadioButton ID="rdo_button2" runat="server" GroupName="choice" 
                        oncheckedchanged="rdo_button2_CheckedChanged" />
                </td>
                <td align="center" style="width: 72px" rowspan="4">
                </td>
                <td align="center" style="width: 42px; height: 39px;">
                    <asp:Button ID="btn_1" runat="server" Text="1" Width="34px" 
                        onclick="btn_1_Click" />
                </td>
                <td align="center" style="width: 43px; height: 39px;">
                    <asp:Button ID="btn_2" runat="server" Text="2" Width="34px" 
                        onclick="btn_2_Click" />
                </td>
                <td align="center" style="width: 45px; height: 39px;">
                    <asp:Button ID="btn_3" runat="server" Text="3" Width="34px" 
                        onclick="btn_3_Click" />
                </td>
                <td align="center" rowspan="4">
                    <asp:CheckBox ID="chk1" runat="server" Font-Size="Large" Height="20px" 
                        oncheckedchanged="chk1_CheckedChanged" Text="BOOKMARK" />
                </td>
            </tr>
            <tr>
                <td align="center" style="width: 42px; height: 39px;">
                    <asp:Button ID="btn_5" runat="server" Text="4" Width="34px" 
                        onclick="btn_5_Click" />
                </td>
                <td align="center" style="width: 43px; height: 39px;">
                    <asp:Button ID="btn_6" runat="server" Text="5" Width="34px" 
                        onclick="btn_6_Click" />
                </td>
                <td align="center" style="width: 45px; height: 39px;">
                    <asp:Button ID="btn_7" runat="server" Text="6" Width="34px" 
                        onclick="btn_7_Click" />
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2" rowspan="2">
                    <asp:RadioButton ID="rdo_button3" runat="server" GroupName="choice" 
                        oncheckedchanged="rdo_button3_CheckedChanged" />
                </td>
                <td align="center" style="width: 283px;" rowspan="2">
                    <asp:RadioButton ID="rdo_button4" runat="server" GroupName="choice" 
                        oncheckedchanged="rdo_button4_CheckedChanged" />
                </td>
                <td align="center" style="width: 42px; height: 37px;">
                    <asp:Button ID="btn_8" runat="server" Text="7" Width="34px" 
                        onclick="btn_8_Click" style="height: 26px" />
                </td>
                <td align="center" style="width: 43px">
                    <asp:Button ID="btn_9" runat="server" Text="8" Width="34px" 
                        onclick="btn_9_Click" />
                </td>
                <td align="center" style="width: 45px">
                    <asp:Button ID="btn_10" runat="server" Text="9" Width="34px" 
                        onclick="btn_10_Click" />
                </td>
            </tr>
            <tr>
                <td align="center" style="width: 42px; height: 36px;">
                    <asp:Button ID="btn_11" runat="server" Text="10" Width="34px" 
                        onclick="btn_11_Click" />
                </td>
                <td align="center" style="width: 43px">
                    &nbsp;</td>
                <td align="center" style="width: 45px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" colspan="2" style="height: 24px">
                    </td>
                <td colspan="6" style="height: 24px">
                    </td>
            </tr>
            <tr>
                <td align="right" style="width: 295px">
                    <asp:Button ID="btn_first" runat="server" BackColor="#9933FF" 
                        BorderColor="#9933FF" BorderStyle="Solid" Font-Bold="True" Font-Size="Medium" 
                        ForeColor="White" onclick="btn_first_Click2" Text="FIRST" Width="100px" />
                </td>
                <td align="center" style="width: 255px">
                    <asp:Button ID="btn_previous" runat="server" BackColor="#9933FF" 
                        BorderColor="#9933FF" BorderStyle="Solid" Font-Bold="True" Font-Size="Medium" 
                        ForeColor="White" onclick="btn_previous_Click" Text="PREVIOUS" Width="100px" />
                </td>
                <td align="left" style="width: 283px">
                    <asp:Button ID="btn_next" runat="server" BackColor="#9933FF" 
                        BorderColor="#9933FF" BorderStyle="Solid" Font-Bold="True" Font-Size="Medium" 
                        ForeColor="White" onclick="btn_next_Click" Text="NEXT" Width="101px" />
                </td>
                <td align="left" colspan="5">
                    <asp:Button ID="btn_last" runat="server" BackColor="#9933FF" 
                        BorderColor="#9933FF" BorderStyle="Solid" Font-Bold="True" Font-Size="Medium" 
                        ForeColor="White" onclick="btn_last_Click2" Text="LAST" Width="101px" />
                </td>
            </tr>
            <tr>
                <td align="center" style="width: 295px; height: 95px;">
                </td>
                <td align="center" style="height: 95px;" colspan="2">
                    <asp:Button ID="btn_end" runat="server" BackColor="#9933FF" 
                        BorderColor="#9933FF" BorderStyle="Solid" Font-Bold="True" Font-Size="Medium" 
                        ForeColor="White" onclick="btn_end_Click" Text="END EXAM" Width="100px" />
                </td>
                <td align="center" style="height: 95px" colspan="5">
                    &nbsp;</td>
            </tr>
        </table>
    </p>
</asp:Content>

