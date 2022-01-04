Imports System.Data.SqlClient
Public Class Register
    Inherits System.Web.UI.Page
    Dim gender As String
    Dim com As SqlCommand
    Dim getmob As String
    Dim dr As SqlDataReader
    Dim con As New SqlConnection
    Dim cmd As New SqlCommand
    Protected Sub Button1_Click(sender As Object, e As EventArgs)
        
    End Sub

    Protected Sub btn_Click(sender As Object, e As EventArgs) Handles btn.Click
        con = New SqlConnection("Data Source=LAPTOP-0PI4KRF7\SQLEXPRESS;Initial Catalog=ERP;Integrated Security=True")
        con.Open()
        cmd.Connection = con
        cmd.CommandText = "select * from login1 where email='" & TextBox4.Text & "' "
        dr = cmd.ExecuteReader
        If (respondant.Checked = False And company.Checked = False) Then
            MsgBox("Please choose a Role", MsgBoxStyle.Critical)
        ElseIf dr.HasRows Then
            MsgBox("Email Id Already Registered", MsgBoxStyle.Critical)
            con.Close()
        ElseIf (company.Checked = True) Then
            con = New SqlConnection("Data Source=LAPTOP-0PI4KRF7\SQLEXPRESS;Initial Catalog=ERP;Integrated Security=True")
            cmd = New SqlCommand("insert into login1(username,password,c_password,email,usertype)values(@username,@password,@c_password,@email,@usertype)", con)
            cmd.Parameters.AddWithValue("username", TextBox1.Text)
            cmd.Parameters.AddWithValue("password", TextBox2.Text)
            cmd.Parameters.AddWithValue("c_password", TextBox3.Text)
            cmd.Parameters.AddWithValue("email", TextBox4.Text)
            cmd.Parameters.AddWithValue("usertype", company.Text)
            con.Open()
            cmd.ExecuteNonQuery()
            con.Close()
            Response.Redirect("~/CompanyReg.aspx")
        ElseIf (respondant.Checked = True) Then
            con = New SqlConnection("Data Source=LAPTOP-0PI4KRF7\SQLEXPRESS;Initial Catalog=ERP;Integrated Security=True")
            cmd = New SqlCommand("insert into login1(username,password,c_password,email,usertype)values(@username,@password,@c_password,@email,@usertype)", con)
            cmd.Parameters.AddWithValue("username", TextBox1.Text)
            cmd.Parameters.AddWithValue("password", TextBox2.Text)
            cmd.Parameters.AddWithValue("c_password", TextBox3.Text)
            cmd.Parameters.AddWithValue("email", TextBox4.Text)
            cmd.Parameters.AddWithValue("usertype", respondant.Text)
            con.Open()
            cmd.ExecuteNonQuery()
            con.Close()
            Response.Redirect("~/Resreg.aspx")
        End If
    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

    End Sub
End Class