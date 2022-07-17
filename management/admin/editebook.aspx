<%@ Page Title="" Language="VB" MasterPageFile="~/management/admin/CMS.master" AutoEventWireup="false"
    CodeFile="editebook.aspx.vb" Inherits="management_admin_editebook" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../../content/menu/style.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Button ID="Button1" runat="server" Text="show" />
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
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
        DataKeyNames="Code" DataSourceID="SDS" PageSize="25">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Code" HeaderText="Code" InsertVisible="False" ReadOnly="True"
                SortExpression="Code" />
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:TemplateField HeaderText="Count_Visit" SortExpression="Count_Visit" >
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Count_Visit") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Count_Visit") %>'   ></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Count_Download" SortExpression="Count_Download">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Count_Download") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Count_Download") %>' ></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="FileLink" HeaderText="FileLink" 
                SortExpression="FileLink" />
            <asp:TemplateField HeaderText="PicturePath" SortExpression="PicturePath">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("PicturePath") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("PicturePath") %>' ></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Details" SortExpression="Details">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Height="116px" Text='<%# Bind("Details") %>'
                        TextMode="MultiLine" Width="258px"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Details") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Date" SortExpression="Date" >
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Date") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("Date") %>' ></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CheckBoxField DataField="Show" HeaderText="Show" SortExpression="Show" />
            <asp:BoundField DataField="Code_Category" HeaderText="Code_Category" 
                SortExpression="Code_Category" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SDS" runat="server" ConnectionString="<%$ ConnectionStrings:shaahrEbookConnectionString %>"
        SelectCommand="SELECT * FROM [tbl_shaahr_Book] ORDER BY [Code] DESC" DeleteCommand="DELETE FROM tbl_shaahr_Book WHERE (Code = @code)"
        UpdateCommand="UPDATE tbl_shaahr_Book SET Title = @Title, Count_Visit = @Count_Visit, Count_Download = @Count_Download, FileLink = @FileLink, PicturePath = @PicturePath, Details = @Details, Date = @Date, Show = @Show, Code_Category = @Code_Category WHERE (Code = @code)">
        <DeleteParameters>
            <asp:Parameter Name="code" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="Title" />
            <asp:Parameter Name="Count_Visit" />
            <asp:Parameter Name="Count_Download" />
            <asp:Parameter Name="FileLink" />
            <asp:Parameter Name="PicturePath" />
            <asp:Parameter Name="Details" />
            <asp:Parameter Name="Date" />
            <asp:Parameter Name="Show" />
            <asp:Parameter Name="Code_Category" />
            <asp:Parameter Name="code" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
