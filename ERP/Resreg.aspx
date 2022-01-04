<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Resreg.aspx.vb" Inherits="ERP.Resreg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/resregcss.css" rel="stylesheet" />
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
 					<asp:TextBox ID="TextBox1" runat="server" pattern="^[A-Za-z -]+$"></asp:TextBox>
 					<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" CssClass="validate" ErrorMessage="Enter First Name"></asp:RequiredFieldValidator>
 					<p>Last Name</p>
 					<asp:TextBox ID="TextBox2" runat="server" pattern="^[A-Za-z -]+$"></asp:TextBox>
 					<p>Date of Birth</p>
 					<asp:TextBox ID="TextBox3" runat="server" TextMode="Date"></asp:TextBox>
 					<p>Gender</p>
 					<div class="radio-container">
 						<asp:RadioButton ID="male" Text="Male" runat="server" GroupName="Role" CssClass="radio-container"  />
                         <asp:RadioButton ID="female" Text="Female" runat="server" GroupName="Role" CssClass="radio-container" />
                         <asp:RadioButton ID="Other" Text="Other" runat="server" GroupName="Role" CssClass="radio-container" />
 					</div>
 					<p>Phone Number</p>
 					<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" CssClass="validate" ErrorMessage="Enter valid  number" ValidationExpression="^([7-9]{1})([0-9]{9})"></asp:RegularExpressionValidator>
 					<asp:TextBox ID="TextBox4" runat="server" MaxLength="10"></asp:TextBox>
 					<asp:Button ID="Button1" runat="server" Text="Create Account" CssClass="btn" ForeColor="White" />
 				</form>
 			</div>

 		</div>
 	</div>
 </div>
</body>
</html>