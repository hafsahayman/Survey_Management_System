<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="AdminReg.aspx.vb" Inherits="ERP.AdminReg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/Adminregcss.css" rel="stylesheet" />
</head>
<body>
   
    <div class="login-form">
 	<h1>Survey Yo</h1>
 	<div class="container">
 		<div class="main">
 			<div class="form-img">
 				<img src="images/reg.jpg" />
 			</div>
 			<div class="content">
 				<h2>One Step Away...</h2>
 				 <form id="form1" runat="server">
 					<p>First Name</p>
 					<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
 					<p>Last Name</p>
 					<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
 					<p>Gender</p>
 					<div class="radio-container">
 						<asp:RadioButton ID="male" Text="Male" runat="server" GroupName="Role" CssClass="radio-container"   />
                         <asp:RadioButton ID="female" Text="Female" runat="server" GroupName="Role" CssClass="radio-container"  />
                         <asp:RadioButton ID="Other" Text="Other" runat="server" GroupName="Role" CssClass="radio-container"  />
 					</div>
 					<p>Phone Number</p>
 					<asp:TextBox ID="TextBox3" runat="server" TextMode="Phone"></asp:TextBox>
 					
                      <asp:Button ID="Button1" runat="server" Text="Create Account" CssClass="btn" ForeColor="White"  />
 				</form>
 			</div>

 		</div>
 	</div>
 </div>
</body>
</html>
