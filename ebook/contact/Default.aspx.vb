
Partial Class ebook_contact_Default
    Inherits System.Web.UI.Page
    Dim ClassContact As New Contact



    Dim DS_CMS_Contact As New Contact



    Protected Sub btnSend_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSend.Click
        Try
            DS_CMS_Contact.Insret_contact(txtFnLn.Text, txtEmail.Text, txtTell.Text, cmbGroup.Text, txtCuase.Text, Request.UserHostAddress, ShamsiDate.Miladi2Shamsi(Now, ShamsiDate.ShowType.ShortDate) + "/" + Now.TimeOfDay.ToString.Substring(0, 8))
            MultiView1.ActiveViewIndex = 1
        Catch ex As Exception

        End Try
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Title = "تماس با شهر کتاب"
    End Sub
End Class
