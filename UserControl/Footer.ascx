<%@ Control Language="VB" AutoEventWireup="false" CodeFile="Footer.ascx.vb" Inherits="UserControl_Footer" %>
<table>
    <tr>
        <td>
            <div style="padding: 5px;">
                <ul style="list-style-type: none; font-family: koodakEbook; font-size: 15px; 
                    ">
                    <li><a style="text-decoration: none; color: #0E5061;" href="Default.aspx">صفحه نخست </a>
                    </li>
                    <li><a style="text-decoration: none; color: #0E5061;" href="about.aspx">درباره ما </a>
                    </li>
                    <li><a href='<%= ResolveUrl("../تماس-با-شهر-کتاب/") %>' style="text-decoration: none; color: #0E5061;" >تماس با ما </a>
                    </li>
                </ul>
            </div>
        </td>
        <td>
            <a href="http://shaahr.com" style="text-decoration: none;">
                <img src='<%= ResolveUrl("../Content/images/logo_shaahr.png")%>' border="0" /></a><a style="text-decoration: none;"
                    href="http://sms.shaahr.com">
                    <img src='<%= ResolveUrl("../Content/images/logo_sms.png")%>' border="0" /></a><a style="text-decoration: none;"
                        href="http://software.shaahr.com">
                        <img src='<%= ResolveUrl("../Content/images/logo_software.png")%>' border="0" /></a> <a style="text-decoration: none;"
                            href="http://ebook.shaahr.com">
                            <img src='<%= ResolveUrl("../Content/images/logo_ebook.png")%>' border="0" /></a> <a style="text-decoration: none;"
                                href="http://android.shaahr.com">
                                <img src='<%= ResolveUrl("../Content/images/logo_android.png")%>' border="0" /></a>
        </td>
    </tr>
</table>
