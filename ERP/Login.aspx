<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Login.aspx.vb" Inherits="ERP.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/logcss.css" rel="stylesheet" />

</head>
<body>
    <div class="login-form">
 	<h1>Survey Yo</h1>
 	<div class="container">
 		<div class="main">
 			<div class="content">
 				<h2>Log in</h2>
                 <form id="form1" runat="server">
                    <asp:TextBox ID="user" class="textbox" runat="server" placeholder="Username"  ></asp:TextBox></br>
 					<asp:TextBox ID="pass" class="textbox" runat="server" placeholder="Password" TextMode="Password"  ></asp:TextBox>
                     <asp:HyperLink class ="password" runat="server" NavigateUrl="~/forgotpass.aspx" CssClass="password">Forgot Password ?</asp:HyperLink>
 					<%--<p class="password"><a href="#">Forgot Password?</a></p>--%>
 					<asp:Button ID="Button1" runat="server" Text="Log In" Font-Names="Maiandra GD" ForeColor="White" CssClass="btn"  />
    </form>
                 <%--<p class="account"><a href="#">Don't have an account ?</a></p>--%>
                 <asp:HyperLink class ="account" runat="server" NavigateUrl="~/Register.aspx" CssClass="account">Don't have an account ?</asp:HyperLink>

 			</div>
 			<div class="form-img">
                <img src="images/yetiwithwatermark.jpg" />
 			</div>
 		</div>
 	</div>
 </div>
    <%--<script src="LoginJs.js"></script>--%>
    <script src="logjs.js"></script>
</body>
</html>
