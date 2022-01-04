Imports System.Data.SqlClient
Public Class mysurvey2
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection
    Dim cmd, cmd2, cmd3 As New SqlCommand
    Dim dr2 As SqlDataReader
    Dim varr, varr2, var As String
    Dim str As Integer
    Dim cid As Integer
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'DropDownList2.Items.Add(New ListItem("--Select Survey Title--", ""))
        Label1.Visible = False
        Label2.Visible = False
        Label3.Visible = False
        Str = Session("name")
        con = New SqlConnection("Data Source=LAPTOP-0PI4KRF7\SQLEXPRESS;Initial Catalog=ERP;Integrated Security=True")
        con.Open()
        cmd.Connection = con
        cmd.CommandText = "select cid from company1 where logid ='" & str & "'"
        cid = Convert.ToInt64(cmd.ExecuteScalar)
        con.Close()
    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList1.SelectedIndexChanged
        'DropDownList2.Items.Clear()
        'con = New SqlConnection("Data Source=LAPTOP-0PI4KRF7\SQLEXPRESS;Initial Catalog=ERP;Integrated Security=True")
        'con.Open()
        'cmd.Connection = con
        'cmd2.Connection = con
        'cmd.CommandText = "select title from survey where type='" & DropDownList1.Text & "' "
        'dr2 = cmd.ExecuteReader
        'Do While dr2.Read
        '    DropDownList2.Items.Add(dr2("title"))
        'Loop
        'dr2.Close()
        con = New SqlConnection("Data Source=LAPTOP-0PI4KRF7\SQLEXPRESS;Initial Catalog=ERP;Integrated Security=True")
        DropDownList2.AppendDataBoundItems = True
        Dim strQuery As String = "select company1.cid , survey.title  from company1 join survey on company1.cid=survey.cid where type='" & DropDownList1.Text & "' and company1.cid='" & cid & "' "
        cmd.CommandType = CommandType.Text
        cmd.CommandText = strQuery
        cmd.Connection = con
        'Try
        '    con.Open()
        '    DropDownList2.DataSource = cmd.ExecuteReader()
        '    DropDownList2.DataTextField = "title"
        '    DropDownList2.DataValueField = "cid"
        '    DropDownList2.DataBind()
        'Catch ex As Exception
        '    Throw ex
        'Finally
        '    con.Close()
        '    con.Dispose()
        'End Try
        con.Open()
        dr2 = cmd.ExecuteReader
        'DropDownList2.Items.Clear()
        'DropDownList2.SelectedItem.Text = ""
        Do While dr2.Read
            DropDownList2.Items.Add(dr2("title"))
        Loop
        dr2.Close()
        con.Close()
        'DropDownList2.SelectedItem.Text = ""

    End Sub

    Protected Sub DropDownList2_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList2.SelectedIndexChanged
        con = New SqlConnection("Data Source=LAPTOP-0PI4KRF7\SQLEXPRESS;Initial Catalog=ERP;Integrated Security=True")
        con.Open()
        cmd.Connection = con
        cmd2.Connection = con
        cmd.CommandText = "select sid from survey where title='" & DropDownList2.SelectedItem.Text & "' "
        varr = Convert.ToInt16(cmd.ExecuteScalar)
        Label1.Text = varr
        cmd2.CommandText = "select qid from questions where sid  ='" & Label1.Text & "' "
        varr2 = Convert.ToInt16(cmd2.ExecuteScalar)
        Label2.Text = varr2
    End Sub
    Public Sub dropdown()
        DropDownList2.Items.Clear()
        Dim strQuery As String = "select company1.cid , survey.title  from company1 join survey on company1.cid=survey.cid where type='" & DropDownList1.Text & "' and company1.cid='" & cid & "' "
        cmd.CommandType = CommandType.Text
        cmd.CommandText = strQuery
        cmd.Connection = con
        con.Open()
        dr2 = cmd.ExecuteReader
        Do While dr2.Read
            DropDownList2.Items.Add(dr2("title"))
        Loop
        dr2.Close()
        con.Close()
    End Sub
    'Public Sub content()
    '    con = New SqlConnection("Data Source=LAPTOP-0PI4KRF7\SQLEXPRESS;Initial Catalog=ERP;Integrated Security=True")
    '    con.Open()
    '    cmd.Connection = con
    '    Label3.Text = DropDownList2.SelectedItem.Text
    '    cmd.CommandText = "select  *from questions where qid  ='" & Label2.Text & "' "
    '    Dim myreader As SqlDataReader = cmd.ExecuteReader()
    '    Do While myreader.Read
    '        TextBox1.Text = myreader.GetValue(1)
    '        TextBox2.Text = myreader.GetValue(2)
    '        TextBox3.Text = myreader.GetValue(3)
    '        TextBox4.Text = myreader.GetValue(4)
    '        TextBox5.Text = myreader.GetValue(5)
    '    Loop
    'End Sub
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        con = New SqlConnection("Data Source=LAPTOP-0PI4KRF7\SQLEXPRESS;Initial Catalog=ERP;Integrated Security=True")
        con.Open()
        cmd.Connection = con
        Label3.Text = DropDownList2.SelectedItem.Text
        cmd.CommandText = "select  *from questions where qid  ='" & Label2.Text & "' "
        Dim myreader As SqlDataReader = cmd.ExecuteReader()
        Do While myreader.Read
            TextBox1.Text = myreader.GetValue(1)
            TextBox2.Text = myreader.GetValue(2)
            TextBox3.Text = myreader.GetValue(3)
            TextBox4.Text = myreader.GetValue(4)
            TextBox5.Text = myreader.GetValue(5)
        Loop
        myreader.Close()
        con.Close()
        'content()
        DropDownList2.Items.Clear()
        dropdown()
        'content()
        'DropDownList2.Items.Add("Select")
        'dropdown()
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        con = New SqlConnection("Data Source=LAPTOP-0PI4KRF7\SQLEXPRESS;Initial Catalog=ERP;Integrated Security=True")
        con.Open()
        cmd.Connection = con
        cmd.CommandText = " update questions set q1='" + TextBox1.Text + "',q2='" + TextBox2.Text + "',q3='" + TextBox3.Text + "',q4='" + TextBox4.Text + "',q5='" + TextBox5.Text + "' where qid='" & Label2.Text & "' "
        If cmd.ExecuteNonQuery() = 1 Then
            MsgBox("Survey Has Been Edited Successfully")
        End If
    End Sub

    Protected Sub Button3_Click(sender As Object, e As EventArgs) Handles Button3.Click
        con = New SqlConnection("Data Source=LAPTOP-0PI4KRF7\SQLEXPRESS;Initial Catalog=ERP;Integrated Security=True")
        con.Open()
        cmd.Connection = con
        cmd2.Connection = con
        cmd.CommandText = " delete from questions where qid='" & Label2.Text & "' "
        cmd2.CommandText = "delete from survey where title='" & DropDownList2.SelectedItem.Text & "' "
        If cmd.ExecuteNonQuery() = 1 Or cmd2.ExecuteNonQuery() = 1 Then
            MsgBox("Survey Has Been Deleted Successfully")
        End If
    End Sub
End Class