<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="chartfake.aspx.vb" Inherits="ERP.chartfake" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/Report.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="homesection" class="intro">
        
			<nav>
		<div class="logo">
			<img src="images/Untitled-1.1.png" />
		</div>
	 <ul>
			<li><a href="#">Dashboard</a></li>
			<li><a href="#Surveys">Create Survey</a></li>
			<li><a href="#Surveys">My Surveys</a></li>
			<li><a href="#Surveys">Report</a></li>
			<li><a href="#Log Out">Log Out</a></li>
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
         <img src="images/pie.png" />
 		 	<div class="pcontent">
 		 		<h2>Pie Chart</h2>
 		 	<h4>Pie charts can be used to show percentages of a whole, and represents percentages at a set point in time.It is used to convey that one segment of the total is relatively small or large.</h4>
 		 	</div>
 		 	
 	</div>
 </div>
</div>
<div class="form">
		<!-- <form> -->
			<label>Analysis based on:</label>
			<div class="radio-container">
 						<input type="radio" id="question" name="type">
 						<label for="type">Question</label>

 						<input type="radio" id="gender" name="type">
 						<label for="type">Gender</label>
 					</div>
			
		<!-- </form> -->
	</div>
	<div class="container-box">
 		<div class="main">
 			<h1>Choose Your Survey</h1>
 			<div class="content">
 					<div class="select-box">
 						<select>
 							<option>Marketing</option>
 							<option>Electronics</option>
 							<option>Entertainment</option>
 							<option>Beauty Products</option>
 						</select>
 						
 					</div>
 					<button class="btn" type="submit">Choose</button>	
 			</div>
 		</div>
 		<div class="form2">
		<!-- <form> -->
			<label>Choose Your Question</label>
			<div class="radio-container2">
 						<input type="radio" id="question" name="type">
 						<label for="type">Q1</label>

 						<input type="radio" id="question" name="type">
 						<label for="type">Q2</label>
 						<input type="radio" id="question" name="type">
 						<label for="type">Q3</label>
 						<input type="radio" id="question" name="type">
 						<label for="type">Q4</label>
 						<input type="radio" id="question" name="type">
 						<label for="type">Q5</label>
 					</div>
			
		<!-- </form> -->
	</div>
        <asp:Button ID="Button1" runat="server" Text="Button"  CssClass="btn"/>
        <asp:Chart ID="Chart1" runat="server">
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
