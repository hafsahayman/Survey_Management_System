<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="CompanyDashboard.aspx.vb" Inherits="ERP.CompanyDashboard" %>

<!DOCTYPE html>
<html>
<head>
	<title>Survey Yo!</title>
    <link href="css/companydashboard.css" rel="stylesheet" />
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
			<li><a href="#">Dashboard</a></li>
			<%--<li class="active"><a href="#create">Create Surveys</a></li>--%>
         <li><asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/companylog.aspx">Create Surveys</asp:HyperLink></li>
			<%--<li><a href="#Surveys">My Surveys</a></li>--%>
         <li><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/mysurvey2.aspx">My Survey</asp:HyperLink></li>
         <li><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/Report.aspx">Report</asp:HyperLink></li>
         <li><asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Login.aspx">Log Out</asp:HyperLink></li>
			<%--<li><a href="#Report">Report</a></li>
			<li><a href="#Log Out">Log Out</a></li>--%>
		</ul>
		</div>
		<div class="intropic">
            <img src="images/welcome.png" />
		</div>
		<div class="container">
			<div class="title-container">
				<h1>Welcome </h1>
				<%--<h2 class="Label">Label</h2>--%>
                <asp:Label ID="Label1" runat="server" Text="Name" CssClass="Label"></asp:Label>
			</div>	
		</div>
	</nav>
</div>
<div class="login-form">
 	<h1>Your Profile</h1>
 	<div class="profile-container">
 		<div class="main">
 			<div class="form-img">
 				<%--<img src="logo.jpg">--%>
                 <asp:Image ID="Image1" runat="server" />
 			</div>
 			<div class="content">
 				<%--<h2>Company Name</h2>
 				<h2>Company Description</h2>
 				<h2>Company Type</h2>
 				<h2>Company Address</h2>
 				<h2>Company Email</h2>
 				<h2>Pno</h2>--%>
                 <asp:Label ID="Label2" runat="server" Text="Company Name"></asp:Label>
                 <asp:Label ID="Label3" runat="server" Text="Company Description"></asp:Label>
                 <asp:Label ID="Label4" runat="server" Text="Company Type"></asp:Label>
                 <asp:Label ID="Label5" runat="server" Text="Company Address"></asp:Label>
                 <asp:Label ID="Label6" runat="server" Text="Company Email"></asp:Label>
                 <asp:Label ID="Label7" runat="server" Text="Phone Number"></asp:Label>
 			</div>
 		</div>
 		<div class="side-img">
             <img src="images/tilthd1.jpg" />
 			</div>
 	</div>
 </div>
 <div class="create-form">
 	<div class="survey-container">
 		<div class="survey-main">
 			<div class="survey-img">
                 <img src="images/create.jpg" />
 			</div>
 			<div class="survey-content">
 				<h2>Let's get started & create your first survey!</h2>
 				<%--<button class="add">Create Survey</button>--%>
                 <asp:Button ID="Button1" runat="server" Text="Create Survey" CssClass="add" />
 			</div>
 		</div>
 	</div>
 </div>
 <div class="fut-form">
 	<h1>Future Integrations</h1>
 	<div class="fut-container">
 		<div class="fut-main">
 			<div class="fut-img">
                 <img src="images/apps.png" />
 			</div>
 			<div class="fut-content">
 				<h2>Will integrate Survey Yo! with tools you already use, like Power BI, Tableau, Zoom, and Salesforce, to automate workflows, create deeper insights, and get more value out of your work day.</h2>
 			</div>
 		</div>
 	</div>
 </div>
 <footer id="contact" class="footer">
      <div class="footer-left">
        <img src="images/Untitled-2.1.png" />
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