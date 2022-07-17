<%@ Page Title="" Language="VB" MasterPageFile="~/ebook/contact/MasterPage.master"
    AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="ebook_contact_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        @font-face
        {
            font-family: 'koodakEbookbook';
            src: url(      '../../content/font/W_koodak.eot' );
            src: url(      '../../content/font/W_koodak.eot?#iefix' ) format(      'embedded-opentype' ), url('../../content/font/W_koodak.woff' ) format(      'woff' ), url('../../content/font/W_koodak.TTF' ) format(      'truetype' );
        }
    </style>
    <style>
        .BigDiv
        {
            width: 514px;
        }
        .btnI
        {
            background: #f1e767; /* Old browsers */ /* IE9 SVG, needs conditional override of 'filter' to 'none' */
            background: url(data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiA/Pgo8c3ZnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgd2lkdGg9IjEwMCUiIGhlaWdodD0iMTAwJSIgdmlld0JveD0iMCAwIDEgMSIgcHJlc2VydmVBc3BlY3RSYXRpbz0ibm9uZSI+CiAgPGxpbmVhckdyYWRpZW50IGlkPSJncmFkLXVjZ2ctZ2VuZXJhdGVkIiBncmFkaWVudFVuaXRzPSJ1c2VyU3BhY2VPblVzZSIgeDE9IjAlIiB5MT0iMCUiIHgyPSIxMDAlIiB5Mj0iMTAwJSI+CiAgICA8c3RvcCBvZmZzZXQ9IjAlIiBzdG9wLWNvbG9yPSIjZjFlNzY3IiBzdG9wLW9wYWNpdHk9IjEiLz4KICAgIDxzdG9wIG9mZnNldD0iMTAwJSIgc3RvcC1jb2xvcj0iI2ZlYjY0NSIgc3RvcC1vcGFjaXR5PSIxIi8+CiAgPC9saW5lYXJHcmFkaWVudD4KICA8cmVjdCB4PSIwIiB5PSIwIiB3aWR0aD0iMSIgaGVpZ2h0PSIxIiBmaWxsPSJ1cmwoI2dyYWQtdWNnZy1nZW5lcmF0ZWQpIiAvPgo8L3N2Zz4=);
            background: -moz-linear-gradient(-45deg, #f1e767 0%, #feb645 100%); /* FF3.6+ */
            background: -webkit-gradient(linear, left top, right bottom, color-stop(0%,#f1e767), color-stop(100%,#feb645)); /* Chrome,Safari4+ */
            background: -webkit-linear-gradient(-45deg, #f1e767 0%,#feb645 100%); /* Chrome10+,Safari5.1+ */
            background: -o-linear-gradient(-45deg, #f1e767 0%,#feb645 100%); /* Opera 11.10+ */
            background: -ms-linear-gradient(-45deg, #f1e767 0%,#feb645 100%); /* IE10+ */
            background: linear-gradient(135deg, #f1e767 0%,#feb645 100%); /* W3C */
            filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#f1e767', endColorstr='#feb645',GradientType=1 ); /* IE6-8 fallback on horizontal gradient */
            padding: 5px;
            font-family: tahoma;
            font-size: 15px;
            -moz-border-radius: 5px;
            -webkit-border-radius: 5px;
            border-radius: 5px;
            width: 200px;
        }
        .btnI:hover
        {
            color: White;
            background: #6db3f2; /* Old browsers */ /* IE9 SVG, needs conditional override of 'filter' to 'none' */
            background: url(data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiA/Pgo8c3ZnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgd2lkdGg9IjEwMCUiIGhlaWdodD0iMTAwJSIgdmlld0JveD0iMCAwIDEgMSIgcHJlc2VydmVBc3BlY3RSYXRpbz0ibm9uZSI+CiAgPGxpbmVhckdyYWRpZW50IGlkPSJncmFkLXVjZ2ctZ2VuZXJhdGVkIiBncmFkaWVudFVuaXRzPSJ1c2VyU3BhY2VPblVzZSIgeDE9IjAlIiB5MT0iMCUiIHgyPSIxMDAlIiB5Mj0iMTAwJSI+CiAgICA8c3RvcCBvZmZzZXQ9IjAlIiBzdG9wLWNvbG9yPSIjNmRiM2YyIiBzdG9wLW9wYWNpdHk9IjEiLz4KICAgIDxzdG9wIG9mZnNldD0iNTAlIiBzdG9wLWNvbG9yPSIjNTRhM2VlIiBzdG9wLW9wYWNpdHk9IjEiLz4KICAgIDxzdG9wIG9mZnNldD0iNTElIiBzdG9wLWNvbG9yPSIjMzY5MGYwIiBzdG9wLW9wYWNpdHk9IjEiLz4KICAgIDxzdG9wIG9mZnNldD0iMTAwJSIgc3RvcC1jb2xvcj0iIzFlNjlkZSIgc3RvcC1vcGFjaXR5PSIxIi8+CiAgPC9saW5lYXJHcmFkaWVudD4KICA8cmVjdCB4PSIwIiB5PSIwIiB3aWR0aD0iMSIgaGVpZ2h0PSIxIiBmaWxsPSJ1cmwoI2dyYWQtdWNnZy1nZW5lcmF0ZWQpIiAvPgo8L3N2Zz4=);
            background: -moz-linear-gradient(-45deg, #6db3f2 0%, #54a3ee 50%, #3690f0 51%, #1e69de 100%); /* FF3.6+ */
            background: -webkit-gradient(linear, left top, right bottom, color-stop(0%,#6db3f2), color-stop(50%,#54a3ee), color-stop(51%,#3690f0), color-stop(100%,#1e69de)); /* Chrome,Safari4+ */
            background: -webkit-linear-gradient(-45deg, #6db3f2 0%,#54a3ee 50%,#3690f0 51%,#1e69de 100%); /* Chrome10+,Safari5.1+ */
            background: -o-linear-gradient(-45deg, #6db3f2 0%,#54a3ee 50%,#3690f0 51%,#1e69de 100%); /* Opera 11.10+ */
            background: -ms-linear-gradient(-45deg, #6db3f2 0%,#54a3ee 50%,#3690f0 51%,#1e69de 100%); /* IE10+ */
            background: linear-gradient(135deg, #6db3f2 0%,#54a3ee 50%,#3690f0 51%,#1e69de 100%); /* W3C */
            filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#6db3f2', endColorstr='#1e69de',GradientType=1 ); /* IE6-8 fallback on horizontal gradient */
            cursor: pointer;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>
        <div style="float: right; padding-top: 10px;">
            <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                <asp:View ID="View1" runat="server">
                    <div class="BigDiv">
                        <table style="width: 100%;">
                            <tr>
                                <td class="style7">
                                    &nbsp;
                                </td>
                                <td style="font-family: koodakEbook; font-size: 12px;">
                                    نام و نام خانوادگی:
                                </td>
                            </tr>
                            <tr>
                                <td class="style7">
                                    &nbsp;
                                </td>
                                <td>
                                    <div style="-moz-border-radius: 5px; border: 1px solid #ccc; width: 270px; padding: 5px;
                                        background-color: #f9f9f9;">
                                        <asp:TextBox ID="txtFnLn" runat="server" Style="border: 0; background-color: #f9f9f9;
                                            font-family: Tahoma;" Width="265px"></asp:TextBox>
                                    </div>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtFnLn"
                                        ErrorMessage="*" ValidationGroup="3"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="style7">
                                    &nbsp;
                                </td>
                                <td style="font-family: koodakEbook; font-size: 12px;">
                                    پست الکترونیکی:
                                </td>
                            </tr>
                            <tr>
                                <td class="style7">
                                    &nbsp;
                                </td>
                                <td>
                                    <div style="-moz-border-radius: 5px; border: 1px solid #ccc; width: 270px; padding: 5px;
                                        background-color: #f9f9f9;">
                                        <asp:TextBox ID="txtEmail" runat="server" Style="border-style: none; direction: ltr;
                                            border-color: inherit; border-width: 0; background-color: #f9f9f9; text-align: left;"
                                            Width="265px"></asp:TextBox>
                                    </div>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail"
                                        ErrorMessage="*" ValidationGroup="1"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" CssClass="font"
                                        runat="server" ControlToValidate="txtEmail" ErrorMessage="فرمت پست الکترونیکی را اصلاح کنید."
                                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="3"></asp:RegularExpressionValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="style7">
                                    &nbsp;
                                </td>
                                <td style="font-family: koodakEbook; font-size: 12px;">
                                    شماره تلفن:
                                </td>
                            </tr>
                            <tr>
                                <td class="style7">
                                    &nbsp;
                                </td>
                                <td>
                                    <div style="-moz-border-radius: 5px; border: 1px solid #ccc; width: 170px; padding: 5px;
                                        background-color: #f9f9f9;">
                                        <asp:TextBox ID="txtTell" runat="server" Style="border-style: none; border-color: inherit;
                                            border-width: 0; background-color: #f9f9f9; text-align: left;" Width="165px"></asp:TextBox>
                                    </div>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtTell"
                                        ErrorMessage="*" ValidationGroup="3"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="style7">
                                    &nbsp;
                                </td>
                                <td style="font-family: koodakEbook; font-size: 12px;">
                                    گروه:
                                </td>
                            </tr>
                            <tr>
                                <td class="style7">
                                    &nbsp;
                                </td>
                                <td>
                                    <div style="-moz-border-radius: 5px; border: 1px solid #ccc; width: 170px; padding: 5px;
                                        background-color: #e5eff6;">
                                        <asp:DropDownList ID="cmbGroup" runat="server" Style="font-family: Tahoma; font-size: 12px;
                                            border: 0; background-color: #e5eff6; padding: 2px;">
                                            <asp:ListItem>واحد پشتیبانی</asp:ListItem>
                                            <asp:ListItem>واحد برنامه نویسی و امنیت</asp:ListItem>
                                            <asp:ListItem>واحد مالی و اعتبار</asp:ListItem>
                                            <asp:ListItem>واحد نظرات و پیشنهاد ها</asp:ListItem>
                                            <asp:ListItem>تیم مدیریت</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </td>
                            </tr>
                            <tr>
                                <td class="style7">
                                    &nbsp;
                                </td>
                                <td style="font-family: koodakEbook; font-size: 12px;">
                                    پیام:
                                </td>
                            </tr>
                            <tr>
                                <td class="style7">
                                    &nbsp;
                                </td>
                                <td>
                                    <div style="-moz-border-radius: 5px; border: 1px solid #a8c7db; width: 539px; padding: 5px;
                                        background-color: #e5eff6;">
                                        <asp:TextBox ID="txtCuase" runat="server" Height="123px" Style="border: 0; background-color: #e5eff6;
                                            resize: none;" TextMode="MultiLine" Width="536px"></asp:TextBox>
                                    </div>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCuase"
                                        ErrorMessage="*" ValidationGroup="3"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td class="style7">
                                </td>
                                <td>
                                    <asp:Label ID="lblWrong" runat="server" Style="color: #FF0000"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style7">
                                    &nbsp;
                                </td>
                                <td>
                                    <asp:Button ID="btnSend" CssClass="btnI" runat="server" Text="ارسال" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style7">
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td class="style7">
                                    &nbsp;
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                        </table>
                    </div>
                </asp:View>
                <asp:View ID="View2" runat="server">
                    <div class="BigDiv">
                        <table style="width: 100%;">
                            <tr>
                                <td>
                                    <img src='<%= ResolveUrl("Accept.png") %>' style="width: 50px; height: 50px;" />
                                </td>
                            </tr>
                            <tr>
                                <td style="font-family: koodakEbook; font-size: 12px;">
                                    کاربر محترم;
                                </td>
                            </tr>
                            <tr>
                                <td style="font-family: koodakEbook; font-size: 12px;">
                                    پیام شما با موفقیت ارسال گردید، لطفا منتظر پاسخ بمانید.
                                </td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                            </tr>
                        </table>
                    </div>
                </asp:View>
            </asp:MultiView>
        </div>
        <div style="float: right; width: 450px; background-color: #59C1C7; margin-top: 10px;
            -moz-border-radius: 5px; -webkit-border-radius: 5px; border-radius: 5px; color: White;margin-bottom:10px;">
            <div style="font-family: koodakEbook; font-size: 23px; padding-right: 8px; padding-top: 15px;">
                چگونگی ارتباط با ما
            </div>
            <div style="font-family: koodakEbook; font-size: 13px; padding: 15px; color: Black;">
                شما از طریق این فرم می توانید پیشنهادات ، مشکلات و نظرات خود را به مسئولان شهر دات
                کام انتقال دهید.
                <br />
                کاربر محترم ، با توجه به حجم بالای پیامها ، پاسخ دادن به آنها در زمان کوتاه امکان
                پذیر نمی باشد. اما سعی می گردد تمامی مطالب مطالعه شده و در صورت نیاز واحد مربوطه
                با شما مکاتبه نموده و پاسخ لازم را ارائه دهد.
                <br />
                لطفا برای تسریع در پاسخ به پیام ها، واحد مربوطه را به درستی انتخاب نمایید.
                <br />
                با تشکر
                <br />
                مدیریت شهر دات کام
            </div>
        </div>
    </div>
</asp:Content>
