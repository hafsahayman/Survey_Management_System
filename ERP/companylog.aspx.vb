Imports System.Data.SqlClient
Public Class companylog
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection
    Dim cmd As New SqlCommand
    Dim cmd2 As New SqlCommand
    Dim cid As Integer
    Dim str As Integer
    Dim sid As Integer
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        str = Session("name")
        con = New SqlConnection("Data Source=LAPTOP-0PI4KRF7\SQLEXPRESS;Initial Catalog=ERP;Integrated Security=True")
        con.Open()
        cmd.Connection = con
        'cmd.CommandText = "select cid from company1 where logid= 1"
        cmd.CommandText = "select   cid from company1 where logid = '" & str & "' "
        'cid = cmd.ExecuteNonQuery()
        cid = Convert.ToInt64(cmd.ExecuteScalar)
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        con = New SqlConnection("Data Source=LAPTOP-0PI4KRF7\SQLEXPRESS;Initial Catalog=ERP;Integrated Security=True")
        
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        con = New SqlConnection("Data Source=LAPTOP-0PI4KRF7\SQLEXPRESS;Initial Catalog=ERP;Integrated Security=True")
        cmd = New SqlCommand("insert into survey(title,type,description,cid)values(@title,@type,@description,@cid)", con)
        cmd.Parameters.AddWithValue("title", TextBox1.Text)
        cmd.Parameters.AddWithValue("type", DropDownList1.SelectedValue)
        cmd.Parameters.AddWithValue("description", TextBox2.Text)
        cmd.Parameters.AddWithValue("cid", cid)
        con.Open()
        cmd.ExecuteNonQuery()
        con.Close()
       
    End Sub

    
    Protected Sub Button8_Click(sender As Object, e As EventArgs) Handles Button8.Click
        con = New SqlConnection("Data Source=LAPTOP-0PI4KRF7\SQLEXPRESS;Initial Catalog=ERP;Integrated Security=True")
        con.Open()
        cmd2.Connection = con
        cmd2.CommandText = " select top 1 sid from survey ORDER BY sid DESC "
        sid = Convert.ToInt64(cmd2.ExecuteScalar)
        cmd = New SqlCommand("insert into questions(sid,q1,q2,q3,q4,q5)values(@sid,@q1,@q2,@q3,@q4,@q5)", con)
        cmd.Parameters.AddWithValue("sid", sid)
        cmd.Parameters.AddWithValue("q1", TextBox3.Text)
        cmd.Parameters.AddWithValue("q2", TextBox4.Text)
        cmd.Parameters.AddWithValue("q3", TextBox5.Text)
        cmd.Parameters.AddWithValue("q4", TextBox6.Text)
        cmd.Parameters.AddWithValue("q5", TextBox7.Text)
        If (TextBox3.Text = "" Or TextBox4.Text = "" Or TextBox5.Text = "" Or TextBox6.Text = "" Or TextBox7.Text = "") Then
            MsgBox("Enter the questions")
        Else
            cmd.ExecuteNonQuery()
            MsgBox("Survey Has Been Created")
        End If
        con.Close()
    End Sub
End Class