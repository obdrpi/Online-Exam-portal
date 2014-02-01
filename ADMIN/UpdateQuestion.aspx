<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/MasterPage.master" AutoEventWireup="true" CodeFile="UpdateQuestion.aspx.cs" Inherits="ADMIN_addquestion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Content1" Runat="Server">
    <p>
        <br />
        <table style="width:1269px;">
            <tr>
                <td align="center" style="height: 53px; " colspan="3">
                    <asp:Label ID="lbl_exam" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                        Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="right" style="height: 72px; width: 563px">
                    <asp:Label ID="Label1" runat="server" Text="Question"></asp:Label>
                </td>
                <td style="height: 72px; width: 696px;" colspan="2">
                    <asp:TextBox ID="txt_question" runat="server" TextMode="MultiLine" 
                        Width="310px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" style="width: 563px; height: 73px">
                    <asp:Label ID="Label2" runat="server" Text="CHOICE A"></asp:Label>
&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txt_1" runat="server"></asp:TextBox>
                </td>
                <td align="center" style="height: 73px; width: 696px;" colspan="2">
                    <asp:Label ID="Label3" runat="server" Text="CHOICE B"></asp:Label>
&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txt_2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" style="width: 563px; height: 72px">
                    <asp:Label ID="Label4" runat="server" Text="CHOICE C"></asp:Label>
&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txt_3" runat="server"></asp:TextBox>
                </td>
                <td align="center" style="height: 72px; width: 696px;" colspan="2">
                    <asp:Label ID="Label5" runat="server" Text="CHOICE D"></asp:Label>
&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txt_4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" style="width: 563px; height: 72px">
                    <asp:Label ID="Label6" runat="server" Text="ANSWER"></asp:Label>
&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="dd1" runat="server">
                        <asp:ListItem Selected="True">SELECT</asp:ListItem>
                        <asp:ListItem>CHOICE A</asp:ListItem>
                        <asp:ListItem>CHOICE B</asp:ListItem>
                        <asp:ListItem>CHOICE C</asp:ListItem>
                        <asp:ListItem>CHOICE D</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td align="left" style="height: 72px; width: 696px;" colspan="2">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Large" 
                        Text="Total number of questions added  :   "></asp:Label>
                    <asp:Label ID="lbl_number" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center" style="width: 563px; height: 72px">
                    <asp:Button ID="txt_update" runat="server" BackColor="#FF6600" 
                        BorderColor="#FF6600" BorderWidth="1px" Font-Bold="True" Font-Size="Medium" 
                        ForeColor="White" Height="42px" style="margin-left: 0px" Text="UPDATE" 
                        Width="112px" onclick="txt_update_Click2" />
                </td>
                <td align="center" style="height: 72px; width: 534px;">
                    <asp:Button ID="txt_delete" runat="server" BackColor="#FF6600" 
                        BorderColor="#FF6600" BorderWidth="1px" Font-Bold="True" Font-Size="Medium" 
                        ForeColor="White" Height="42px" style="margin-left: 0px" Text="DELETE" 
                        Width="112px" onclick="txt_delete_Click" />
                </td>
                <td align="center" style="height: 72px; width: 696px;">
                    <asp:Button ID="txt_done" runat="server" BackColor="#FF6600" 
                        BorderColor="#FF6600" BorderWidth="1px" Font-Bold="True" Font-Size="Medium" 
                        ForeColor="White" Height="42px" style="margin-left: 0px" Text="BACK" 
                        Width="112px" />
                </td>
            </tr>
            <tr>
                <td align="center" style="height: 72px" colspan="3">
                    <asp:Label ID="lbl_message" runat="server" Font-Bold="True" Font-Size="X-Large" 
                        Text="Label"></asp:Label>
                </td>
            </tr>
        </table>
    </p>
</asp:Content>

