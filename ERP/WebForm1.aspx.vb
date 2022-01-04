Imports System.Data.SqlClient
Public Class WebForm1
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection
    Dim cmd As New SqlCommand
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        con = New SqlConnection("Data Source=LAPTOP-0PI4KRF7\SQLEXPRESS;Initial Catalog=ERP;Integrated Security=True")
        'Dim Data As New DataTable
        'Dim adapter As New SqlDataAdapter
        'adapter = New SqlDataAdapter("select logo from company1 where cid = '" & TextBox1.Text & "'", con)
        'Dim commandbuild As New SqlCommandBuilder(adapter)
        'adapter.Fill(Data)
        'Dim picbyte() As Byte = Data.Rows(0).Item("logo")
        'Dim base64String As String = Convert.ToBase64String(picbyte)
        'Image1.ImageUrl = String.Format("data:image/jpg;base64,{0}", base64String)
        con.Open()
        cmd.Connection = con
        cmd.CommandText = "delete from questions where qid = '" & TextBox1.Text & "'"
        cmd.ExecuteNonQuery()
        con.Close()
    End Sub
End Class