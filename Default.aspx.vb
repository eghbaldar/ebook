Imports System.Net
Imports System.Data.SqlClient
Imports System.Data

Partial Class _Default
    Inherits System.Web.UI.Page

    Dim ClassEbook As New Ebook

    Public Sub Show(sender As Object, e As CommandEventArgs)

        Dim s As String() = e.CommandArgument.ToString.Split("|")
        'ClassEbook.UpdateDownload(s(1))
        'Response.Redirect(s(0))
        '-------------
        Dim path As String = s(0)
        Dim client As New WebClient()
        Dim buffer As [Byte]() = client.DownloadData(path)

        If buffer IsNot Nothing Then
            Response.ContentType = "application/pdf"
            Response.AddHeader("content-length", buffer.Length.ToString())
            Response.BinaryWrite(buffer)
        End If

    End Sub

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load

        Title = "شهر کتاب"
        
        Fill(Request.QueryString("cat"), Request.QueryString("search"))
        lblAllBook.Text = String.Format("کل کتاب ها: {0}", ClassEbook.getCountBook)
        lblAllDownload.Text = String.Format("کل دانلود ها: {0}", ClassEbook.getAlldownloaded)

    End Sub

    Sub Fill(Cat As String, search As String)

        Try

            Dim conn As SqlConnection
            Dim ds As New DataSet
            Dim comm As New SqlCommand
            Dim adapter As New SqlDataAdapter

            ' Read the connection string from Web.config
            Dim connectionString As String = ConfigurationManager.ConnectionStrings("shaahrEbookConnectionString").ConnectionString.ToString

            ' Initialize connection
            conn = New SqlConnection(connectionString)
            comm.Connection = conn
            comm.CommandText = "SELECT * FROM tbl_shaahr_Book where show=1 and title like N'%" + search + "%'  and cast(code_category as varchar) like '%" + Cat + _
                "%'  order by code desc"
            'use a stored proc
            adapter.SelectCommand = comm

            adapter.Fill(ds)

            Dim objPds As PagedDataSource = New PagedDataSource
            objPds.DataSource = ds.Tables(0).DefaultView

            objPds.AllowPaging = True
            objPds.PageSize = 30

            Dim CurPage As Integer

            If Not (Request.QueryString("Page") Is Nothing) Then
                CurPage = Convert.ToInt32(Request.QueryString("Page"))
            Else
                CurPage = 1
            End If

            objPds.CurrentPageIndex = CurPage - 1

            lblCurrentPage.Text = "صفحه جاری: " + CurPage.ToString

            If Not objPds.IsFirstPage Then
                lnkPrev.NavigateUrl = Request.CurrentExecutionFilePath + "?Page=" + Convert.ToString(CurPage - 1)
                div_pre.Style.Add("background-color", "#BFE8FB")
            End If


            If Not objPds.IsLastPage Then
                lnkNext.NavigateUrl = Request.CurrentExecutionFilePath + "?Page=" + Convert.ToString(CurPage + 1)
                div_next.Style.Add("background-color", "#BFE8FB")
            End If


            DL_Ebook.DataSource = objPds

            DL_Ebook.DataBind()

            conn.Close()
        Catch ex As Exception

        End Try

    End Sub

End Class
