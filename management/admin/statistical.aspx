<%@ Page Title="" Language="VB" MasterPageFile="~/management/admin/CMS.master" AutoEventWireup="false" CodeFile="statistical.aspx.vb" Inherits="management_admin_statistical" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style13
        {
            width: 144px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1">
        <tr>
            <td>
                <b>آمارهای جزئی</b></td>
        </tr>
        <tr>
            <td>
                <table class="style1">
                    <tr>
                        <td class="style13">
                            مشاهده سایت</td>
                        <td>
                            <asp:Label ID="lblWebsite" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style13">
                            کل دانلود کتب</td>
                        <td>
                            <asp:Label ID="lblDownloaded" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <b>آمار بیشترین دانلود&nbsp; کتبب</b></td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="ODS">
                    <Columns>
                        <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                        <asp:BoundField DataField="Count_Download" HeaderText="Count_Download" 
                            SortExpression="Count_Download" />
                    </Columns>
                </asp:GridView>
                <asp:ObjectDataSource ID="ODS" runat="server" InsertMethod="Insert" 
                    OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
                    TypeName="ds_EbookTableAdapters.shaahr_Book_BaseOnDownloadTableAdapter">
                    <InsertParameters>
                        <asp:Parameter Name="Title" Type="String" />
                        <asp:Parameter Name="Count_Download" Type="Int64" />
                    </InsertParameters>
                </asp:ObjectDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

