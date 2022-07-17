<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false"
    CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Src="UserControl/SubjectRefrecnce.ascx" TagName="SubjectRefrecnce" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
    <style type="text/css">
        @font-face
        {
            font-family: 'koodakEbook';
            src: url(      'content/font/W_koodak.eot' );
            src: url(      'content/font/W_koodak.eot?#iefix' ) format(      'embedded-opentype' ), url('content/font/W_koodak.woff' ) format(      'woff' ), url('content/font/W_koodak.TTF' ) format(      'truetype' );
        }
        .style2
        {
            width: 15px;
            height: 15px;
        }
        .style4
        {
            width: 28px;
        }
        .PreNext
        {
            width: 450px;
            height: 20px;
            padding: 10px;
            -moz-border-radius: 5px;
            -webkit-border-radius: 5px;
            border-radius: 5px;
            text-align: center;
            background-color: #F3F8F1;
            font-family: koodakEbook;
            font-size: 15px;
            border: 1px solid #ccc;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="text-align: center;">
        <img src="introduce.png" />
    </div>
    <div>
        <div style="padding: 2px; border: 1px solid #e7e7e7;">
            <table>
                <tr>
                    <td>
                        <a href="http://sms.shaahr.com" target="_blank">
                            <img src="content/sms2.gif" border="0" />
                        </a>
                    </td>
                    <td>
                        <a href="http://software.shaahr.com" target="_blank">
                            <img src="content/software.gif" border="0" />
                        </a>
                    </td>
                </tr>
                <tr>
                    <td>
                        <a href="http://android.shaahr.com" target="_blank">
                            <img src="content/android.gif" border="0" />
                        </a>
                    </td>
                    <td>
                        <a href="http://sms.shaahr.com" target="_blank">
                            <img src="content/sms.gif" border="0" />
                        </a>
                    </td>
                </tr>
            </table>
        </div>
    </div>
    <div style="background: #ffffff; /* old browsers */
/* ie9 svg, needs conditional override of 'filter' to 'none' */
background: url(data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiA/Pgo8c3ZnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgd2lkdGg9IjEwMCUiIGhlaWdodD0iMTAwJSIgdmlld0JveD0iMCAwIDEgMSIgcHJlc2VydmVBc3BlY3RSYXRpbz0ibm9uZSI+CiAgPGxpbmVhckdyYWRpZW50IGlkPSJncmFkLXVjZ2ctZ2VuZXJhdGVkIiBncmFkaWVudFVuaXRzPSJ1c2VyU3BhY2VPblVzZSIgeDE9IjAlIiB5MT0iMCUiIHgyPSIxMDAlIiB5Mj0iMTAwJSI+CiAgICA8c3RvcCBvZmZzZXQ9IjAlIiBzdG9wLWNvbG9yPSIjZmZmZmZmIiBzdG9wLW9wYWNpdHk9IjEiLz4KICAgIDxzdG9wIG9mZnNldD0iNTElIiBzdG9wLWNvbG9yPSIjZjFmMWYxIiBzdG9wLW9wYWNpdHk9IjEiLz4KICAgIDxzdG9wIG9mZnNldD0iNTElIiBzdG9wLWNvbG9yPSIjZTFlMWUxIiBzdG9wLW9wYWNpdHk9IjEiLz4KICAgIDxzdG9wIG9mZnNldD0iMTAwJSIgc3RvcC1jb2xvcj0iI2Y2ZjZmNiIgc3RvcC1vcGFjaXR5PSIxIi8+CiAgPC9saW5lYXJHcmFkaWVudD4KICA8cmVjdCB4PSIwIiB5PSIwIiB3aWR0aD0iMSIgaGVpZ2h0PSIxIiBmaWxsPSJ1cmwoI2dyYWQtdWNnZy1nZW5lcmF0ZWQpIiAvPgo8L3N2Zz4=);
        background: -moz-linear-gradient(-45deg, #ffffff 0%, #f1f1f1 51%, #e1e1e1 51%, #f6f6f6 100%);
        /* ff3.6+ */
background: -webkit-gradient(linear, left top, right bottom, color-stop(0%,#ffffff), color-stop(51%,#f1f1f1), color-stop(51%,#e1e1e1), color-stop(100%,#f6f6f6));
        /* chrome,safari4+ */
background: -webkit-linear-gradient(-45deg, #ffffff 0%,#f1f1f1 51%,#e1e1e1 51%,#f6f6f6 100%);
        /* chrome10+,safari5.1+ */
background: -o-linear-gradient(-45deg, #ffffff 0%,#f1f1f1 51%,#e1e1e1 51%,#f6f6f6 100%);
        /* opera 11.10+ */
background: -ms-linear-gradient(-45deg, #ffffff 0%,#f1f1f1 51%,#e1e1e1 51%,#f6f6f6 100%);
        /* ie10+ */
background: linear-gradient(135deg, #ffffff 0%,#f1f1f1 51%,#e1e1e1 51%,#f6f6f6 100%);
        /* w3c */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#ffffff', endColorstr='#f6f6f6',GradientType=1 );
        /* ie6-8 fallback on horizontal gradient */padding: 10px; width: 944px; margin-top: 5px;
        margin-bottom: 5px; font-weight: bolder;">
        موضوعات رفرنس (کتابهای مرجع) زبان اصلی</div>
    <div>
        <uc1:SubjectRefrecnce ID="SubjectRefrecnce1" runat="server" />
    </div>
    <div style="background: #e0f3fa; /* old browsers */
/* ie9 svg, needs conditional override of 'filter' to 'none' */
background: url(data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiA/Pgo8c3ZnIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgd2lkdGg9IjEwMCUiIGhlaWdodD0iMTAwJSIgdmlld0JveD0iMCAwIDEgMSIgcHJlc2VydmVBc3BlY3RSYXRpbz0ibm9uZSI+CiAgPGxpbmVhckdyYWRpZW50IGlkPSJncmFkLXVjZ2ctZ2VuZXJhdGVkIiBncmFkaWVudFVuaXRzPSJ1c2VyU3BhY2VPblVzZSIgeDE9IjAlIiB5MT0iMCUiIHgyPSIxMDAlIiB5Mj0iMTAwJSI+CiAgICA8c3RvcCBvZmZzZXQ9IjAlIiBzdG9wLWNvbG9yPSIjZTBmM2ZhIiBzdG9wLW9wYWNpdHk9IjEiLz4KICAgIDxzdG9wIG9mZnNldD0iNTElIiBzdG9wLWNvbG9yPSIjZDhmMGZjIiBzdG9wLW9wYWNpdHk9IjEiLz4KICAgIDxzdG9wIG9mZnNldD0iNTElIiBzdG9wLWNvbG9yPSIjNDRiMmZmIiBzdG9wLW9wYWNpdHk9IjEiLz4KICAgIDxzdG9wIG9mZnNldD0iMTAwJSIgc3RvcC1jb2xvcj0iI2I2ZGZmZCIgc3RvcC1vcGFjaXR5PSIxIi8+CiAgPC9saW5lYXJHcmFkaWVudD4KICA8cmVjdCB4PSIwIiB5PSIwIiB3aWR0aD0iMSIgaGVpZ2h0PSIxIiBmaWxsPSJ1cmwoI2dyYWQtdWNnZy1nZW5lcmF0ZWQpIiAvPgo8L3N2Zz4=);
        background: -moz-linear-gradient(-45deg, #e0f3fa 0%, #d8f0fc 51%, #44b2ff 51%, #b6dffd 100%);
        /* ff3.6+ */
background: -webkit-gradient(linear, left top, right bottom, color-stop(0%,#e0f3fa), color-stop(51%,#d8f0fc), color-stop(51%,#44b2ff), color-stop(100%,#b6dffd));
        /* chrome,safari4+ */
background: -webkit-linear-gradient(-45deg, #e0f3fa 0%,#d8f0fc 51%,#44b2ff 51%,#b6dffd 100%);
        /* chrome10+,safari5.1+ */
background: -o-linear-gradient(-45deg, #e0f3fa 0%,#d8f0fc 51%,#44b2ff 51%,#b6dffd 100%);
        /* opera 11.10+ */
background: -ms-linear-gradient(-45deg, #e0f3fa 0%,#d8f0fc 51%,#44b2ff 51%,#b6dffd 100%);
        /* ie10+ */
background: linear-gradient(135deg, #e0f3fa 0%,#d8f0fc 51%,#44b2ff 51%,#b6dffd 100%);
        /* w3c */
filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#e0f3fa', endColorstr='#b6dffd',GradientType=1 );
        /* ie6-8 fallback on horizontal gradient */padding: 10px; width: 944px; margin-top: 5px;
        margin-bottom: 5px; font-weight: bolder;">
        لیست کتاب های رایج و معمولی</div>
    <div id="menu">
        <table>
            <tr>
                <td>
                    <ul id="nav">
                        <li>
                            <div>
                                <a style="font-family: koodakEbook; font-size: 15px; color: #008EDB; cursor: pointer;">
                                    <img src='<%= ResolveUrl("content/images/category.png") %>' /></a>
                            </div>
                            <ul>
                                <li><a>ادبیات</a>
                                    <ul>
                                        <li><a href="http://ebook.shaahr.com/?cat=1">زندگینامه</a></li>
                                        <li><a href="http://ebook.shaahr.com/?cat=2">خودزیستنامه</a></li>
                                        <li><a href="http://ebook.shaahr.com/?cat=3">سفر نامه</a></li>
                                        <li><a href="http://ebook.shaahr.com/?cat=4">دیوان اشعار</a></li>
                                    </ul>
                                </li>
                                <li><a>دین و آیین</a>
                                    <ul>
                                        <li><a href="http://ebook.shaahr.com/?cat=5">اسلام</a></li>
                                        <li><a href="http://ebook.shaahr.com/?cat=6">مسیحیت</a></li>
                                        <li><a href="http://ebook.shaahr.com/?cat=7">یهودیت</a></li>
                                        <li><a href="http://ebook.shaahr.com/?cat=8">زردشت</a></li>
                                        <li><a href="http://ebook.shaahr.com/?cat=9">مذاهب دیگر</a></li>
                                    </ul>
                                </li>
                                <li><a>علوم اجتماعی</a>
                                    <ul>
                                        <li><a href="http://ebook.shaahr.com/?cat=10">اقتصاد و مدیریت</a></li>
                                        <li><a href="http://ebook.shaahr.com/?cat=11">جامعه شناسی </a></li>
                                        <li><a href="http://ebook.shaahr.com/?cat=12">روانشناسی</a></li>
                                        <li><a href="http://ebook.shaahr.com/?cat=13">حقوق </a></li>
                                        <li><a href="http://ebook.shaahr.com/?cat=14">جامعه</a></li>
                                        <li><a href="http://ebook.shaahr.com/?cat=15">خانواده </a></li>
                                        <li><a href="http://ebook.shaahr.com/?cat=16">قضایی</a></li>
                                        <li><a href="http://ebook.shaahr.com/?cat=17">کشاورزی </a></li>
                                        <li><a href="http://ebook.shaahr.com/?cat=18">موفقیت و امید</a></li>
                                    </ul>
                                </li>
                                <li><a>تاریخ و سیاست</a>
                                    <ul>
                                        <li><a href="http://ebook.shaahr.com/?cat=19">تاریخ ایران</a></li>
                                        <li><a href="http://ebook.shaahr.com/?cat=20">تاریخ جهان</a></li>
                                        <li><a href="http://ebook.shaahr.com/?cat=21">تاریخ اسلام</a></li>
                                        <li><a href="http://ebook.shaahr.com/?cat=22">سیاست</a> </li>
                                        <li><a href="http://ebook.shaahr.com/?cat=23">علوم سیاسی و روابط بین الملل</a></li>
                                    </ul>
                                </li>
                                <li><a>دانش و فناوری</a>
                                    <ul>
                                        <li><a href="http://ebook.shaahr.com/?cat=24">فیزیک ، ریاضیات و شیمی</a></li>
                                        <li><a href="http://ebook.shaahr.com/?cat=25">زبان و زبان شناسی</a></li>
                                        <li><a href="http://ebook.shaahr.com/?cat=26">علوم زمین</a></li>
                                        <li><a href="http://ebook.shaahr.com/?cat=27">متافیزیک</a></li>
                                        <li><a href="http://ebook.shaahr.com/?cat=28">شیمی </a></li>
                                        <li><a href="http://ebook.shaahr.com/?cat=29">ریاضی </a></li>
                                        <li><a href="http://ebook.shaahr.com/?cat=30">فیزیک </a></li>
                                        <li><a href="http://ebook.shaahr.com/?cat=31">نجوم </a></li>
                                        <li><a href="http://ebook.shaahr.com/?cat=32">جغرافیا </a></li>
                                        <li><a href="http://ebook.shaahr.com/?cat=88">دروس تحصیلی و دانشگاهی</a></li>
                                        <li><a href="http://ebook.shaahr.com/?cat=89">علم و دانش</a></li>
                                    </ul>
                                </li>
                                <li><a>فرهنگ و هنر</a>
                                    <ul>
                                        <li><a href="http://ebook.shaahr.com/?cat=33">هنرهای نمایشی</a></li>
                                        <li><a href="http://ebook.shaahr.com/?cat=34">هنرهای تجسمی </a></li>
                                        <li><a href="http://ebook.shaahr.com/?cat=35">تاریخ سبک های هنر</a></li>
                                        <li><a href="http://ebook.shaahr.com/?cat=36">طراحی و نقاشی </a></li>
                                        <li><a href="http://ebook.shaahr.com/?cat=37">موسیقی</a></li>
                                        <li><a href="http://ebook.shaahr.com/?cat=38">عکاسی </a></li>
                                        <li><a href="http://ebook.shaahr.com/?cat=39">فرهنگ ایران</a></li>
                                        <li><a href="http://ebook.shaahr.com/?cat=40">فرهنگ جهان </a></li>
                                    </ul>
                                </li>
                                <li><a>فلسفه و عرفان</a>
                                    <ul>
                                        <li><a href="http://ebook.shaahr.com/?cat=41">فلسفه اسلامی</a></li>
                                        <li><a href="http://ebook.shaahr.com/?cat=42">فلسفه غرب</a></li>
                                        <li><a href="http://ebook.shaahr.com/?cat=43">عرفان</a></li>
                                        <li><a href="http://ebook.shaahr.com/?cat=44">فقه اسلامی</a></li>
                                        <li><a href="http://ebook.shaahr.com/?cat=45">فلسفه های مضاف</a></li>
                                        <li><a href="http://ebook.shaahr.com/?cat=46">منطق</a></li>
                                    </ul>
                                </li>
                                <li><a>مهندسی</a>
                                    <ul>
                                        <li><a href="http://ebook.shaahr.com/?cat=47">برق و الکترونیک</a></li>
                                        <li><a href="http://ebook.shaahr.com/?cat=48">عمران </a></li>
                                        <li><a href="http://ebook.shaahr.com/?cat=49">معماری</a></li>
                                        <li><a href="http://ebook.shaahr.com/?cat=50">رباتیک </a></li>
                                        <li><a href="http://ebook.shaahr.com/?cat=51">مهندسی آب</a></li>
                                        <li><a href="http://ebook.shaahr.com/?cat=52">مهندسی کشاورزی </a></li>
                                        <li><a href="http://ebook.shaahr.com/?cat=53">مکانیک</a></li>
                                        <li><a href="http://ebook.shaahr.com/?cat=54">منابع طبیعی</a></li>
                                    </ul>
                                </li>
                                <li><a>پزشکی</a>
                                    <ul>
                                        <li><a href="http://ebook.shaahr.com/?cat=56">تغذیه</a></li>
                                        <li><a href="http://ebook.shaahr.com/?cat=57">پزشکی ، پیراپزشکی</a></li>
                                        <li><a href="http://ebook.shaahr.com/?cat=58">دانپزشکی</a></li>
                                    </ul>
                                </li>
                                <li><a>کامپیوتر</a>
                                    <ul>
                                        <li><a href="http://ebook.shaahr.com/?cat=59">نرم افزار</a></li>
                                        <li><a href="http://ebook.shaahr.com/?cat=60">سخت افزار </a></li>
                                        <li><a href="http://ebook.shaahr.com/?cat=61">اینترنت</a></li>
                                        <li><a href="http://ebook.shaahr.com/?cat=62">مبانی </a></li>
                                        <li><a href="http://ebook.shaahr.com/?cat=63">برنامه نویسی</a></li>
                                        <li><a href="http://ebook.shaahr.com/?cat=64">نفوذ و امنیت و هک</a></li>
                                        <li><a href="http://ebook.shaahr.com/?cat=65">تجارت اکترونیک</a></li>
                                        <li><a href="http://ebook.shaahr.com/?cat=66">شبکه </a></li>
                                        <li><a href="http://ebook.shaahr.com/?cat=67">طراحی و گرافیک</a></li>
                                        <li><a href="http://ebook.shaahr.com/?cat=68">سیستم عامل </a></li>
                                        <li><a href="http://ebook.shaahr.com/?cat=69">فن آوری اطلاعات</a></li>
                                        <li><a href="http://ebook.shaahr.com/?cat=70">آی تی </a></li>
                                        <li><a href="http://ebook.shaahr.com/?cat=71">آی سی تی</a></li>
                                        <li><a href="http://ebook.shaahr.com/?cat=72">وب مستر </a></li>
                                    </ul>
                                </li>
                                <li><a>زبان</a>
                                    <ul>
                                        <li><a href="http://ebook.shaahr.com/?cat=73">فارسی و پارسی</a></li>
                                        <li><a href="http://ebook.shaahr.com/?cat=74">انگلیسی </a></li>
                                        <li><a href="http://ebook.shaahr.com/?cat=75">فرانسه</a></li>
                                        <li><a href="http://ebook.shaahr.com/?cat=76">زبان های دیگر</a></li>
                                    </ul>
                                </li>
                                <li><a>سینما و تئاتر</a>
                                    <ul>
                                        <li><a href="http://ebook.shaahr.com/?cat=77">فیلنامه و نمایشنامه</a></li>
                                        <li><a href="http://ebook.shaahr.com/?cat=78">مبانی فنی سینما </a></li>
                                        <li><a href="http://ebook.shaahr.com/?cat=79">نقد فیلم</a></li>
                                        <li><a href="http://ebook.shaahr.com/?cat=80">بیوگرافی </a></li>
                                        <li><a href="http://ebook.shaahr.com/?cat=81">داستان و داستان کوتاه </a></li>
                                    </ul>
                                </li>
                                <li><a>سایر موضوعات</a>
                                    <ul>
                                        <li><a href="http://ebook.shaahr.com/?cat=82">بانوان</a></li>
                                        <li><a href="http://ebook.shaahr.com/?cat=83">کودک</a></li>
                                        <li><a href="http://ebook.shaahr.com/?cat=84">محیط زیست</a></li>
                                        <li><a href="http://ebook.shaahr.com/?cat=85">خودرو</a></li>
                                        <li><a href="http://ebook.shaahr.com/?cat=86">ورزشی</a></li>
                                        <li><a href="http://ebook.shaahr.com/?cat=87">کنکور</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </td>
                <td>
                    <div style="width: 150px; -moz-border-radius: 5px; -webkit-border-radius: 5px; border-radius: 5px;
                        height: 35px; padding: 5px; margin: 0; background-color: #F3F8F1; border: 1px solid #7AD1F5;">
                        <div>
                            <asp:Label ID="lblAllBook" runat="server" Text="Label"></asp:Label>
                        </div>
                        <div>
                            <asp:Label ID="lblAllDownload" runat="server" Text="Label"></asp:Label>
                        </div>
                    </div>
                </td>
            </tr>
        </table>
    </div>
    <div>
        <div style="float: right; padding: 5px;">
            <asp:DataList ID="DL_Ebook" runat="server" RepeatColumns="6" RepeatDirection="Horizontal">
                <ItemTemplate>
                    <div style="border-top: 1px solid #ccc; border-left: 1px solid #ccc; border-right: 1px solid #ccc;
                        -moz-border-radius: 5px 5px 0px 0px; -webkit-border-radius: 5px 5px 0px 0px;
                        padding: 5px; border-radius: 5px 5px 0px 0px; box-shadow: 2px 2px 5px #D6E1E7;
                        width: 146px;height:170px;">
                        <table class="style1">
                            <tr>
                                <td>
                                    <h3>
                                        <a href='<%# Eval("code", "{0}")+"/"+Eval("title", "{0}")+".html" %>' target="_blank"
                                            style="text-decoration: none; color: Black;">
                                            <asp:Label ID="TitleLabel" Style="font: normal 11px tahoma;" runat="server" Text='<%# Eval("Title") %>' />
                                        </a>
                                    </h3>
                                </td>
                            </tr>
                            <tr>
                                <td style="text-align: center">
                                    <a href='<%# Eval("code", "{0}")+"/"+Eval("title", "{0}")+".html" %>' target="_blank"
                                        style="text-decoration: none; color: Black; font-size: 12px;">
                                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("PicturePath", "~/management/images/{0}") %>'
                                            Height="120px" Width="130px" />
                                    </a>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div style="font-family: koodakEbook; font-size: large; background-color: #F3F8F1;
                        box-shadow: 2px 2px 5px #D6E1E7; text-align: center; border: 1px solid #ccc;
                        -moz-border-radius: 0px 0px 0px 0px; -webkit-border-radius: 0px 0px 0px 0px;
                        border-radius: 0px 0px 0px 0px;">
                        <a href='<%# Eval("code", "{0}")+"/"+Eval("title", "{0}")+".html" %>' target="_blank"
                            style="text-decoration: none; color: Black; font-size: 12px;">ادامه مطلب </a>
                    </div>
                    <div style="font-family: koodakEbook; font-size: large; background-color: #F1FA69;
                        box-shadow: 2px 2px 5px #D6E1E7; text-align: center; border: 1px solid #ccc;
                        -moz-border-radius: 0px 0px 5px 5px; -webkit-border-radius: 0px 0px 5px 5px;
                        border-radius: 0px 0px 5px 5px;">
                    </div>
                </ItemTemplate>
            </asp:DataList>
            <selectparameters>
                    <asp:QueryStringParameter DefaultValue=" " Name="title" QueryStringField="search"
                        Type="String" />
                </selectparameters>
            </asp:ObjectDataSource>
            <table>
                <tr>
                    <td>
                        <div id="div_pre" runat="server" class="PreNext">
                            <asp:HyperLink Style="text-decoration: none; color: Black;" runat="server" ID="lnkPrev">     <<<<< صفحه قبلی </asp:HyperLink></div>
                    </td>
                    <td>
                        <div id="div_next" runat="server" class="PreNext">
                            <asp:HyperLink Style="text-decoration: none; color: Black;" ID="lnkNext" runat="server">صفحه بعدی >>>>> </asp:HyperLink></div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblCurrentPage" runat="server"></asp:Label>
                    </td>
                    <td>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
