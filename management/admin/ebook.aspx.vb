
Partial Class management_admin_ebook
    Inherits System.Web.UI.Page
    Dim classEbook As New Ebook
    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        Title = "اضافه کردن کتاب جدید"
        If Not IsPostBack Then txtLink.Text = Guid.NewGuid.ToString.Trim
    End Sub


    Protected Sub btnInsert_Click(sender As Object, e As System.EventArgs) Handles btnInsert.Click

        Dim R As Boolean
        If RblShow.Items(0).Selected Then R = True
        If RblShow.Items(1).Selected Then R = False

        Dim Rnd As New Random
        Dim Filename As String = Rnd.Next(1, 1000).ToString + "-" + Guid.NewGuid().ToString().Replace("-", "")
        Dim FileInfo As New System.IO.FileInfo(FileUpload.FileName)
        FileUpload.SaveAs(MapPath("~\management\images\" + Filename + FileInfo.Extension))
        classEbook.InsertBook(txtTitle.Text, "http://shaahr.net/files/ebook/" + txtLink.Text.Trim + ".pdf", Filename + FileInfo.Extension, txtDetail.Text, R, txtCategory.Text)
        DL_Ebook.DataBind()

    End Sub
    Public Sub Download(sender As Object, e As CommandEventArgs)

    End Sub
End Class
