<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="CompanyReg.aspx.vb" Inherits="ERP.CompanyReg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/Companyregcss.css" rel="stylesheet" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" >
<link href="https://fonts.googleapis.com/css2?family=Balsamiq+Sans&display=swap" rel="stylesheet">
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
                    <p>Company Name
                    </p>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter company name" CssClass="validate"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
 					<p>Company Type</p>
                    <div class="select-box">
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="select-box">
                        <asp:ListItem>Marketing</asp:ListItem>
                        <asp:ListItem>Electronics</asp:ListItem>
                        <asp:ListItem>Entertainment</asp:ListItem>
                        <asp:ListItem>Beauty Products</asp:ListItem>
                    </asp:DropDownList>
                    </div>
 					<p>Address</p>
 					<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" CssClass="validate" ErrorMessage="Enter the address"></asp:RequiredFieldValidator>
 					<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
 					<p>Phone Number</p>
 					<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Enter Valid Phone Number" ValidationExpression="^([7-9]{1})([0-9]{9})" CssClass="validate"></asp:RegularExpressionValidator>
 					<asp:TextBox ID="TextBox3" runat="server" MaxLength="10"></asp:TextBox>
 					<p>GST Number</p>
 					<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" CssClass="validate" ErrorMessage="Please enter the GST"></asp:RequiredFieldValidator>
 					<asp:TextBox ID="TextBox4" runat="server" MaxLength="15"></asp:TextBox>
 					<p>Tell us more about your company</p>
 					<%--<textarea id="TextArea1" cols="20" rows="5"></textarea>--%>
                    <asp:TextBox ID="TextBox5" runat="server" Columns="20" Rows="5" TextMode="MultiLine"></asp:TextBox>
 					<p>Logo</p>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="FileUpload1" ErrorMessage="Choose an image"></asp:RequiredFieldValidator>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                     <asp:Button ID="Button1" runat="server" Text="Create Account" CssClass="btn" ForeColor="White" />
 					
 				</form>
 			</div>

 		</div>
 	</div>
 </div>
</body>
</html>
