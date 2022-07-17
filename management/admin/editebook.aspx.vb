
Partial Class management_admin_editebook
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        Title = "ویرایش کتاب"
        If Request.QueryString("b") = "True" Then getVisible(True)

    End Sub

    Public Function getVisible(ByVal b As Boolean) As Boolean
        Return b
    End Function

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        If Request.QueryString("b") = "True" Then getVisible(True)
    End Sub

End Class
