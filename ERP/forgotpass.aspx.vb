Imports System.Data.SqlClient
Imports System.Net.Mail
Public Class forgotpass
    Inherits System.Web.UI.Page
    Dim randomcode As String
    Public Shared emailto As String
    Dim uname As String
    Dim pwd As String
    Dim Smtp_Server As New SmtpClient
    Dim e_mail As New MailMessage()
    Dim mess, mess1, mess2, fm As String
    Dim con As New SqlConnection
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'vcode.Visible = False
        'Button1.Visible = False
        Label1.Visible = False
        Label2.Visible = False
    End Sub

    Public Sub verify_Click(sender As Object, e As EventArgs) Handles verify.Click
        con = New SqlConnection("Data Source=LAPTOP-0PI4KRF7\SQLEXPRESS;Initial Catalog=ERP;Integrated Security=True")
        con.Open()
        cmd.Connection = con
        cmd.CommandText = "select *from login1 where email='" & email.Text & "' "
        dr = cmd.ExecuteReader
        If (dr.HasRows = 0) Then
            MsgBox("Email Id Has Not Been Registered", MsgBoxStyle.Critical)
            con.Close()
        Else
            Dim rand As Random = New Random()
            randomcode = (rand.Next(999999)).ToString()
            emailto = email.Text
            Try
                mess1 = vbCrLf & "Thank you for verifying your email with SurveyYo " & vbCrLf
                mess2 = vbCrLf & "Your reset code  is : " + randomcode
                Smtp_Server.UseDefaultCredentials = False
                Smtp_Server.Credentials = New Net.NetworkCredential("surveyyo420@gmail.com", "Survey@123")
                Smtp_Server.Port = 587
                Smtp_Server.EnableSsl = True
                Smtp_Server.Host = "smtp.gmail.com"
                e_mail = New MailMessage()
                e_mail.From = New MailAddress("surveyyo420@gmail.com", "Survey yo")
                e_mail.To.Add(emailto)
                e_mail.Subject = "Recovery Code "
                e_mail.IsBodyHtml = False
                fm = String.Concat(mess1, mess2)
                e_mail.Body = fm
                Smtp_Server.Send(e_mail)
                Response.Write("<script LANGUAGE='JavaScript' >alert('Verification code sent to Gmail!!')</script>")
            Catch error_t As Exception
                MsgBox(error_t.ToString)
            End Try
            vcode.Visible = True
            Button1.Visible = True
            Label1.Text = randomcode
        End If
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Label2.Text = vcode.Text
        If (Label1.Text = Label2.Text) Then
            Response.Redirect("~/forgotpass2.aspx")
        End If
    End Sub

    Protected Sub vcode_TextChanged(sender As Object, e As EventArgs) Handles vcode.TextChanged

    End Sub
End Class