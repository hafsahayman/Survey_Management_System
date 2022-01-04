Imports System.Data.SqlClient
Imports System.Net.Mail
Public Class CompanyReg
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection
    Dim cmd As New SqlCommand
    Dim logid As Integer
    Dim lblText1 As String
    Dim str As Object
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
        cmd.CommandText = "select top 1 logid from login1 order by logid desc "
        cmd2.CommandText = "select top 1 email from login1 order by logid desc"
        cmd3.CommandText = "select top 1 username from login1 order by logid desc"
        'cmd = New SqlCommand("select top logid from login1", con)
        logid = Convert.ToInt64(cmd.ExecuteScalar)
        emailto = (cmd2.ExecuteScalar)
        uname = (cmd3.ExecuteScalar)
        con.Close()
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        If FileUpload1.HasFile Then
            Dim imagefilelenth As Integer = FileUpload1.PostedFile.ContentLength
            Dim imgarray As Byte() = New Byte(imagefilelenth - 1) {}
            Dim image As HttpPostedFile = FileUpload1.PostedFile
            image.InputStream.Read(imgarray, 0, imagefilelenth)
        con = New SqlConnection("Data Source=LAPTOP-0PI4KRF7\SQLEXPRESS;Initial Catalog=ERP;Integrated Security=True")
        If (TextBox1.Text = "" Or TextBox2.Text = "" Or TextBox3.Text = "" Or TextBox4.Text = "" Or TextBox5.Text = "") Then
            Response.Write("<script LANGUAGE='JavaScript' >alert('Error!');window.location='CompanyReg.aspx';</script>")
        Else
                cmd = New SqlCommand("insert into company1(logid,name,ctype,address,pno,cdesc,gst,logo)values(@logid,@name,@ctype,@address,@pno,@cdesc,@gst,@logo)", con)
            cmd.Parameters.AddWithValue("logid", logid)
            cmd.Parameters.AddWithValue("name", TextBox1.Text)
            cmd.Parameters.AddWithValue("ctype", DropDownList1.SelectedValue)
            cmd.Parameters.AddWithValue("address", TextBox2.Text)
            cmd.Parameters.AddWithValue("pno", TextBox3.Text)
            cmd.Parameters.AddWithValue("cdesc", TextBox5.Text)
            cmd.Parameters.AddWithValue("gst", TextBox4.Text)
            cmd.Parameters.AddWithValue("logo", SqlDbType.Image).Value = imgarray
            con.Open()
                If cmd.ExecuteNonQuery() = 0 Then
                    Response.Write("<script LANGUAGE='JavaScript' >alert('Registration Success')</script>")
                End If
            End If
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
    End Sub
End Class