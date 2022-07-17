
Partial Class management_admin_category
    Inherits System.Web.UI.Page
    Dim classEbook As New Ebook
    Protected Sub btnInsert_Click(sender As Object, e As System.EventArgs) Handles btnInsert.Click
        classEbook.InsertCat(txtInsert.Text)
        dg.DataBind()
    End Sub
End Class
