<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Register.aspx.vb" Inherits="ERP.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" >
<link href="https://fonts.googleapis.com/css2?family=Balsamiq+Sans&display=swap" rel="stylesheet">
    <link href="css/Regcss.css" rel="stylesheet" />
</head>
<body>
    
 <div class="login-form">
 	<h1>Survey Yo</h1>
 	<div class="container">
 		<div class="main">
 			<div class="form-img">
 				<img src="images/yetiwithwatermark.jpg" />
 			</div>
 			<div class="content">
 				<h2>Create Account</h2>
                <form id="form1" runat="server">
 					<p>Username</p>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter Username"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
 					<p>Password</p>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please Enter Password"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" ></asp:TextBox>
 					<p>Confirm Password</p>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="Passwords do not match"></asp:CompareValidator>
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
                    <br />
 					<p>Email
                    </p>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="Enter Valid email address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="Email cannot be left blank"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="Email"></asp:TextBox>
 					<p>Role</p>
 					<div class="radio-container">
                         <%--<fieldset style="width:200px">--%>
                         <asp:RadioButton ID="company" Text="Company" runat="server" GroupName="Role" CssClass="radio-container" />
                         <asp:RadioButton ID="respondant" Text="Respondant" runat="server" GroupName="Role" CssClass="radio-container" />
                        <%-- <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="radio-container">
                             <asp:ListItem>Company</asp:ListItem>
                             <asp:ListItem>Respondant</asp:ListItem>
                         </asp:RadioButtonList>--%>
                        <%--</fieldset>--%>
 					</div>
                    <asp:Button ID="btn" runat="server" Text="Sign Up" CssClass="btn" ForeColor="White"  />
 				</form>
 			</div>

 		</div>
 	</div>
 </div>
</body>
</html>
