<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/MasterPage.master" AutoEventWireup="true" CodeFile="addexam.aspx.cs" Inherits="ADMIN_addexam" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Content1" Runat="Server">
    

    <table style="width:100%; height: 186px; margin-top: 70px;" >
    <tr>
    <td colspan=2 align="center">
    
        &nbsp;</td>
    </tr>
        <tr>
            <td align="center" style="width: 611px; height: 64px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="rdo1" runat="server" Text="GATE CSE" GroupName="exam" />
            </td>
            <td align="center" style="height: 64px">
                &nbsp;
                <asp:RadioButton ID="rdo2" runat="server" Text="ASP NET C#" GroupName="exam" />
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 611px; height: 62px">
                &nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="rdo3" runat="server" Text="C#" 
                    GroupName="exam" />
            </td>
            <td align="center" style="height: 62px">
                <asp:RadioButton ID="rdo4" runat="server" Text="NEW EXAM" GroupName="exam" />
            </td>
        </tr>
        <tr>
            <td align="right" style="width: 611px; height: 62px">
    
        <asp:Label ID="Label1" runat="server" Text="Exam Name OR Modal NO"></asp:Label>
            </td>
            <td align="left" style="height: 62px">
        <asp:TextBox ID="txt_name" runat="server"></asp:TextBox>
    
            </td>
        </tr>
        <tr>
            <td align="right" style="width: 611px">
                <asp:ImageButton ID="ImageButton1" runat="server" Height="41px" 
                    ImageUrl="~/ADMIN/images/proceed.png" onclick="ImageButton1_Click" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    

<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    

</asp:Content>

