<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/MasterPage.master" AutoEventWireup="true" CodeFile="privileges.aspx.cs" Inherits="ADMIN_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Content1" Runat="Server">

    <table style="width: 100%; height: 208px; margin-right: 13px;">
    <tr>
        <td align="center" style="width: 512px; height: 48px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" BackColor="#FF6600" 
                BorderColor="#FF6600" BorderStyle="Solid" BorderWidth="10px" Height="56px" 
                Text="ADD EXAM" Width="160px" Font-Bold="True" Font-Size="Large" 
                ForeColor="White" style="margin-left: 0px" 
                PostBackUrl="~/ADMIN/addexam.aspx" onclick="Button1_Click" />
        </td>
        <td align="left" style="height: 48px; width: 179px;">
            <asp:Button ID="Button2" runat="server" BackColor="#FF6600" 
                BorderColor="#FF6600" BorderStyle="Solid" Height="56px" Text="SHOW EXAM" 
                Width="160px" Font-Bold="True" Font-Size="Large" ForeColor="White" 
                style="margin-left: 0px" PostBackUrl="~/ADMIN/Showexam.aspx" 
                onclick="Button2_Click" />
        </td>
        <td align="left" rowspan="2">
            &nbsp;</td>
    </tr>
    <tr>
        <td align="center" style="width: 512px; height: 45px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button3" runat="server" BackColor="#FF6600" 
                BorderColor="#FF6600" BorderStyle="Solid" Height="56px" Text="UPDATE EXAM" 
                Width="160px" Font-Bold="True" Font-Size="Large" ForeColor="White" 
                PostBackUrl="~/ADMIN/Showexam.aspx" />
        </td>
        <td align="left" style="height: 45px">
            <asp:Button ID="Button4" runat="server" BackColor="#FF6600" 
                BorderColor="#FF6600" BorderStyle="Solid" Height="56px" Text="DELETE EXAM" 
                Width="160px" Font-Bold="True" Font-Size="Large" ForeColor="White" 
                PostBackUrl="~/ADMIN/Showexam.aspx" />
        </td>
    </tr>
</table>

</asp:Content>

