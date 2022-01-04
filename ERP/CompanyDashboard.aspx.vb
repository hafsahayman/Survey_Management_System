Imports System.Data.SqlClient
Public Class CompanyDashboard
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection
    Dim cmd, cmd2, cmd3 As New SqlCommand
    Dim dr2 As SqlDataReader
    Dim varr, varr2, var As String
    Dim str As Integer
    Dim cid As Integer
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        str = Session("name")
        con = New SqlConnection("Data Source=LAPTOP-0PI4KRF7\SQLEXPRESS;Initial Catalog=ERP;Integrated Security=True")
        con.Open()
        cmd.Connection = con
        cmd2.Connection = con
        cmd3.Connection = con
        cmd.CommandText = "select cid from company1 where logid ='" & str & "'"
        cmd3.CommandText = "select email from login1 where logid ='" & str & "'"
        cid = Convert.ToInt64(cmd.ExecuteScalar)
        var = Convert.ToString(cmd3.ExecuteScalar)
        Label6.Text = var
        cmd2.CommandText = "select  *from company1 where cid='" & cid & "' "
        Dim myreader1 As SqlDataReader = cmd2.ExecuteReader()
        Do While myreader1.Read
            Label1.Text = myreader1.GetValue(2).ToString()
            Label2.Text = myreader1.GetValue(2).ToString()
            Label3.Text = myreader1.GetValue(7).ToString()
            Label4.Text = myreader1.GetValue(3).ToString()
            Label5.Text = myreader1.GetValue(4).ToString()
            Label7.Text = myreader1.GetValue(5).ToString()
        Loop
        myreader1.Close()
        Dim Data As New DataTable
        Dim adapter As New SqlDataAdapter
        adapter = New SqlDataAdapter("select logo from company1 where cid = '" & cid & "'", con)
        Dim commandbuild As New SqlCommandBuilder(adapter)
        adapter.Fill(Data)
        Dim picbyte() As Byte = Data.Rows(0).Item("logo")
        Dim base64String As String = Convert.ToBase64String(picbyte)
        Image1.ImageUrl = String.Format("data:image/jpg;base64,{0}", base64String)
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Response.Redirect("~/companylog.aspx")
    End Sub
End Class