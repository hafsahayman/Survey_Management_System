<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Report.aspx.vb" Inherits="ERP.Report" %>

<!DOCTYPE html>
<html>
<head>
	<title>Survey Yo!</title>
    <link href="css/Report.css" rel="stylesheet" />
	<link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Bree+Serif&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Libre+Baskerville&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Balsamiq+Sans&display=swap" rel="stylesheet">
     <meta charset="utf-8">
</head>
<body>
    <form id="form1" runat="server">
	<div id="homesection" class="intro">
			<nav>
		<div class="logo">
			<img src="images/Untitled-1.1.png" />
		</div>
	 <ul>
				 <li><asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/CompanyDashboard.aspx">Dashboard</asp:HyperLink></li>
         <li><asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/companylog.aspx">Create Surveys</asp:HyperLink></li>
         <li><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/mysurvey2.aspx">My Survey</asp:HyperLink></li>
         <li><asp:HyperLink ID="HyperLink2" runat="server" >Report</asp:HyperLink></li>
         <li><asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Login.aspx">Log Out</asp:HyperLink></li>
		</ul>
		</div>
		<div class="intropic">
			<img src="images/66260.jpg" />
		</div>
		<div class="container">
			<div class="title-container">
				<h1>Data Analysis</h1>
				<h2>Make quick and easy analysis to<br> make better data driven decision </h2>
			</div>	
		</div>
	</nav>
</div>
<div class="data">
<h3>Data Visualization Techniques</h3>
<div class="dash">
 	<div class="points">
 		 	<img src="images/bar.jpg" />
 		 	<div class="pcontent">
 		 		<h2>Bar Chart</h2>
 		 	<h4> Bar graphs are used to compare things between different groups or to track changes over time. However, when trying to measure change over time, bar graphs are best when the changes are larger.</h4>
 		 	</div>
 		 	
 	</div>
 	<div class="points">
 		 	<<img src="images/pie.png" />
 		 	<div class="pcontent">
 		 		<h2>Pie Chart</h2>
 		 	<h4>Pie charts can be used to show percentages of a whole, and represents percentages at a set point in time.It is used to convey that one segment of the total is relatively small or large.</h4>
 		 	</div>
 		 	
 	</div>
 </div>
</div>
<div class="form">
		<!-- <form> -->
			
			<div class="radio-container">
                <h3>Analysis based on:</h3>
      <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="radio-container">
          <asp:ListItem>Questions</asp:ListItem>
          <asp:ListItem>Gender</asp:ListItem>
        </asp:RadioButtonList>
 						<%--<input type="radio" id="question" name="type">
 						<label for="type">Question</label>

 						<input type="radio" id="gender" name="type">
 						<label for="type">Gender</label>--%>
 					</div>
			
		<!-- </form> -->
	</div>
	<div class="container-box">
 		<div class="main">
 			<h1>Choose Your Survey</h1>
 			<div class="content">
 					<div class="select-box">
 						
                         <asp:DropDownList ID="DropDownList1" runat="server">
                     
                         </asp:DropDownList>
 					</div>
 					<button class="btn" type="submit">Choose</button>	
 			</div>
 		</div>
 		<div class="form2">
		<!-- <form> -->
			<label>Choose Your Question</label>
           
			<div class="radio-container2">
                <%--<label for="type">Q1</label>--%>
                <asp:RadioButton ID="RadioButton1" runat="server" GroupName="Question" Text="Q1" /><br />
 						<%--<label for="type">Q2</label>--%>
 						<asp:RadioButton ID="RadioButton2" runat="server" GroupName="Question" Text="Q2" /><br />
 						<%--<label for="type">Q3</label>--%>
 					<asp:RadioButton ID="RadioButton3" runat="server" GroupName="Question" Text="Q3" /><br />
 						<%--<label for="type">Q4</label>--%>
 						<asp:RadioButton ID="RadioButton4" runat="server" GroupName="Question" Text="Q4" /><br />
 						<%--<label for="type">Q5</label>--%>
 					<asp:RadioButton ID="RadioButton5" runat="server" GroupName="Question" Text="Q5" /><br />
 						
 					</div>
			
		<!-- </form> -->
	</div>
	
        <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="submit" MaintainScrollPositionOnPostBack="true"  />
        <asp:Chart ID="Chart1" runat="server" CssClass="chart">
            <Series>
                <asp:Series Name="Series1"></asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
            </ChartAreas>
        </asp:Chart>
        </form>
</body>
</html>