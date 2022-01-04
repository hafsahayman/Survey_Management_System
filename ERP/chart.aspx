%@ Page Language="vb" AutoEventWireup="false" CodeBehind="chart.aspx.vb" Inherits="ERP.chart" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/Report.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:RadioButton ID="RadioButton6" runat="server" GroupName="Select" Text="Question" />
        <asp:RadioButton ID="RadioButton7" runat="server" GroupName="Select" Text="Gender" /></br>
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
        </asp:DropDownList><br />
        <asp:RadioButton ID="RadioButton1" GroupName="radio" runat="server" />
        <asp:RadioButton ID="RadioButton2" GroupName="radio" runat="server" />
        <asp:RadioButton ID="RadioButton3" GroupName="radio" runat="server" />
        <asp:RadioButton ID="RadioButton4" GroupName="radio" runat="server" />
        <asp:RadioButton ID="RadioButton5" GroupName="radio" runat="server" />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Button" CssClass="btn" />
    </div>
        <div >

       
        <asp:Chart ID="Chart1" runat="server" Palette="Excel" Width="356px" >
            <series>
                <asp:Series Name="Series1" LegendText="Aswers Based on question">
                </asp:Series>
            </series>
            <chartareas>
                <asp:ChartArea Name="ChartArea1">
                </asp:ChartArea>
            </chartareas>
        </asp:Chart>
             <asp:Chart ID="Chart2" runat="server">
                 <series>
                     <asp:Series ChartType="Pie" Name="Series1">
                     </asp:Series>
                 </series>
                 <chartareas>

                     <asp:ChartArea Name="ChartArea1">
                     </asp:ChartArea>
                 </chartareas>
            </asp:Chart>
             </div>
    </form>
</body>
</html>
