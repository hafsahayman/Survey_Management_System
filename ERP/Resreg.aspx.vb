Imports System.Data.SqlClient
Imports System.Net.Mail
Public Class Resreg
    Inherits System.Web.UI.Page
    Dim gender As String
    Dim con As New SqlConnection
    Dim cmd As New SqlCommand
    Dim logid As Integer
    Dim Smtp_Server As New SmtpClient
    Dim e_mail As New MailMessage()
    Dim mess, mess1, mess2, fm, emailto, uname As String
    Dim cmd2, cmd3 As New SqlCommand
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        con = New SqlConnection("Data Source=LAPTOP-0PI4KRF7\SQLEXPRESS;Initial Catalog=ERP;Integrated Security=True")
        con.Open()
        cmd.Connection = con
        cmd2.Connection = con
        cmd3.Connection = con
        cmd.CommandText = "select top 1 logid from login1 order by logid desc"
        cmd2.CommandText = "select top 1 email from login1 order by logid desc"
        cmd3.CommandText = "select top 1 username from login1 order by logid desc"
        'cmd = New SqlCommand("select top logid from login1", con)
        logid = Convert.ToInt64(cmd.ExecuteScalar)
        emailto = (cmd2.ExecuteScalar)
        uname = (cmd3.ExecuteScalar)
        con.Close()
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        If (male.Checked = False And female.Checked = False And Other.Checked = False) Then
            MsgBox("Please choose a Role", MsgBoxStyle.Critical)
        Else
            con = New SqlConnection("Data Source=LAPTOP-0PI4KRF7\SQLEXPRESS;Initial Catalog=ERP;Integrated Security=True")
            cmd = New SqlCommand("insert into respondant(logid,fname,lname,gender,dob,pno)values(@logid,@fname,@lname,@gender,@dob,@pno)", con)
            cmd.Parameters.AddWithValue("logid", logid)
            cmd.Parameters.AddWithValue("fname", TextBox1.Text)
            cmd.Parameters.AddWithValue("lname", TextBox2.Text)
            cmd.Parameters.AddWithValue("gender", gender)
            cmd.Parameters.AddWithValue("dob", TextBox3.Text)
            cmd.Parameters.AddWithValue("pno", TextBox4.Text)
            con.Open()
            If cmd.ExecuteNonQuery() = 0 Then
                'Response.Write("<script LANGUAGE='JavaScript' >alert('Reset Success')</script>")
            End If
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
                e_mail.Subject = "Registration"
                e_mail.IsBodyHtml = False
                fm = String.Concat(mess, mess1, mess2)
                e_mail.Body = fm
                Smtp_Server.Send(e_mail)
                MsgBox("Resgistration Process Completed")
            Catch error_t As Exception
                MsgBox(error_t.ToString)
            End Try
            Response.Redirect("~/Login.aspx")
        End If
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

    Protected Sub TextBox3_TextChanged(sender As Object, e As EventArgs) Handles TextBox3.TextChanged
    End Sub
End Class