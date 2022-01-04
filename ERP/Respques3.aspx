<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Respques3.aspx.vb" Inherits="ERP.Respques3" %>

<!DOCTYPE html>
<html>
<head>
	<title>Survey Yo!</title>
	<%--<link rel="stylesheet" type="text/css" href="style.css" >--%>
    <link href="css/respoquescss.css" rel="stylesheet" />
	<link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Bree+Serif&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Libre+Baskerville&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" >
	<link href="https://fonts.googleapis.com/css2?family=Balsamiq+Sans&display=swap" rel="stylesheet">
     <meta charset="utf-8">
</head>
<body>
    <form id="form1" runat="server">
<div class="login-form">
 	<h1>Choose Your Survey</h1>
 	<div class="container-box">
 		<div class="main">
 			<div class="content">
                
 					<div class="select-box">
                         <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                              <asp:ListItem>Select</asp:ListItem>
                          </asp:DropDownList>
                         
 						<%--<<%--select>
 							<option>Marketing</option>
 							<option>Electronics</option>
 							<option>Entertainment</option>
 							<option>Beauty Products</option>
 						</select>--%>
 						
 					</div>
 					<%--<button class="btn" type="submit">Choose</button>--%>	
                 <asp:Button ID="Button1" runat="server" Text="Choose" CssClass="btn" />
 			</div>
 		</div>
 	</div>
 <!-- </div>
 <div class=form-container> -->
		<!-- <h2>Survey Title</h2> -->
	<div class="form">
		<!-- <form> -->
			<label>Q1</label>
			<%--<input type="text" name="Q1">--%>
            <asp:Label ID="Label1" runat="server" Text="Label" cssclass="form">Question 1</asp:Label>
			<%--<div class="radio-container">
 						<input type="radio" id="stronglyagree" name="q1">
 						<label for="Q1">Strongly Agree</label>

 						<input type="radio" id="agree" name="q1">
 						<label for="agree">Agree</label>

 						<input type="radio" id="neutral"  name="q1">
 						<label for="neutral">Neutral</label>

 						<input type="radio" id="disagree"  name="q1">
 						<label for="disagree">Disagree</label>

 						<input type="radio" id="stronglydisagree"  name="q1">
 						<label for="stronglydisagree">Strongly Disagree</label>
 					</div>--%>
            <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="Please choose an option"></asp:RequiredFieldValidator>--%>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" cssclass="radio-container">
                    <asp:ListItem Value="5">Strongly Agree</asp:ListItem>
                    <asp:ListItem Value="4">Agree</asp:ListItem>
                    <asp:ListItem Value="3">Neutral</asp:ListItem>
                    <asp:ListItem Value="2">Disagree</asp:ListItem>
                <asp:ListItem Value="1">Strongly Disagree</asp:ListItem>
            </asp:RadioButtonList>
			
		<asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
			
		<!-- </form> -->
	</div>
	<div class="form">
		<!-- <form> -->
			<label>Q2</label>
			<%--<input type="text" name="Q2">--%>
         <asp:Label ID="Label2" runat="server" Text="Label" cssclass="form">Question 2</asp:Label>
			<%--<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="RadioButtonList2" ErrorMessage="Please choose an option"></asp:RequiredFieldValidator>--%>
			<%--<div class="radio-container">
 						<input type="radio" id="Radio1" name="q2">
 						<label for="stronglyagree">Strongly Agree</label>

 						<input type="radio" id="Radio2" name="q2">
 						<label for="agree">Agree</label>

 						<input type="radio" id="Radio3"  name="q2">
 						<label for="neutral">Neutral</label>

 						<input type="radio" id="Radio4"  name="q2">
 						<label for="disagree">Disagree</label>

 						<input type="radio" id="Radio5"  name="q2">
 						<label for="stronglydisagree">Strongly Disagree</label>
 					</div>--%>
        <asp:RadioButtonList ID="RadioButtonList2" runat="server" cssclass="radio-container">
                    <asp:ListItem Value="5">Strongly Agree</asp:ListItem>
                    <asp:ListItem Value="4">Agree</asp:ListItem>
                    <asp:ListItem Value="3">Neutral</asp:ListItem>
                    <asp:ListItem Value="2">Disagree</asp:ListItem>
                <asp:ListItem Value="1">Strongly Disagree</asp:ListItem>
            </asp:RadioButtonList>
			
		<!-- </form> -->
	</div>
	<div class="form">
		<!-- <form> -->
			<label>Q3</label>
			<%--<input type="text" name="Q3">--%>
         <asp:Label ID="Label3" runat="server" Text="Label" cssclass="form">Question 3</asp:Label>
			<%--<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="RadioButtonList3" ErrorMessage="Please choose an option"></asp:RequiredFieldValidator>--%>
			<%--<div class="radio-container">
 						<input type="radio" id="Radio6" name="q3">
 						<label for="stronglyagree">Strongly Agree</label>

 						<input type="radio" id="Radio7" name="q3">
 						<label for="agree">Agree</label>

 						<input type="radio" id="Radio8"  name="q3">
 						<label for="neutral">Neutral</label>

 						<input type="radio" id="Radio9"  name="q3">
 						<label for="disagree">Disagree</label>

 						<input type="radio" id="Radio10"  name="q3">
 						<label for="stronglydisagree">Strongly Disagree</label>
 					</div>--%>
        <asp:RadioButtonList ID="RadioButtonList3" runat="server" cssclass="radio-container">
                    <asp:ListItem Value="5">Strongly Agree</asp:ListItem>
                    <asp:ListItem Value="4">Agree</asp:ListItem>
                    <asp:ListItem Value="3">Neutral</asp:ListItem>
                    <asp:ListItem Value="2">Disagree</asp:ListItem>
                <asp:ListItem Value="1">Strongly Disagree</asp:ListItem>
            </asp:RadioButtonList>
			
		<!-- </form> -->
	</div>
	<div class="form">
		<!-- <form> -->
			<label>Q4</label>
			<%--<input type="text" name="Q4">--%>
         <asp:Label ID="Label4" runat="server" Text="Label" cssclass="form">Question 4</asp:Label>
			<%--<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="RadioButtonList4" ErrorMessage="Please choose an option"></asp:RequiredFieldValidator>--%>
			<%--<div class="radio-container">
 						<input type="radio" id="Radio11" name="q4">
 						<label for="stronglyagree">Strongly Agree</label>

 						<input type="radio" id="Radio12" name="q4">
 						<label for="agree">Agree</label>

 						<input type="radio" id="Radio13"  name="q4">
 						<label for="neutral">Neutral</label>

 						<input type="radio" id="Radio14"  name="q4">
 						<label for="disagree">Disagree</label>

 						<input type="radio" id="Radio15"  name="q4">
 						<label for="stronglydisagree">Strongly Disagree</label>
 					</div>--%>
        <asp:RadioButtonList ID="RadioButtonList4" runat="server" cssclass="radio-container">
                    <asp:ListItem Value="5">Strongly Agree</asp:ListItem>
                    <asp:ListItem Value="4">Agree</asp:ListItem>
                    <asp:ListItem Value="3">Neutral</asp:ListItem>
                    <asp:ListItem Value="2">Disagree</asp:ListItem>
                <asp:ListItem Value="1">Strongly Disagree</asp:ListItem>
            </asp:RadioButtonList>
			
		<!-- </form> -->
	</div>
	<div class="form">
		<!-- <form> -->
			<label>Q5</label>
			<%--<input type="text" name="Q5">--%>
         <asp:Label ID="Label5" runat="server" Text="Label" cssclass="form">Question 5</asp:Label>
			<%--<div class="radio-container">
 						<input type="radio" id="Radio16" name="q5">
 						<label for="stronglyagree">Strongly Agree</label>

 						<input type="radio" id="Radio17" name="q5">
 						<label for="agree">Agree</label>

 						<input type="radio" id="Radio18"  name="q5">
 						<label for="neutral">Neutral</label>

 						<input type="radio" id="Radio19"  name="q5">
 						<label for="disagree">Disagree</label>

 						<input type="radio" id="Radio20"  name="q5">
 						<label for="stronglydisagree">Strongly Disagree</label>
 					</div>--%>
        <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="RadioButtonList5" ErrorMessage="Please choose an option"></asp:RequiredFieldValidator>--%>
        <asp:RadioButtonList ID="RadioButtonList5" runat="server" cssclass="radio-container">
                    <asp:ListItem Value="5">Strongly Agree</asp:ListItem>
                    <asp:ListItem Value="4">Agree</asp:ListItem>
                    <asp:ListItem Value="3">Neutral</asp:ListItem>
                    <asp:ListItem Value="2">Disagree</asp:ListItem>
                <asp:ListItem Value="1">Strongly Disagree</asp:ListItem>
            </asp:RadioButtonList>
			
		<!-- </form> -->
	</div>
	<%--<button class="submit">Submit</button>--%>
    <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
    <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
    <asp:Button ID="Button2" runat="server" Text="Submit" CssClass="submit" AutoPostback = false />
</div>
    </form>
</body>
</html>
