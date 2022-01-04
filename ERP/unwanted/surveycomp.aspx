<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="surveycomp.aspx.vb" Inherits="ERP.surveycomp" %>

<!DOCTYPE html>
<html>
<head>
	<title>Survey Yo!</title>
    <link href="css/surveycompcss.css" rel="stylesheet" />
	<link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Bree+Serif&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Libre+Baskerville&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <%--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>">--%>
   <%-- <script>
        $(document).ready(function () {
            $('.login-form').ShowHideDivOnButtonclick(function () {
                //$('.login-form').show();
                //$(this).hide;
            }
            );
        });--%>
    <%--</script>--%>
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Balsamiq+Sans&display=swap" rel="stylesheet">
     <meta charset="utf-8">
     <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
    <script>
        $('#create').css('display', 'none');
        $('#questions').css('display', 'none');
        $("#myDiv").hide().css("visibility", "hidden");
        function ShowHideDivOnButtonClick() {
    
            $('#create').toggle("slow");
           
            return false;
        }
        $("#myDiv").hide().css("visibility", "hidden");
        function SurveyquestionsOnButtonClick() {

            $('#questions').toggle("slow");

            return false;
        }
    </script>
</head>
<body>
   <form id="form2" runat="server" >
	<div id="homesection" class="intro">
			<nav>
		<div class="logo">
			<img src="">
		</div>
	 <ul>
         <li><asp:HyperLink ID="Dashboard" runat="server" NavigateUrl="~/CompanyDashboard.aspx">Dashboard</asp:HyperLink></li> 	
         <li><asp:HyperLink ID="Create_Surveys" runat="server">Surveys</asp:HyperLink></li> 	
         <li><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/companylog.aspx">My Surveys</asp:HyperLink></li> 
          	<li><asp:HyperLink ID="Report" runat="server">Report</asp:HyperLink></li> 	
         <li><asp:HyperLink ID="Log_out" runat="server">Log Out</asp:HyperLink></li> 	
			<%--<li><a href="#">Dashboard</a></li>
			<li class="active"><a href="#create">Create Surveys</a></li>
			<li><a href="#Surveys">My Surveys</a></li>
			<li><a href="#Report">Report</a></li>
			<li><a href="#Log Out">Log Out</a></li>--%>
		</ul>
		</div>
		<div class="intropic">
            <img src="images/reporting-historic.png" />
		</div>
		<div class="container">
	<div class="title-container">
		<h1>Create your survey in minutes. </h1>
		<h5>Reach your audience on every device.</h5>
		<%--<button class="btn" type="submit">Create Survey</button>--%>
        <asp:Button ID="Button1" runat="server" Text="Create Survey" CssClass="btns" OnClientClick="javascript:return ShowHideDivOnButtonClick();"/>
	</div>	
		</div>
	</nav>
	<!-- </div> -->
	 <div class="login-form" id="create" style="display:none">
 	<h1>Experience the craft of survey creation.</h1>
 	<div class="container-box">
 		<div class="main">
 			<div class="content">
 				<h2>Create Survey</h2>
 				<%--<form id="form1" runat="server" action="" method="post">--%>
                 
 					<p>Survey Title</p>
 					<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
 					<p>Survey Description</p>
 				    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
 					<p>Survey Type</p>
 					<div class="select-box">
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="select-box">
                        <%--<asp:ListItem>Select</asp:ListItem>--%>
                        <asp:ListItem>Marketing</asp:ListItem>
                        <asp:ListItem>Electronics</asp:ListItem>
                            <asp:ListItem>Entertainment</asp:ListItem>
                        <asp:ListItem>Beauty Products</asp:ListItem>
                    </asp:DropDownList>
 						<%--<select>
 							<option>Marketing</option>
 							<option>Electronics</option>
 							<option>Entertainment</option>
 							<option>Beauty Products</option>
 						</select>--%>
 						
 					</div>
 					<%--<button class="btn" type="submit">Next</button>--%>
                     <asp:Button ID="Button2" runat="server" Text="Next" CssClass="btn" OnClientClick="javascript:return SurveyquestionsOnButtonClick();"/>
 				<%--</form>--%>
 			</div>

 		</div>
 	</div>
 </div>

        <div class="form-container" id="questions">
		<h2>Survey Title</h2>
	<div class="form">
		<!-- <form> -->
			<label>Q1</label>
			<input type="text" name="Q1">
			<%--<button class="add">Add</button><br>--%>
        <asp:Button ID="Button3" runat="server" Text="Add" cssclass="add" /><br />
			<div class="radio-container">
 						<input type="radio" id="stronglyagree" name="q1">
 						<label for="Q1">Strongly Agree</label>

 						<input type="radio" id="agree" name="q1">
 						<label for="agree">Agree</label>

 						<input type="radio" id="neutral"  name="q1">
 						<label for="neutral">Neutral</label>

 						<input type="radio" id="disagree"  name="q1">
 						<label for="disagree">Disagree</label>

 						<input type="radio" id="stronglydisagree"  name="q1">
 						<label for="stronglydisagree">Strongly Disagree</label>
 					</div>
			
		<!-- </form> -->
	</div>
	<div class="form">
		<!-- <form> -->
			<label>Q2</label>
			<input type="text" name="Q2">
			<%--<button class="add">Add</button><br>--%>
        <asp:Button ID="Button4" runat="server" Text="Add" CssClass="add" /><br />
			<div class="radio-container">
 						<input type="radio" id="Radio1" name="q2">
 						<label for="stronglyagree">Strongly Agree</label>

 						<input type="radio" id="Radio2" name="q2">
 						<label for="agree">Agree</label>

 						<input type="radio" id="Radio3"  name="q2">
 						<label for="neutral">Neutral</label>

 						<input type="radio" id="Radio4"  name="q2">
 						<label for="disagree">Disagree</label>

 						<input type="radio" id="Radio5"  name="q2">
 						<label for="stronglydisagree">Strongly Disagree</label>
 					</div>
			
		<!-- </form> -->
	</div>
	<div class="form">
		<!-- <form> -->
			<label>Q3</label>
			<input type="text" name="Q3">
			<%--<button class="add">Add</button><br>--%>
        <asp:Button ID="Button5" runat="server" Text="Add" CssClass="add" /><br />
			<div class="radio-container">
 						<input type="radio" id="Radio6" name="q3">
 						<label for="stronglyagree">Strongly Agree</label>

 						<input type="radio" id="Radio7" name="q3">
 						<label for="agree">Agree</label>

 						<input type="radio" id="Radio8"  name="q3">
 						<label for="neutral">Neutral</label>

 						<input type="radio" id="Radio9"  name="q3">
 						<label for="disagree">Disagree</label>

 						<input type="radio" id="Radio10"  name="q3">
 						<label for="stronglydisagree">Strongly Disagree</label>
 					</div>
			
		<!-- </form> -->
	</div>
	<div class="form">
		<!-- <form> -->
			<label>Q4</label>
			<input type="text" name="Q4">
			<%--<button class="add">Add</button><br>--%>
        <asp:Button ID="Button6" runat="server" Text="Add" CssClass="add" /><br />
			<div class="radio-container">
 						<input type="radio" id="Radio11" name="q4">
 						<label for="stronglyagree">Strongly Agree</label>

 						<input type="radio" id="Radio12" name="q4">
 						<label for="agree">Agree</label>

 						<input type="radio" id="Radio13"  name="q4">
 						<label for="neutral">Neutral</label>

 						<input type="radio" id="Radio14"  name="q4">
 						<label for="disagree">Disagree</label>

 						<input type="radio" id="Radio15"  name="q4">
 						<label for="stronglydisagree">Strongly Disagree</label>
 					</div>
			
		<!-- </form> -->
	</div>
	<div class="form">
		<!-- <form> -->
			<label>Q5</label>
			<input type="text" name="Q5">
			<%--<button class="add">Add</button><br>--%>
        <asp:Button ID="Button7" runat="server" Text="Add" CssClass="add" /><br />
			<div class="radio-container">
 						<input type="radio" id="Radio16" name="q5">
 						<label for="stronglyagree">Strongly Agree</label>

 						<input type="radio" id="Radio17" name="q5">
 						<label for="agree">Agree</label>

 						<input type="radio" id="Radio18"  name="q5">
 						<label for="neutral">Neutral</label>

 						<input type="radio" id="Radio19"  name="q5">
 						<label for="disagree">Disagree</label>

 						<input type="radio" id="Radio20"  name="q5">
 						<label for="stronglydisagree">Strongly Disagree</label>
 					</div>
			
		<!-- </form> -->
	</div>
	
	<%--<button class="submit">Submit</button>--%>
            <asp:Button ID="Button8" runat="server" Text="Submit" cssclass="submit"/>
	</div>
       <footer id="contact" class="footer">
      <div class="footer-left">
        <img src="kh.png" alt="">
        <div class="socials">
          <a href="#"><img src="https://icons.iconarchive.com/icons/danleech/simple/32/facebook-icon.png" ><i class="fa fa-facebook"></i></a>
          <a href="#"><img src="https://static01.nyt.com/images/2014/08/10/magazine/10wmt/10wmt-superJumbo-v4.jpg"><i class="fa fa-twitter"></i></a>
         
          <a href="#"><img src="https://www.fpsa.org/wp-content/uploads/linkedin-logo-copy.png"><i class="fa fa-linkedin"></i></a>
          
        </div>
      </div>
      <ul class="footer-right">
      	 <li class="features">
            <h2>Quick Links</h2>
          <ul class="box">
            <li><a href="#">About Us</a></li>
            <li><a href="#">Surveys</a></li>
            <li><a href="#">Insights</a></li>
            <li><a href="#">Packages</a></li>
          </ul>
        </li>
        <li>
          <h2>Office Address</h2>
          <ul class="box">
            <li><a href="#">Bangalore</a></li>
            <li><a href="#">India</a></li>
          </ul>
        </li>
      </ul>
    </footer>
          <div class="footer-bottom">
          <p>ALL Right reserved by &copy;Survey Yo! 2021</p>
      </div>
    </form>
	</body>
    </html>

