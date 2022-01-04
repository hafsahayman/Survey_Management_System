<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="mysurvey2.aspx.vb" Inherits="ERP.mysurvey2" %>

<!DOCTYPE html>
<html>
<head>
	<title>Survey Yo!</title>
	<%--<link rel="stylesheet" type="text/css" href="style.css" >--%>
    <link href="css/mysurvey.css" rel="stylesheet" />
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
        <li><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/CompanyDashboard.aspx">Dashboard</asp:HyperLink></li>
         <li><asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/companylog.aspx">Create Surveys</asp:HyperLink></li>
         <li><asp:HyperLink ID="HyperLink3" runat="server">My Surveys</asp:HyperLink></li>
         <li><asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/Report.aspx">Report</asp:HyperLink></li>
         <li><asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Login.aspx">Log Out</asp:HyperLink></li>
			
		</ul>
		</div>
		<div class="intropic">
            <img src="images/tilthd1.jpg" />
		</div>
		<div class="container">
			<div class="title-container">
				<h1>Welcome back!</h1>
				<h5>Making Surveys is simple,after all<br>surveys are an art and a science<br>—but they’re not rocket science!</h5>
			</div>	
		</div>
	</nav>
	<div class="login-form">
 	<h1>Your Customized Surveys</h1>
 	<div class="container-box">
 		<div class="main">
 			<div class="content">
 				
 					<label>Survey Type</label>
 					<div class="select-box">
                         <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="type" DataValueField="type">
                             <asp:ListItem>Marketing</asp:ListItem>
                             <asp:ListItem>Electronics</asp:ListItem>
                             <asp:ListItem>Entertainment</asp:ListItem>
                             <asp:ListItem>Beauty Products</asp:ListItem>
                         </asp:DropDownList>
 					     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ERPConnectionString %>" SelectCommand="SELECT DISTINCT [type] FROM [survey]"></asp:SqlDataSource>
 					</div>
 					<label>Survey Title</label>
                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>

 					<div class="select-box">
 						 <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True">
 						<asp:ListItem>Select</asp:ListItem>
                              </asp:DropDownList>
 					</div>
 					<%--<button class="btn" type="submit">Search</button><br>--%>
                       <asp:Button ID="Button1" runat="server" Text="Submit" cssclass="btn"/>
 					
 				
 				<div class="form-container">
							
                     <asp:Label ID="Label3" runat="server" Text="Survey Title"></asp:Label>
									<div class="button">
									<%--<button class="add">Edit</button>
									<button class="add">Delete</button><br>--%>
                                        <asp:Button ID="Button2" runat="server" Text="Edit" cssclass="add"/>
                                        <asp:Button ID="Button3" runat="server" Text="Delete" cssclass="add"/>
							</div>
								<div class="form">
										<label>Q1</label>
										<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
								</div>
								<div class="form">
										<label>Q2</label>
										<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
								</div>
								<div class="form">

										<label>Q3</label>
										<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
								</div>
								<div class="form">
										<label>Q4</label>
										<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
								</div>
								<div class="form">
										<label>Q5</label>
										<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
								</div>
			 	</div>

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