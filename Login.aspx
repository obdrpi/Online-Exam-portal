<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Default4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Content1" Runat="Server">

    <table style="width: 100%; height: 219px;">
        <tr>
            <td align="right" style="width: 505px">
                <asp:Label ID="Label1" runat="server" Text="UserName"></asp:Label>
            </td>
            <td align="center" style="width: 269px">
                <asp:TextBox ID="txt_user" runat="server"></asp:TextBox>
            </td>
            <td style="width: 142px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txt_user" ErrorMessage="Enter a UserName!"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td align="right" style="width: 505px">
                <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
            </td>
            <td align="center" style="width: 269px">
                <asp:TextBox ID="txt_pass" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td style="width: 142px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txt_pass" ErrorMessage="Enter the Password!"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 24px; width: 505px" align="right">
                &nbsp;</td>
            <td align="center" style="height: 24px; margin-left: 80px; width: 269px;">
                <asp:Button ID="btn_login" runat="server" style="margin-left: 0px" Text="LOGIN" 
                    Width="118px" onclick="btn_login_Click" BackColor="#FF6600" 
                    BorderColor="#FF6600" BorderStyle="Solid" ForeColor="White" />
            </td>
            <td style="height: 24px; width: 142px;" align="right">
                <asp:Label ID="Label3" runat="server" Text="New User?"></asp:Label>
&nbsp;&nbsp;
            </td>
            <td style="height: 24px" align="left">
                <asp:HyperLink ID="HyperLink1" runat="server" BackColor="#FF6600" 
                    BorderColor="#FF6600" BorderStyle="Solid" ForeColor="White" 
                    NavigateUrl="~/regis.aspx">CREATE ACCOUNT</asp:HyperLink>
            </td>
        </tr>
    </table>

</asp:Content>

