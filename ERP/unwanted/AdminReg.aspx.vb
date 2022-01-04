Imports System.Data.SqlClient
Imports System.Net.Mail
Public Class AdminReg
    Inherits System.Web.UI.Page
    Dim gender As String
    Dim con As New SqlConnection
    Dim cmd As New SqlCommand
    Dim cmd2 As New SqlCommand
    Dim cmd3 As New SqlCommand
    Dim cmd4 As New SqlCommand
    Dim logid As Integer
    Dim emailto As String
    Dim uname As String
    Dim pwd As String
    Dim Smtp_Server As New SmtpClient
    Dim e_mail As New MailMessage()
    Dim mess, mess1, mess2, fm As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        con = New SqlConnection("Data Source=LAPTOP-0PI4KRF7\SQLEXPRESS;Initial Catalog=ERP;Integrated Security=True")
        con.Open()
        cmd.Connection = con
        cmd2.Connection = con
        cmd3.Connection = con
        cmd.CommandText = "select top 1 logid from login1 ORDER BY logid DESC "
        logid = Convert.ToInt64(cmd.ExecuteScalar)
        cmd2.CommandText = "select top 1 email from login1 order by logid desc"
        cmd3.CommandText = "select top 1 username from login1 order by logid desc"
        'cmd = New SqlCommand("select top logid from login1", con)
        emailto = (cmd2.ExecuteScalar)
        uname = (cmd3.ExecuteScalar)
        con.Close()
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        con = New SqlConnection("Data Source=LAPTOP-0PI4KRF7\SQLEXPRESS;Initial Catalog=ERP;Integrated Security=True")
        cmd = New SqlCommand("insert into admin(logid,fname,lname,pno,gender)values(@logid,@fname,@lname,@pno,@gender)", con)
        cmd.Parameters.AddWithValue("logid", logid)
        cmd.Parameters.AddWithValue("fname", TextBox1.Text)
        cmd.Parameters.AddWithValue("lname", TextBox2.Text)
        cmd.Parameters.AddWithValue("pno", TextBox3.Text)
        cmd.Parameters.AddWithValue("gender", gender)
        con.Open()
        cmd.ExecuteNonQuery()
        con.Close()
        Try
            mess = "Hey " + TextBox1.Text
            mess1 = vbCrLf & "Thank you for registering with SurveyYo " & vbCrLf
            mess2 = vbCrLf & "Your username is : " + uname & vbCrLf & " Have a great time! "
            Smtp_Server.UseDefaultCredentials = False
            Smtp_Server.Credentials = New Net.NetworkCredential("surveyyo420@gmail.com", "Survey@123")
            Smtp_Server.Port = 587
            Smtp_Server.EnableSsl = True
            Smtp_Server.Host = "smtp.gmail.com"
            e_mail = New MailMessage()
            e_mail.From = New MailAddress("surveyyo420@gmail.com", "Survey yo")
            e_mail.To.Add(emailto)
            e_mail.Subject = "Regestration"
            e_mail.IsBodyHtml = False
            fm = String.Concat(mess, mess1, mess2)
            e_mail.Body = fm
            Smtp_Server.Send(e_mail)
            Response.Write("<script LANGUAGE='JavaScript' >alert('Registration Complete!!')</script>")
        Catch error_t As Exception
            MsgBox(error_t.ToString)
        End Try
        Response.Redirect("~/Login.aspx")
    End Sub

    Protected Sub male_CheckedChanged(sender As Object, e As EventArgs) Handles male.CheckedChanged
        gender = male.Text
    End Sub

    Protected Sub female_CheckedChanged(sender As Object, e As EventArgs) Handles female.CheckedChanged
        gender = female.Text
    End Sub

    Protected Sub Other_CheckedChanged(sender As Object, e As EventArgs) Handles Other.CheckedChanged
        gender = Other.Text
    End Sub
End Class