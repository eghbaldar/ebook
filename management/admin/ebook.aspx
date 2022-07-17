<%@ Page Title="" Language="VB" MasterPageFile="~/management/admin/CMS.master" AutoEventWireup="false"
    CodeFile="ebook.aspx.vb" Inherits="management_admin_ebook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../../content/menu/style.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style4
        {
            width: 28px;
        }
        .style3
        {
            width: 19px;
            height: 17px;
        }
        .style13
        {
            width: 180px;
        }
        .style14
        {
            color: #FF66FF;
            font-weight: bold;
        }
        .style15
        {
            color: #009900;
            font-weight: bold;
        }
    </style>
        <style type="text/css">
        @font-face
        {
            font-family: 'koodakEbook';
            src: url(      '../../content/font/W_koodak.eot' );
            src: url(      '../../content/font/W_koodak.eot?#iefix' ) format(      'embedded-opentype' ), url('../content/font/W_koodak.woff' ) format(      'woff' ), url('../../content/font/W_koodak.TTF' ) format(      'truetype' );
        }

            .style16
            {
                color: #FF0000;
            }
            
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table class="style1">
        <tr>
            <td>
                <b>اضافه کردن کتب جدید</b>
            </td>
        </tr>
        <tr>
            <td>
                <table class="style1">
                    <tr>
                        <td class="style13">
                            عنوان:
                        </td>
                        <td>
                            <asp:TextBox ID="txtTitle" runat="server" Style="font-family: Tahoma" Width="327px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style13">
                            لینک فایل:
                        </td>
                        <td>
                            <asp:TextBox ID="txtLink" runat="server" Style="font-family: Tahoma; text-align: left;
                                direction: ltr;" Width="557px">http://shaahr.net/files/ebook/</asp:TextBox>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td class="style13">
                            عکس:&nbsp;
                            <br />
                            <span class="style15">(عرض: 246 پیکسل)</span><br />
                            <span class="style14">(ارتفاع: 198 پیکسل)</span>
                        </td>
                        <td>
                            <asp:FileUpload ID="FileUpload" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style13">
                            توضیحات: 
                            <br />
                            <span class="style16">(حداکثر <b>هشت</b> خط و یا 50کلمه&nbsp; میانگین 5 حرفی) </span>
                        </td>
                        <td>
                            <asp:TextBox ID="txtDetail" runat="server" Height="166px" Style="font-family: Tahoma"
                                TextMode="MultiLine" Width="256px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style13">
                            وضعیت نمایش:
                        </td>
                        <td>
                            <asp:RadioButtonList ID="RblShow" runat="server">
                                <asp:ListItem Value="1" Selected="True">نمایش</asp:ListItem>
                                <asp:ListItem Value="0">عدم نمایش</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td class="style13">
                            دسته کتاب:&nbsp;</td>
                        <td>
                            <div>
                                <asp:TextBox ID="txtCategory" runat="server" 
                                    style="text-align: center; color: #FFFFFF; font-weight: 700; background-color: #CC0000" 
                                    Width="52px"></asp:TextBox></div>
                            <div>
                            

                            <ul id="nav">
                                <li>
                                    <div>
                                        <a style="font-family: koodakEbook; font-size: 15px; color: #008EDB;">
                                            <img src="../../content/images/category.png" /></a>
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
                                        <li><a>کاپیوتر</a>
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
                            
                            
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td class="style13">
                            &nbsp;
                        </td>
                        <td>
                            <asp:Button ID="btnInsert" runat="server" Style="font-family: Tahoma" Text="درج و نمایش" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <asp:DataList ID="DL_Ebook" runat="server" DataSourceID="ODS" RepeatColumns="3">
                    <ItemTemplate>
                        <div style="border: 1px solid #ccc; -moz-border-radius: 5px; -webkit-border-radius: 5px;
                            padding: 5px; border-radius: 5px; box-shadow: 2px 2px 5px #D6E1E7; width: 250px;
                            height: 415px;">
                            <table class="style1">
                                <tr>
                                    <td>
                                        <asp:Label ID="TitleLabel" Style="font-family: koodakEbook; font-size: 15px;" runat="server"
                                            Text='<%# Eval("Title") %>' />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="text-align: center">
                                        <asp:Image ID="Image1" runat="server" 
                                            ImageUrl='<%# Eval("PicturePath", "~\management\images\{0}") %>' Height="198px" 
                                            Width="246px" />
                                    </td>
                                </tr>
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
                                                    <img alt="" class="style3" src="../../content/images/show.png" />
                                                </td>
                                                <td>
                                                    <asp:Label ID="Count_VisitLabel" runat="server" Text='<%# Eval("Count_Visit") %>' />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style4">
                                                    <img alt="" class="style2" src="../../content/images/down.gif" style="height: 14px;
                                                        width: 10px" />
                                                </td>
                                                <td>
                                                    <asp:Label ID="Count_DownloadLabel" runat="server" Style="font-weight: 700" Text='<%# Eval("Count_Download") %>' />
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr style="text-align: center;">
                                    <td>
                                        <div style="font-family: koodakEbook; font-size: large; background-color: #F1FA69;
                                            -moz-border-radius: 5px; -webkit-border-radius: 5px; border-radius: 5px;">
                                            <asp:LinkButton ID="LinkButton1" runat="server" Style="text-decoration: none; color: Black;"
                                                OnCommand="Download" CommandArgument='<%# Eval("FileLink", "{0}") %>'>دانلود</asp:LinkButton>
                                        </div>
                                    </td>
                                </tr>
                            </table>
                            <br />
                        </div>
                    </ItemTemplate>
                </asp:DataList>
                <asp:ObjectDataSource ID="ODS" runat="server" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}"
                    SelectMethod="GetData" TypeName="ds_EbookTableAdapters.shaahr_LastBookTableAdapter">
                    <InsertParameters>
                        <asp:Parameter Name="Title" Type="String" />
                        <asp:Parameter Name="Count_Visit" Type="Int64" />
                        <asp:Parameter Name="Count_Download" Type="Int64" />
                        <asp:Parameter Name="FileLink" Type="String" />
                        <asp:Parameter Name="PicturePath" Type="String" />
                        <asp:Parameter Name="Details" Type="String" />
                        <asp:Parameter Name="_Date" Type="DateTime" />
                        <asp:Parameter Name="Show" Type="Boolean" />
                    </InsertParameters>
                </asp:ObjectDataSource>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
        </tr>
    </table>
</asp:Content>
