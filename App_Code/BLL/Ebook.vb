Imports Microsoft.VisualBasic

Public Class Ebook

    Dim DS_Ebook As New ds_EbookTableAdapters.shaahr_BookTableAdapter
    Dim DS_Query As New ds_EbookTableAdapters.Query
    Dim DS_Cat As New ds_EbookTableAdapters.shaahr_categoryTableAdapter

    Public Function InsertBook(Title As String, FileLink As String, PicturePath As String, Details As String, show As Boolean, codeCat As Integer) As Boolean
        'Try
        DS_Ebook.insertEbook(Title, "0", "0", FileLink, PicturePath, Details, Date.Now, show, codeCat)
        '    Return True
        'Catch ex As Exception
        '    Return False
        'End Try
    End Function

    Public Function UpdateVisit(code As Long) As Boolean
        DS_Ebook.UpdateVisit(code)
    End Function

    Public Function UpdateVisitWebsite() As Boolean
        DS_Query.UpdateVisiteWehbsite()
    End Function

    Public Function UpdateDownload(code As Long) As Boolean
        DS_Ebook.UpdateDownload(code)
    End Function

    Public Function getAlldownloaded() As String
        Return DS_Query.getAllDownload
    End Function

    Public Function getVisitedWebsite() As String
        Return DS_Query.getVisitedWebsite
    End Function

    Public Function getCountBook() As String
        Return DS_Query.getAllCountBook
    End Function

    Public Function InsertCat(name As String) As Boolean
        Try
            DS_Cat.InsertCat(name)
            Return True
        Catch ex As Exception
            Return False
        End Try

    End Function

End Class
