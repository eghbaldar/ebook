Imports System.Net
Imports System.Data.SqlClient
Imports System.Data

Partial Class detailpdf
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Title = "جزیات کتاب"
        Try

            Dim sqlconn As New SqlConnection(ConfigurationManager.ConnectionStrings("shaahrEbookConnectionString").ConnectionString)
            Dim sqlcom As New SqlCommand("SELECT * FROM [tbl_shaahr_Book] WHERE show=1 and [Code] = " + Page.RouteData.Values("code").ToString, sqlconn)
            Dim sqlda As New SqlDataAdapter(sqlcom)
            Dim ds As New DataSet
            sqlconn.Open()
            sqlda.Fill(ds)
            DL_Ebook.DataSource = ds.Tables(0)
            DL_Ebook.DataBind()
            sqlconn.Close()

        Catch ex As Exception

        End Try
    End Sub

    Dim ClassEbook As New Ebook

    Public Sub Download(ByVal sender As Object, ByVal e As CommandEventArgs)


        Dim s As String() = e.CommandArgument.ToString.Split("|")
        ClassEbook.UpdateDownload(s(1))
        Response.Redirect(s(0))



    End Sub

    Public Sub Show(ByVal sender As Object, ByVal e As CommandEventArgs)

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

End Class
