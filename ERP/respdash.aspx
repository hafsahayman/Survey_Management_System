<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="respdash.aspx.vb" Inherits="ERP.respdash" %>

<!DOCTYPE html>
<html>
<head>
	<title>Survey Yo!</title>
	<%--<link rel="stylesheet" type="text/css" href="style.css" >--%><link href="css/resdashcss.css" rel="stylesheet" />
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
			<li> <asp:HyperLink ID="HyperLink1" runat="server">Dashboard</asp:HyperLink></li>
			<li> <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/suurveyres.aspx">Surveys</asp:HyperLink></li>
			<li> <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/Login.aspx">LogOut</asp:HyperLink></li>
		</ul>
		</div>
		<div class="intropic">
            <img src="images/welcome.png" />
		</div>
		<div class="container">
			<div class="title-container">
				<h1>Welcome </h1>
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
                 <img src="images/user.jpg" />
 			</div>
 			<div class="content">
 				<%--<h2>Name</h2>
 				<h2>Address</h2>
 				<h2>DOB</h2>
 				<h2>Gender</h2>
 				<h2>Email</h2>
 				<h2>Pno</h2>--%>
                 <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
                 <asp:Label ID="Label4" runat="server" Text="DOB"></asp:Label>
                 <asp:Label ID="Label5" runat="server" Text="Gender"></asp:Label>
                 <asp:Label ID="Label7" runat="server" Text="Phone Number"></asp:Label>
 			</div>
 		</div>
 		<div class="side-img">
             <img src="images/tilthd1.jpg" />
 			</div>
 	</div>
 </div>
 <div class="dash">
 	<div class="points">
         <img src="images/point.png" />
 		 	<div class="pcontent">
 		 		<h2>Points</h2>
 		 	<%--<h3>10</h3>--%>
                  <asp:Label ID="Label8" runat="server" Text="xyz"></asp:Label>
 		 	</div>
 		 	
 	</div>
 	<div class="points">
         <img src="images/survey.png" />
 		 	<div class="pcontent">
 		 		<h2>Surveys Done</h2>
 		 	<%--<h3>20</h3>--%>
                  <asp:Label ID="Label9" runat="server" Text="xyz"></asp:Label>
 		 	</div>
 		 	
 	</div>
 	
 </div>
 <div class="sur-contain">
 <h3>Recent Surveys Attempted</h3>
 <div class="surhist">
 	<div class="surnum">
         <asp:Label ID="Label10" runat="server" Text="Survey1"></asp:Label>	
 	</div>
 	<div class="surnum">
 		 		<asp:Label ID="Label11" runat="server" Text="Survey2"></asp:Label>		
 	</div>
 	<div class="surnum">
 		 		<asp:Label ID="Label12" runat="server" Text="Survey3"></asp:Label>		
 	</div>
 	<div class="surnum">
 		 		<asp:Label ID="Label13" runat="server" Text="Survey4"></asp:Label>		
 	</div>
 	<div class="surnum">
 		 		<asp:Label ID="Label14" runat="server" Text="Survey5"></asp:Label>		
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
 				<h2>Let's get started & Attempt your first survey!</h2>
 				<%--<button class="add">Attempt Survey</button>--%>
                 <asp:Button ID="Button1" runat="server" Text="Attempt Survey" CssClass="add" />
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

