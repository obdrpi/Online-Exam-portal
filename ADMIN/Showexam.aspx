<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN/MasterPage.master" AutoEventWireup="true" CodeFile="Showexam.aspx.cs" Inherits="ADMIN_Showexam" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Content1" Runat="Server">
    <p>
        <br />
        <table style="width:100%;">
            <tr>
                <td align="right" style="width: 649px">
                    <asp:Label ID="Label1" runat="server" Text="SELECT EXAM"></asp:Label>
                </td>
                <td colspan="2">
                    <asp:DropDownList ID="dd1" runat="server"  DataSourceID="SqlDataSource1"
                        DataTextField="name" DataValueField="name" 
                        onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                        AutoPostBack="True">
                                               
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:finalconnectivity %>" 
                        SelectCommand="SELECT name, object_id FROM sys.tables WHERE (max_column_id_used = 7)">
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td style="width: 649px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td style="width: 320px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" colspan="3">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        DataKeyNames="id" onselectedindexchanged="GridView1_SelectedIndexChanged"  >
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="id" HeaderText="Question_ID" ReadOnly="True" />
                            <asp:BoundField DataField="Question" HeaderText="Question" />
                             <asp:BoundField DataField="CHOICE1" HeaderText="FIRST CHOICE" />
                              <asp:BoundField DataField="CHOICE2" HeaderText="SECOND CHOICE" />
                             <asp:BoundField DataField="CHOICE3" HeaderText="THIRD CHOICE" />
                                 <asp:BoundField DataField="CHOICE4" HeaderText="FOURTH CHOICE" />
                                  <asp:BoundField DataField="Ans" HeaderText="Answer" />
                        </Columns>
                    </asp:GridView>
                    
                </td>
            </tr>
            <tr>
                <td align="right" style="width: 649px">
                    <br />
                    <br />
                    <br />
                    <asp:Button ID="Button1" runat="server" BackColor="#FF6600" 
                        BorderColor="#FF6600" BorderStyle="Solid" BorderWidth="10px" Font-Bold="True" 
                        Font-Size="Medium" ForeColor="White" Height="37px" Text="BACK" Width="107px" 
                        onclick="Button1_Click" PostBackUrl="~/ADMIN/privileges.aspx" />
                </td>
                <td>
                    &nbsp;</td>
                <td style="width: 320px">
                    &nbsp;</td>
            </tr>
        </table>
    </p>
</asp:Content>

