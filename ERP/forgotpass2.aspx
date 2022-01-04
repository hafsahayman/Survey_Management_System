<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="forgotpass2.aspx.vb" Inherits="ERP.forgotpass2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Balsamiq+Sans&display=swap" rel="stylesheet">
    <link href="css/forgotpass2css.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <div class="login-form">
 	<h1>Survey Yo</h1>
 	<div class="container">
 		<div class="main">
 			<div class="content">
 				<h2>Forgot Password?</h2>
 				<form id="form1" runat="server">
 					<p>New Password</p>
 					<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="cpwd" ControlToValidate="pwd" ErrorMessage="Passwords do not match"></asp:CompareValidator>
 					<asp:TextBox ID="pwd" runat="server" TextMode="Password"></asp:TextBox>
 					<p>Confirm Password</p>
 					<asp:TextBox ID="cpwd" runat="server" TextMode="Password"></asp:TextBox>
                     <asp:Button ID="btn" runat="server" Text="Reset Password" CssClass="btn" />
 				    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
 				</form>
 			</div>

 		</div>
 	</div>
 </div>
</body>
</html>
