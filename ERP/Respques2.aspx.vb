Imports System.Data.SqlClient
Public Class Respques2
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection
    Dim cmd, cmd2 As New SqlCommand
    Dim dr2 As SqlDataReader
    Dim varr, varr2, var As String
    Dim str As Integer
    Dim rid As Integer
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        str = Session("name")
        Label6.Visible = False
        Label7.Visible = False
        Label8.Visible = False
        dropdown()
    End Sub
    Public Sub dropdown()
        var = "Entertainment"
        con = New SqlConnection("Data Source=LAPTOP-0PI4KRF7\SQLEXPRESS;Initial Catalog=ERP;Integrated Security=True")
        con.Open()
        cmd.Connection = con
        cmd2.Connection = con
        cmd.CommandText = "select title from survey where type = '" & var & "' "
        cmd2.CommandText = "select rid from respondant where logid='" & str & "' "
        rid = (cmd2.ExecuteScalar)
        Label8.Text = rid
        dr2 = cmd.ExecuteReader
        Do While dr2.Read
            DropDownList1.Items.Add(dr2("title"))
        Loop
        dr2.Close()
    End Sub

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        con = New SqlConnection("Data Source=LAPTOP-0PI4KRF7\SQLEXPRESS;Initial Catalog=ERP;Integrated Security=True")
        cmd.Connection = con
        cmd = New SqlCommand("insert into response(sid,rid,qid,a1,a2,a3,a4,a5)values(@sid,@rid,@qid,@a1,@a2,@a3,@a4,@a5)", con)
        cmd.Parameters.AddWithValue("sid", Label6.Text)
        cmd.Parameters.AddWithValue("rid", rid)
        cmd.Parameters.AddWithValue("qid", Label7.Text)
        cmd.Parameters.AddWithValue("a1", RadioButtonList1.SelectedValue)
        cmd.Parameters.AddWithValue("a2", RadioButtonList2.SelectedValue)
        cmd.Parameters.AddWithValue("a3", RadioButtonList3.SelectedValue)
        cmd.Parameters.AddWithValue("a4", RadioButtonList4.SelectedValue)
        cmd.Parameters.AddWithValue("a5", RadioButtonList5.SelectedValue)
        con.Open()
        If cmd.ExecuteNonQuery() = 1 Then
            MsgBox("Survey Has Been Successfully Completed")
            Response.Redirect("~/suurveyres.aspx")
        End If
    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles DropDownList1.SelectedIndexChanged
        'DropDownList1.Items.Clear()
        'dropdown()
        con = New SqlConnection("Data Source=LAPTOP-0PI4KRF7\SQLEXPRESS;Initial Catalog=ERP;Integrated Security=True")
        con.Open()
        cmd.Connection = con
        cmd2.Connection = con
        cmd.CommandText = "select sid from survey where title='" & DropDownList1.Text & "' "
        varr = Convert.ToInt16(cmd.ExecuteScalar)
        Label6.Text = varr
        cmd2.CommandText = "select qid from questions where sid  ='" & Label6.Text & "' "
        varr2 = Convert.ToInt16(cmd2.ExecuteScalar)
        Label7.Text = varr2
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        con = New SqlConnection("Data Source=LAPTOP-0PI4KRF7\SQLEXPRESS;Initial Catalog=ERP;Integrated Security=True")
        con.Open()
        cmd.Connection = con
        cmd2.Connection = con
        'cmd.CommandText = "select top 1 sid from survey "
        'cmd2.CommandText = "select top 1 qid from questions "
        'sid = Convert.ToInt64(cmd.ExecuteScalar)
        'qid = Convert.ToInt64(cmd.ExecuteScalar)
        'rid = 3
        Dim sql As String = "Select *from questions where qid= '" & Label7.Text & "' "
        Dim cmd3 As New SqlCommand(sql, con)
        'Label1.Text = cmd3.ExecuteScalar
        'Label2.Text = cmd3.ExecuteScalar
        Dim myreader As SqlDataReader = cmd3.ExecuteReader()
        Do While myreader.Read
            Label1.Text = myreader.GetValue(1).ToString()
            Label2.Text = myreader.GetValue(2).ToString()
            Label3.Text = myreader.GetValue(3).ToString()
            Label4.Text = myreader.GetValue(4).ToString()
            Label5.Text = myreader.GetValue(5).ToString()
            'Label1.Text = myreader("q1")
        Loop
        myreader.Close()
        DropDownList1.Items.Clear()
        dropdown()
    End Sub
End Class