<%@ Page Title="" Language="VB" MasterPageFile="~/management/admin/CMS.master" AutoEventWireup="false" CodeFile="category.aspx.vb" Inherits="management_admin_category" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td>
                <b>دسته</b></td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtInsert" runat="server"></asp:TextBox>
                <asp:Button ID="btnInsert" runat="server" Text="درج" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="dg" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="Code" DataSourceID="SDS">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="Code" HeaderText="Code" InsertVisible="False" 
                            ReadOnly="True" SortExpression="Code" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SDS" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:shaahrEbookConnectionString %>" 
                    DeleteCommand="DELETE FROM tbl_shaahr_category WHERE (Code = @code)" 
                    SelectCommand="SELECT * FROM [tbl_shaahr_category] ORDER BY [Code] DESC" 
                    UpdateCommand="UPDATE tbl_shaahr_category SET Name = @name WHERE (Code = @code)">
                    <DeleteParameters>
                        <asp:Parameter Name="code" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="name" />
                        <asp:Parameter Name="code" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

