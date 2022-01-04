Imports System.Data.SqlClient
Public Class suurveyres
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection
    Dim cmd, cmd2 As New SqlCommand
    Dim dr2 As SqlDataReader
    Dim varr, varr2 As String
    Dim str As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Str = Session("name")
    End Sub

    Public Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Response.Redirect("~/Respques.aspx")
    End Sub

    Protected Sub Button4_Click(sender As Object, e As EventArgs) Handles Button4.Click
        Response.Redirect("~/Resques1.aspx")
    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        Response.Redirect("~/Respques2.aspx")
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Response.Redirect("~/Respques3.aspx")
    End Sub
End Class