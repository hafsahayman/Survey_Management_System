Imports System.Data.SqlClient
Public Class respdash
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection
    Dim cmd, cmd2, cmd3, cmd4 As New SqlCommand
    Dim dr2 As SqlDataReader
    Dim varr, varr2, var As String
    Dim str As Integer
    Dim rid As Integer
    Dim points, pondis As Integer
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        str = Session("name")
        con = New SqlConnection("Data Source=LAPTOP-0PI4KRF7\SQLEXPRESS;Initial Catalog=ERP;Integrated Security=True")
        con.Open()
        cmd.Connection = con
        cmd2.Connection = con
        cmd.CommandText = "select rid from respondant where logid='" & str & "' "
        rid = Convert.ToInt64(cmd.ExecuteScalar)
        'Label11.Text = rid
        cmd4.Connection = con
        cmd4.CommandText = "select  *from respondant where rid='" & rid & "' "
        Dim myreader1 As SqlDataReader = cmd4.ExecuteReader()
        Do While myreader1.Read
            Label1.Text = myreader1.GetValue(2).ToString()
            Label2.Text = myreader1.GetValue(2).ToString()
            Label4.Text = myreader1.GetValue(5).ToString()
            Label5.Text = myreader1.GetValue(4).ToString()
            Label7.Text = myreader1.GetValue(6).ToString()
        Loop
        myreader1.Close()
        cmd2.CommandText = "  select survey.title from survey join response on survey.sid=response.sid join respondant on respondant.rid=response.rid where respondant.rid= '" & rid & "' "
        Dim myreader As SqlDataReader = cmd2.ExecuteReader()
        Do While myreader.Read
            Label10.Text = myreader.GetValue(0).ToString()
            'Label11.Text = myreader.GetValue(1).ToString()
            'Label12.Text = myreader.GetValue(2).ToString()
            'Label4.Text = myreader.GetValue(4).ToString()
            'Label5.Text = myreader.GetValue(5).ToString()
            'Label1.Text = myreader("q1")
        Loop
        myreader.Close()
        cmd3.Connection = con
        cmd3.CommandText = "select count(response.rid) from response join respondant on response.rid=respondant.rid where respondant.rid='" & rid & "' "
        var = Convert.ToString(cmd3.ExecuteScalar)
        Label9.Text = var
        points = 50
        pondis = points * var
        Label8.Text = pondis
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Response.Redirect("~/suurveyres.aspx")
    End Sub
End Class