<%@ Page Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false"
    CodeFile="detailpdf.aspx.vb" Inherits="detailpdf" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style4
        {
            width: 28px;
        }
        .style2
        {
            width: 15px;
            height: 15px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="padding: 5px; border-bottom: 2px dotted #616D79; padding-bottom: 10px;">
        <asp:DataList ID="DL_Ebook0" runat="server" RepeatColumns="6" RepeatDirection="Horizontal"
            DataSourceID="SDS_Top6">
            <ItemTemplate>
                <div style="border-top: 1px solid #ccc; border-left: 1px solid #ccc; border-right: 1px solid #ccc;
                    -moz-border-radius: 5px 5px 0px 0px; -webkit-border-radius: 5px 5px 0px 0px;
                    padding: 5px; border-radius: 5px 5px 0px 0px; box-shadow: 2px 2px 5px #D6E1E7;
                    width: 145px;">
                    <table class="style1">
                        <tr>
                            <td>
                                <h3>
                                    <a href='<%# Eval("code", "../{0}")+"/"+Eval("title", "{0}")+".html" %>' target="_blank"
                                        style="text-decoration: none; color: Black;">
                                        <asp:Label ID="TitleLabel" Style="font: normal 11px tahoma;" runat="server" Text='<%# Eval("Title") %>' />
                                    </a>
                                </h3>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: center">
                                <a href='<%# Eval("code", "../{0}")+"/"+Eval("title", "{0}")+".html" %>' target="_blank"
                                    style="text-decoration: none; color: Black; font-size: 12px;">
                                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("PicturePath", "~/management/images/{0}") %>'
                                        Height="120px" Width="130px" />
                                </a>
                            </td>
                        </tr>
                    </table>
                </div>
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SDS_Top6" runat="server" ConnectionString="<%$ ConnectionStrings:shaahrEbookConnectionString %>"
            SelectCommand="SELECT top 6 * FROM [tbl_shaahr_Book] WHERE ([Show] = @Show) order by newid()">
            <SelectParameters>
                <asp:Parameter DefaultValue="true" Name="Show" Type="Boolean" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    <div style="padding: 5px;">
        <asp:DataList ID="DL_Ebook" runat="server" RepeatColumns="1">
            <ItemTemplate>
                <div style="width: 947px; height: 345px;">
                    <div>
                        <h3>
                            <div style="padding: 20px; background-color: #F2F2F2; -moz-border-radius: 5px; -webkit-border-radius: 5px;
                                border-radius: 5px; border: 1px solid #ccc;">
                                <asp:Label ID="TitleLabel" Style="font-family: koodakEbook; font-size: 20px;" runat="server"
                                    Text='<%# Eval("Title") %>' />
                            </div>
                        </h3>
                    </div>
                    <div>
                    <table>
                        <tr>
                            <td>
                                <table class="style1">
                                    <tr>
                                        <td style="text-align: center">
                                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("PicturePath", "management\images\{0}") %>'
                                                Height="248px" Width="296px" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td>
                                <table>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("Details", "{0}") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <table class="style1">
                                                <tr>
                                                    <td class="style4">
                                                        <img alt="" class="style2" src="content/images/down.gif" />
                                                    </td>
                                                    <td>
                                                        <asp:Label ID="Count_DownloadLabel" runat="server" Style="font-weight: 700" Text='<%# Eval("Count_Download") %>' />
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <img border="0" width="150px" height="150px" src='<%# Eval("FileLink", "http://qr-code.ir/api/api-qrcode.php?d={0}") %>'
                                                title="My QR-Code ebook.shaahr.com" alt="ebook.shaahr.com" />
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                    </div>
                </div>
                <div style="font-family: koodakEbook; font-size: large; background-color: #F3F8F1;
                    box-shadow: 2px 2px 5px #D6E1E7; text-align: center; border: 1px solid #ccc;
                    -moz-border-radius: 0px 0px 0px 0px; -webkit-border-radius: 0px 0px 0px 0px;
                    border-radius: 0px 0px 0px 0px;">
                    <asp:LinkButton ID="btnDownload" runat="server" Style="text-decoration: none; color: Black;"
                        OnCommand="Download" CommandArgument='<%# Eval("FileLink", "{0}")+"|"+Eval("code", "{0}") %>'>دانلود</asp:LinkButton>
                </div>
                <div style="font-family: koodakEbook; font-size: large; background-color: #F1FA69;
                    box-shadow: 2px 2px 5px #D6E1E7; text-align: center; border: 1px solid #ccc;
                    -moz-border-radius: 0px 0px 5px 5px; -webkit-border-radius: 0px 0px 5px 5px;
                    margin-bottom: 10px; border-radius: 0px 0px 5px 5px;">
                    <asp:LinkButton ID="LinkButton1" runat="server" Style="text-decoration: none; color: Black;"
                        OnCommand="Show" CommandArgument='<%# Eval("FileLink", "{0}")+"|"+Eval("code", "{0}") %>'>نمایش</asp:LinkButton>
                </div>
            </ItemTemplate>
        </asp:DataList>
    </div>
</asp:Content>
