<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="forgotpass.aspx.vb" Inherits="ERP.forgotpass" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
	<link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="css/forgotpasscss.css" rel="stylesheet" />
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Balsamiq+Sans&display=swap" rel="stylesheet">
</head>
<body>
    <div class="login-form">
 	<h1>Survey Yo</h1>
 	<div class="container">
 		<div class="main">
 			<div class="content">
 				<h2>Forgot Password ?</h2>
 				<form id="form1" runat="server">
 					<p>Email</p>
 					<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="email" ErrorMessage="Please Enter Email"></asp:RequiredFieldValidator>
 					<asp:TextBox ID="email" runat="server"></asp:TextBox>
 					<%--<button class="verify" type="submit">Verify</button>--%>
                     <asp:Button ID="verify" runat="server" Text="Send" cssclass="btn" />
 					<p>Verification Code<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </p>
 					<asp:TextBox ID="vcode" runat="server" ></asp:TextBox>
                     <asp:Button ID="Button1" runat="server" Text="Verify" cssclass="btn" />
 				    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
 				</form>
 			</div>
 		</div>
 	</div>
 </div>
</body>
</html>

