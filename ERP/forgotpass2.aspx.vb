Imports System.Data.SqlClient
Public Class forgotpass2
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection
    Dim cmd As New SqlCommand
    Dim o As String
    Dim nameCookie As HttpCookie
    Public Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        o = forgotpass.emailto
        Label1.Visible = False
    End Sub

    Protected Sub btn_Click(sender As Object, e As EventArgs) Handles btn.Click
        con = New SqlConnection("Data Source=LAPTOP-0PI4KRF7\SQLEXPRESS;Initial Catalog=ERP;Integrated Security=True")
        cmd = New SqlCommand("update login1 set password=@password,c_password=@c_password where email=@email", con)
        cmd.Parameters.AddWithValue("password", pwd.Text)
        cmd.Parameters.AddWithValue("c_password", cpwd.Text)
        cmd.Parameters.AddWithValue("email", o)
        con.Open()
        If (cmd.ExecuteScalar = 0) Then
            Response.Write("<script LANGUAGE='JavaScript' >alert('Reset Success')</script>")
            Response.Redirect("~/Login.aspx")
        Else
            Response.Write("<script LANGUAGE='JavaScript' >alert('Poda Po')</script>")
        End If

        con.Close()
    End Sub
End Class