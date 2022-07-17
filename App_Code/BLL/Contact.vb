Imports Microsoft.VisualBasic
Imports System.Data

Public Class Contact

    Dim DS_Contact As New DS_MyShaahrTableAdapters.Select_Contact_AllTableAdapter

    Public Function Select_contact() As DataTable
        Return DS_Contact.GetData
    End Function

    Public Function Insret_contact(ByVal FnLn As String, ByVal email As String, _
                                 ByVal tell As String, ByVal Group As String, ByVal cuase As String, ByVal ip As String, ByVal date_ As String) As Boolean
        'Try
        DS_Contact.InsertContact(FnLn, email, tell, Group, cuase, 0, ip, date_)

        'Return True
        'Catch ex As Exception
        '    Return False
        'End Try
    End Function

    Public Function Delete_contact(ByVal id As Long) As Boolean
        DS_Contact.CMS_Delete_Contact(Id)
    End Function

End Class
