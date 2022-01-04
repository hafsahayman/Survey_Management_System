Imports System.Data.SqlClient
Imports System.Web.UI.DataVisualization.Charting
Imports System.Drawing

Public Class chart
    Inherits System.Web.UI.Page
    Dim con As New SqlConnection
    Dim cmd, cmd2, cmd3, cmd4, cmd5, cmd6, cmd7 As New SqlCommand
    Dim rid, qid, varr As Integer
    Dim logid, logid2, logid3, logid4, logid5 As Double
    Dim dr2, dr3 As SqlDataReader
    Dim str As Integer
    Dim sid As String
    Dim varr7, varr8 As String
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        str = Session("name")
        DropDownList1.Visible = False
        con = New SqlConnection("Data Source=LAPTOP-0PI4KRF7\SQLEXPRESS;Initial Catalog=ERP;Integrated Security=True")
        con.Open()
        cmd.Connection = con
        cmd2.Connection = con
        cmd3.Connection = con
        cmd4.Connection = con
        cmd5.Connection = con
        cmd3.CommandText = "select cid from company1 where logid ='" & str & "' "
        logid2 = Convert.ToInt64(cmd3.ExecuteScalar)
        cmd.CommandText = "select sid from survey where title='" & DropDownList1.Text & "' "
        varr = Convert.ToInt16(cmd.ExecuteScalar)
        cmd4.CommandText = "select survey.title from survey join company1 on survey.cid=company1.cid where company1.cid='" & logid2 & "' "
        cmd5.CommandText = "select q1,q2,q3,q4,q5 from questions join survey on questions.sid=survey.sid where survey.sid='" & varr & "' "
        'logid = Convert.ToDouble(cmd.ExecuteScalar)
        'logid2 = Convert.ToDouble(cmd2.ExecuteScalar)
        con = New SqlConnection("Data Source=LAPTOP-0PI4KRF7\SQLEXPRESS;Initial Catalog=ERP;Integrated Security=True")
        cmd.Connection = con
        cmd2.Connection = con
        'rid = (cmd.ExecuteScalar)
        dr2 = cmd4.ExecuteReader
        Do While dr2.Read
            DropDownList1.Items.Add(dr2("title"))
        Loop
        dr2.Close()
        'dr3 = cmd5.ExecuteReader
        Dim myreader As SqlDataReader = cmd5.ExecuteReader()
        Do While myreader.Read
            RadioButton1.Text = myreader.GetValue(0).ToString()
            RadioButton2.Text = myreader.GetValue(1).ToString()
            RadioButton3.Text = myreader.GetValue(2).ToString()
            RadioButton4.Text = myreader.GetValue(3).ToString()
            RadioButton5.Text = myreader.GetValue(4).ToString()
        Loop
        myreader.Close()
        con.Open()
       
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click


            con = New SqlConnection("Data Source=LAPTOP-0PI4KRF7\SQLEXPRESS;Initial Catalog=ERP;Integrated Security=True")
            con.Open()
            cmd.Connection = con
            cmd2.Connection = con
            cmd3.Connection = con
            cmd4.Connection = con
            cmd5.Connection = con
            If (RadioButton1.Checked) Then
                'DropDownList2.Visible = True
                cmd.CommandText = "select sid from survey where title='" & DropDownList1.SelectedItem.Text & "' "
                varr = Convert.ToInt16(cmd.ExecuteScalar)
                cmd.CommandText = " SELECT count(response.a1)  from response join questions ON response.qid=questions.qid where Response.a1=0 and response.sid='" & varr & "' "
                cmd2.CommandText = " SELECT count(response.a1)  from response join questions ON response.qid=questions.qid where Response.a1=1 and response.sid='" & varr & "' "
                cmd3.CommandText = " SELECT count(response.a1)  from response join questions ON response.qid=questions.qid where Response.a1=2 and response.sid='" & varr & "' "
                cmd4.CommandText = " SELECT count(response.a1)  from response join questions ON response.qid=questions.qid where Response.a1=3 and response.sid='" & varr & "' "
                cmd5.CommandText = " SELECT count(response.a1)  from response join questions ON response.qid=questions.qid where Response.a1=4 and response.sid='" & varr & "' "

                logid = Convert.ToDouble(cmd.ExecuteScalar)
                logid2 = Convert.ToDouble(cmd2.ExecuteScalar)
                logid3 = Convert.ToDouble(cmd3.ExecuteScalar)
                logid4 = Convert.ToDouble(cmd4.ExecuteScalar)
                logid5 = Convert.ToDouble(cmd5.ExecuteScalar)

            Chart1.Series("Series1").Points.AddXY("Strongly Agree", logid)
            Chart1.Series("Series1").Points.AddXY("Agree", logid2)
            Chart1.Series("Series1").Points.AddXY("Neutral", logid3)
            Chart1.Series("Series1").Points.AddXY("Disagree", logid4)
            Chart1.Series("Series1").Points.AddXY("Strongly Disagree", logid5)
        End If
        If (RadioButton2.Checked) Then


            cmd.CommandText = "select sid from survey where title='" & DropDownList1.SelectedItem.Text & "' "
            varr = Convert.ToInt16(cmd.ExecuteScalar)
            cmd.CommandText = " SELECT count(response.a2)  from response join questions ON response.qid=questions.qid where Response.a2=0 and response.sid='" & varr & "' "
            cmd2.CommandText = " SELECT count(response.a2)  from response join questions ON response.qid=questions.qid where Response.a2=1 and response.sid='" & varr & "' "
            cmd3.CommandText = " SELECT count(response.a2)  from response join questions ON response.qid=questions.qid where Response.a2=2 and response.sid='" & varr & "' "
            cmd4.CommandText = " SELECT count(response.a2)  from response join questions ON response.qid=questions.qid where Response.a2=3 and response.sid='" & varr & "' "
            cmd5.CommandText = " SELECT count(response.a2)  from response join questions ON response.qid=questions.qid where Response.a2=4 and response.sid='" & varr & "' "

            logid = Convert.ToDouble(cmd.ExecuteScalar)
            logid2 = Convert.ToDouble(cmd2.ExecuteScalar)
            logid3 = Convert.ToDouble(cmd3.ExecuteScalar)
            logid4 = Convert.ToDouble(cmd4.ExecuteScalar)
            logid5 = Convert.ToDouble(cmd5.ExecuteScalar)

            Chart1.Series("Series1").Points.AddXY("Strongly Agree", logid)
            Chart1.Series("Series1").Points.AddXY("Agree", logid2)
            Chart1.Series("Series1").Points.AddXY("Neutral", logid3)
            Chart1.Series("Series1").Points.AddXY("Disagree", logid4)
            Chart1.Series("Series1").Points.AddXY("Strongly Disagree", logid5)
        End If
        If (RadioButton3.Checked) Then


            cmd.CommandText = "select sid from survey where title='" & DropDownList1.SelectedItem.Text & "' "
            varr = Convert.ToInt16(cmd.ExecuteScalar)
            cmd.CommandText = " SELECT count(response.a3)  from response join questions ON response.qid=questions.qid where Response.a3=0 and response.sid='" & varr & "' "
            cmd2.CommandText = " SELECT count(response.a3)  from response join questions ON response.qid=questions.qid where Response.a3=1 and response.sid='" & varr & "' "
            cmd3.CommandText = " SELECT count(response.a3)  from response join questions ON response.qid=questions.qid where Response.a3=2 and response.sid='" & varr & "' "
            cmd4.CommandText = " SELECT count(response.a3)  from response join questions ON response.qid=questions.qid where Response.a3=3 and response.sid='" & varr & "' "
            cmd5.CommandText = " SELECT count(response.a3)  from response join questions ON response.qid=questions.qid where Response.a3=4 and response.sid='" & varr & "' "

            logid = Convert.ToDouble(cmd.ExecuteScalar)
            logid2 = Convert.ToDouble(cmd2.ExecuteScalar)
            logid3 = Convert.ToDouble(cmd3.ExecuteScalar)
            logid4 = Convert.ToDouble(cmd4.ExecuteScalar)
            logid5 = Convert.ToDouble(cmd5.ExecuteScalar)

            Chart1.Series("Series1").Points.AddXY("Strongly Agree", logid)
            Chart1.Series("Series1").Points.AddXY("Agree", logid2)
            Chart1.Series("Series1").Points.AddXY("Neutral", logid3)
            Chart1.Series("Series1").Points.AddXY("Disagree", logid4)
            Chart1.Series("Series1").Points.AddXY("Strongly Disagree", logid5)
        End If
        If (RadioButton4.Checked) Then


            cmd.CommandText = "select sid from survey where title='" & DropDownList1.SelectedItem.Text & "' "
            varr = Convert.ToInt16(cmd.ExecuteScalar)
            cmd.CommandText = " SELECT count(response.a4)  from response join questions ON response.qid=questions.qid where Response.a4=0 and response.sid='" & varr & "' "
            cmd2.CommandText = " SELECT count(response.a4)  from response join questions ON response.qid=questions.qid where Response.a4=1 and response.sid='" & varr & "' "
            cmd3.CommandText = " SELECT count(response.a4)  from response join questions ON response.qid=questions.qid where Response.a4=2 and response.sid='" & varr & "' "
            cmd4.CommandText = " SELECT count(response.a4)  from response join questions ON response.qid=questions.qid where Response.a4=3 and response.sid='" & varr & "' "
            cmd5.CommandText = " SELECT count(response.a4)  from response join questions ON response.qid=questions.qid where Response.a4=4 and response.sid='" & varr & "' "

            logid = Convert.ToDouble(cmd.ExecuteScalar)
            logid2 = Convert.ToDouble(cmd2.ExecuteScalar)
            logid3 = Convert.ToDouble(cmd3.ExecuteScalar)
            logid4 = Convert.ToDouble(cmd4.ExecuteScalar)
            logid5 = Convert.ToDouble(cmd5.ExecuteScalar)

            Chart1.Series("Series1").Points.AddXY("Strongly Agree", logid)
            Chart1.Series("Series1").Points.AddXY("Agree", logid2)
            Chart1.Series("Series1").Points.AddXY("Neutral", logid3)
            Chart1.Series("Series1").Points.AddXY("Disagree", logid4)
            Chart1.Series("Series1").Points.AddXY("Strongly Disagree", logid5)
        End If
        If (RadioButton5.Checked) Then


            cmd.CommandText = "select sid from survey where title='" & DropDownList1.SelectedItem.Text & "' "
            varr = Convert.ToInt16(cmd.ExecuteScalar)
            cmd.CommandText = " SELECT count(response.a5)  from response join questions ON response.qid=questions.qid where Response.a5=0 and response.sid='" & varr & "' "
            cmd2.CommandText = " SELECT count(response.a5)  from response join questions ON response.qid=questions.qid where Response.a5=1 and response.sid='" & varr & "' "
            cmd3.CommandText = " SELECT count(response.a5)  from response join questions ON response.qid=questions.qid where Response.a5=2 and response.sid='" & varr & "' "
            cmd4.CommandText = " SELECT count(response.a5)  from response join questions ON response.qid=questions.qid where Response.a5=3 and response.sid='" & varr & "' "
            cmd5.CommandText = " SELECT count(response.a5)  from response join questions ON response.qid=questions.qid where Response.a5=4 and response.sid='" & varr & "' "

            logid = Convert.ToDouble(cmd.ExecuteScalar)
            logid2 = Convert.ToDouble(cmd2.ExecuteScalar)
            logid3 = Convert.ToDouble(cmd3.ExecuteScalar)
            logid4 = Convert.ToDouble(cmd4.ExecuteScalar)
            logid5 = Convert.ToDouble(cmd5.ExecuteScalar)

            Chart1.Series("Series1").Points.AddXY("Strongly Agree", logid)
            Chart1.Series("Series1").Points.AddXY("Agree", logid2)
            Chart1.Series("Series1").Points.AddXY("Neutral", logid3)
            Chart1.Series("Series1").Points.AddXY("Disagree", logid4)
            Chart1.Series("Series1").Points.AddXY("Strongly Disagree", logid5)
        End If

            'Dim yValues As Double() = {logid, logid2}
            'Dim xValues As String() = {"Male", "Female"}
            'Chart1.Series("Series1").Points.DataBindXY(xValues, yValues)
            'Chart1.Series("Series1").Points(0).Color = Color.Blue
            'Chart1.Series("Series1").Points(1).Color = Color.Red
            ''Chart1.Series("Series1").Points(2).Color = Color.LawnGreen
            'Chart1.Series("Series1").ChartType = SeriesChartType.Pie
            'Chart1.ChartAreas("ChartArea1").Area3DStyle.Enable3D = True
            ''Chart1.Legends(0).Enabled = True
            'Dim ds As DataSet = New DataSet()
            'Dim da As SqlDataAdapter = New SqlDataAdapter("select  *from response", con)
            'da.Fill(ds)
            'Chart1.DataSource = ds
            'cmd.Connection = con
            'cmd.CommandText = "select top 1 sid from survey "
            'sid = Convert.ToInt64(cmd.ExecuteScalar)

            'Chart1.Series(0).ChartType = SeriesChartType.Pie

            'Chart1.ChartAreas("ChartArea1").Area3DStyle.Enable3D = True
            'Chart1.Legends(0).Enabled = True
            'cmd2.CommandText = "select count(respondant.gender) from respondant join response on response.rid=respondant.rid where gender='Female'"
            'logid2 = 2
        If (RadioButton7.Checked) Then

            cmd.Connection = con
            cmd2.Connection = con
            cmd.CommandText = "  select count(respondant.gender) from respondant join response on respondant.rid=response.rid join survey on survey.sid=response.sid where respondant.gender='Male' and survey.title='" & DropDownList1.SelectedItem.Text & "' "
            cmd2.CommandText = "  select count(respondant.gender) from respondant join response on respondant.rid=response.rid join survey on survey.sid=response.sid where respondant.gender='Female' and survey.title='" & DropDownList1.SelectedItem.Text & "' "
            varr7 = Convert.ToDouble(cmd.ExecuteScalar)
            varr8 = Convert.ToDouble(cmd2.ExecuteScalar)
            Dim yValues As Double() = {varr7, varr8}
            Dim xValues As String() = {"Male", "Female"}
            Chart1.Series("Series1").Points.DataBindXY(xValues, yValues)
            Chart1.Series("Series1").Points(0).Color = Color.Blue
            Chart1.Series("Series1").Points(1).Color = Color.Red
            'Chart1.Series("Series1").Points(2).Color = Color.LawnGreen
            Chart1.Series("Series1").ChartType = SeriesChartType.Pie
            Chart1.ChartAreas("ChartArea1").Area3DStyle.Enable3D = True
            'Chart1.Legends(0).Enabled = True

            
        End If
    End Sub

    Protected Sub RadioButton1_CheckedChanged(sender As Object, e As EventArgs) Handles RadioButton1.CheckedChanged
        
    End Sub

   
    Protected Sub RadioButton6_CheckedChanged(sender As Object, e As EventArgs) Handles RadioButton6.CheckedChanged
        RadioButton1.Visible = False
    End Sub
End Class