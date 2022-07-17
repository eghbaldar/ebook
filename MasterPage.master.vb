
Partial Class MasterPage
    Inherits System.Web.UI.MasterPage

    Dim classEbook As New Ebook

    Protected Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            classEbook.UpdateVisitWebsite()
            'TextBox1.Text = Request.QueryString("search")
        End If

    End Sub

    Protected Sub btnSearch_Click(sender As Object, e As System.Web.UI.ImageClickEventArgs) Handles btnSearch.Click
        If textbox1.Text <> "جستجو..." Then
            Response.Redirect("~\?search=" + textbox1.Text)
            '.Replace("ی", "ي")
        Else
            Response.Redirect("~\")
        End If

    End Sub

End Class

