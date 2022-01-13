<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.bankapp.impl.AccountDetailsdaoimpl"%>
<%@ page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>accountDetail</title>
<style>
* {
	margin: 0;
	padding: 0;
}

nav {
	font-size: 18px;
	color: black;
	float: left;
	background-color: rgb(9, 57, 87);
	height: 30%;
	margin: 0;
	color: red;
	padding: 8px;
}

nav a {
	padding-right: 48.5px;
}

h1 {
	color: white;
	background: #042331;
	height: 10%;
	margin: 0;
	padding: 7px;
}

a {
	text-decoration: none;
	color: white;
}

.set1 {
	padding-right:  520px;
}

.btn {
	color: white;
	background-color: transparent;
	border-color: transparent;
	font-size: 15px;
}

.sidebar {
	position: absolute;
	left: 0;
	width: 250px;
	height: 96%;
	background: #042331;
	color: white;
}

.sidebar header {
	font-size: 15px;
	color: white;
	text-align: center;
	line-height: 50px;
	background: #063146;
}

ul {
	list-style-type: none;
}

.sidebar ul a {
	height: 98%;
	width: 99%;
	line-height: 40px;
	font-size: 15px;
	padding-left: 40px;
	color: white;
}

ul li:hover a {
	padding-left: 50px;
}

.sidebar ul a {
	margin-right: 0px;
}

.box {
	width: 380px;
	height: 380px;
	position: relative;
	margin: 6% auto;
	background: transparent;
	padding: 5px;
	box: shadow;
}

.pa {
	text-align: left;
}

.par {
	padding: 20px;
}

.cls {
	border-radius: 3px;
	padding: 5px 5px 5px 5px;
	Background-color: transparent;
}

.btn2 {
	padding: 3px;
	color: white;
	background-color: green;
	margin-right: 30px;
}

.btn3 {
	margin-left: 70px;
}

body {
	background-color: rgb(198, 208, 214);
}
#transhead{
color:green;}
</style>
</head>
<body>
	<h1 align="center">BANK OF INDIA</h1>
	<nav>
		  <a  href="CustomerDashBoard.jsp"> Home</a> 
                       <a  href="loans.jsp">Loans</a> 
                       <a  href="deposits.jsp">Deposits</a> 
                       <a  href="AboutUs.jsp">About us</a>
                       <a  href="ContactUs.jsp">Contact Us</a> 
                       <a   href="interest.jsp" class="set1">%</a>   
                       <a href="MyProfile.jsp">My Profile</a>
                         <button class="btn"><a href="LogoutServlet">Logout</a></button>
	</nav>
	<br>
	<br>
	<div class="sidebar">

		<header>My Account</header>
		<ul>
			<li><a href="accountDetail.jsp">AccountDetails</a></li>
			<li><a href="TransferAmount.jsp">Transfer</a></li>
			<li><a href="Balance.jsp">Balance</a></li>
			<li><a href="FixedDeposit.jsp">Fixed Deposits</a></li>
			<li><a href="RecurringDeposit.jsp">Recurring Deposits</a></li>
			<li><a href="PersonalLoan.jsp">Personal Loan request</a></li>
			<li><a href="HousingLoan.jsp">Housing Loan request</a></li>
			<li><a href="TransactionSummary.jsp">Transaction History</a></li>
			<li><a href="depositStatusUser.jsp">Deposit Status</a></li>
			<li><a href="LoanStatusUser.jsp">Loan Status</a></li>

		</ul>
	</div>

	<div class="box">
		<h3>Account Detail:</h3>
		<form action="AccountDetails" method="post">
			<table>
				<tr>
					<th><label for="accountNo">Enter AccountNumber:</label></th>
					<td><input type="text" class="cls" name="accNo"
						pattern="[0-9]{12}" required autofocus placeholder=" " /></td>
					<br>
				</tr>
				<tr>
					<br>
					<th><label for="pin">Enter Pin Number</label></th>
					<td><input type="password" class="cls" name="pin"
						pattern="[0-9]{4}" required /></td>
				</tr>
			</table>
			<br>
			<div class="btn3">
				<input type="submit" class="btn2" value=submit /> <input
					type="reset" class="btn2" value=cancel />
			</div> 
		</form>
		<br><br>
		<%!String flag;%>
		<%
		if (session.getAttribute("pinvalid") != null) {
			flag = session.getAttribute("pinvalid").toString();
		%>
		<h4 id="transhead"><%=flag%></h4>
		<%
		}
		%>

		<%
		session.removeAttribute("pinvalid");
		%>
	</div>
	</div>



</body>
</html>
