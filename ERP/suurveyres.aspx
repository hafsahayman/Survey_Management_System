<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="suurveyres.aspx.vb" Inherits="ERP.suurveyres" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/surveyresscss.css" rel="stylesheet" />
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Bree+Serif&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Libre+Baskerville&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" >
<link href="https://fonts.googleapis.com/css2?family=Balsamiq+Sans&display=swap" rel="stylesheet">
</head>
<body>
    <form id="form1" runat="server">
    <div id="homesection" class="intro">
			<nav>
		<div class="logo">
			<img src="images/Untitled-1.1.png" />
		</div>
	 <ul>
         <li><asp:HyperLink ID="Dashboard" runat="server" NavigateUrl="~/respdash.aspx">Dashboard</asp:HyperLink></li> 	
         <li><asp:HyperLink ID="Surveys" runat="server">Surveys</asp:HyperLink></li> 	
          	<li><asp:HyperLink ID="Log_Out" runat="server" NavigateUrl="~/Login.aspx">Log Out</asp:HyperLink></li> 		
		<%--	<li><a href="#Dashboard">Dashboard</a></li>
			<li><a href="#Surveys">Surveys</a></li>
			<li><a href="#Log Out">Log Out</a></li>--%>
		</ul>
		
	</nav>
	</div>
	<div class="container">
	<div class="title-container">
		<h1>Welcome to</h1>
		<h2>Survey Yo!</h2>
		<h3>Want to share your<br>point of view?</h3>
	</div>	
		</div>
		<div class="banner">
            <img src="images/attempt.jpg" />
		</div>
<div class="aboutbox">
			<div class="imgbx">
                <img src="images/4445.jpg" />
				<!-- <button class="btn" type="submit">Attempt</button> -->
			</div>
				<div class="content">
					<span class="heading"><strong>Marketing</strong></span>
					<p>Marketing surveys are the survey research and analysis of the market for a
						particular product/service which includes the investigation into customer
						inclinations.Market surveys are tools to directly collect
						feedback from the target audience to understand their characteristics,
						expectations, and requirements. 
					</p>
					<%--<button class="btn" type="submit">Attempt</button>--%>
                    <asp:Button ID="Button1" runat="server" class="test" Text="Attempt"  UseSubmitBehavior="False"/>
				</div>
</div>
<div class="aboutbox-left">
				<div class="content-left">
					<span class="heading-left"><strong>Electronics</strong></span>
					<p>This survey aims to identify the thought process of a consumer when purchasing an electronic device, which can enable a company to launch new products, manage supply of the stock, etc.It can enable companies to understand the market demand, understand the flaws in their product and also find out issues in the various processes that influence the purchase of their goods.
					</p>
					 <asp:Button ID="Button4" runat="server" Text="Attempt" cssclass="btn2"/>
				</div>
				<div class="imgbx-left">
                    <img src="images/43043.jpg" />
				<!-- <button class="btn" type="submit">Attempt</button> -->
			</div>
</div>
<div class="aboutbox">
			<div class="imgbx">
				<img src="images/32615.jpg" />
				<!-- <button class="btn" type="submit">Attempt</button> -->
			</div>
				<div class="content">
					<span class="heading"><strong>Entertainment</strong></span>
					<p>The media and entertainment industry consists of film, television, radio and print. These segments include movies, TV shows, radio shows, news, music, newspapers, magazines, and books which help to provide better insights to the companies,authors,publishers and producers.
					</p>
                     <asp:Button ID="Button3" runat="server" Text="Attempt" cssclass="btn"/>
				</div>
</div>
<div class="aboutbox-left">
				<div class="content-left">
					<span class="heading-left"><strong>Beauty Products</strong></span>
					<p>Digital platforms and social media are playing an increasingly important role in educating
						consumers about beauty products, ingredients and their specific hair or skin needs, while also
						offering shopping convenience. Developments in digital technology have brought brands,
						retailers, influencers and beauty advisors closer to beauty consumers than ever before. 
					</p>
                    <asp:Button ID="Button2" runat="server" Text="Attempt" cssclass="btn2"/>
				</div>
				<div class="imgbx-left">
				<img src="images/10674.jpg" />
				<!-- <button class="btn" type="submit">Attempt</button> -->
			</div>
</div>
<footer id="contact" class="footer">
      <div class="footer-left">
          <img src="images/Untitled-2.1.png" />
        <!-- <p>Moving Minds To Right Places</p> -->
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
