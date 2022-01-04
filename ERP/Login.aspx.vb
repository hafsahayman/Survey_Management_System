Imports System.Data.SqlClient
Public Class Login
    Inherits System.Web.UI.Page
    Dim com As SqlCommand
    Dim getmob, getutype As String
    Dim dr As SqlDataReader
    Dim con As New SqlConnection
    Dim cmd As New SqlCommand
    Dim objcon As SqlConnection = Nothing
    Dim objcmd As SqlCommand = Nothing
    Dim logid As Integer
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        objcon = New SqlConnection("Data Source=LAPTOP-0PI4KRF7\SQLEXPRESS;Initial Catalog=ERP;Integrated Security=True")
        objcon.Open()
        Dim stmt As String = "select *from login1 where username ='" & user.Text & "' AND password ='" & pass.Text & "' "
        cmd.CommandText = "select logid from login1 where username= '" & user.Text & "'"
        cmd.Connection = objcon
        logid = Convert.ToInt64(cmd.ExecuteScalar)
        objcmd = New SqlCommand(stmt, objcon)
        Dim reader As SqlDataReader = objcmd.ExecuteReader
        Session("name") = logid
        If reader.Read Then
            getutype = reader.GetValue(5).ToString
            If getutype = "Company" Then
                Response.Redirect("~/CompanyDashboard.aspx")
            End If
            If getutype = "Respondant" Then
                Response.Redirect("~/respdash.aspx")
            End If
        Else
            MsgBox("Invalid Username/Password", MsgBoxStyle.Information, "Failed")
            reader.Close()
            'getmob = "select *from login1 where username='" & user.Text & "'"
            'com = New SqlCommand(getmob, objcon)
            'dr = com.ExecuteReader()
            'If dr.Read() Then
            'End If
        End If
        
    End Sub
End Class