<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.util.List"
	import="java.util.ArrayList"%>
<%@page import="com.bankapp.impl.UserDetailsDaoimpl"%>
<%@page import="com.bankapp.model.UserDetails"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="customer.css">
<style>
* {
	margin: 0;
	padding: 0;
}

nav {
	font-size: 17px;
	color: black;
	float: left;
	background-color: rgb(9, 57, 87);
	height: 25%;
	margin: 0;
	color: red;
	padding: 9.1px;
}

nav a {
	padding-right: 47.5px;
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
	padding-right: 535.5px;
}

.btn {
	color: white;
	background-color: transparent;
	border-color: transparent;
	font-size: 15px;
}

h3 {
	padding: 20px;
	background-color: blue;
	margin: 0;

}

.sidebar {
	position:absolute;
	left: 0;
	width: 250px;
	height: 100%;
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
	height: 100%;
	width: 100%;
	line-height: 40px;
	font-size: 15px;
	padding-left: 40px;
	color: white;
}

ul li:hover a {
	padding-left: 50px;
}

.sidebar ul a {
	margin-right: 16px;
}


.box {
	width: 380px;
	height: 700px;
	position: relative;
	margin: 6% auto;
	background: transparent;
	padding: 5px;
	box: shadow;
}
.btn {
	float: right;
	padding: 5px 7px;
	margin-right: 5px;
	border-radius: 7px;
	color: gray;
}

.t1 {
	padding: 40px;
	padding-left: 350px;
	border:none;
}

td {
	padding-left: 15px;
	 
}

th {
	padding-left:  10px;
	font-size:18px;
	 
}
}
.btn2 {
	padding: 3px;
	color: white;
	background-color:green;
	margin-right: 30px;
}

.btn3 {
	margin-left: 670px;
}

body {
	background-color: rgb(198, 208, 214);
}
</style>
</head>
<body>
	<h1 align="center">BANK OF INDIA</h1>
	<nav>
		<a href="index.jsp"> Home</a>
		 <a href="loans.jsp">Loans</a> 
		 <a	href="deposits.jsp">Deposits</a> 
		<a href="AboutUs.jsp">About us</a> 
		<a href="ContactUs.jsp">Contact Us</a>
		  <a href="interest.jsp" class="set1">%</a>

		<button class="btn">
			<a href="LogoutServlet">Logout</a>
		</button>
	</nav>
	<br>
	<br>
	<div class="sidebar">

		<header>ADMIN</header>
		<ul>
			<li><a href="viewAllUser.jsp">View All Users</a></li>
			<li><a  href="viewAccount.jsp">View All Account</a></li>
			<li><a href="AdminAddAccount.jsp">Insert Account Details </a></li>
			<li><a href="UpdateAccountDetails.jsp">Update Account Details </a></li>
			<li><a href="ApproveLoans.jsp">ApproveLoans</a></li>
			<li><a href="ApproveDeposits.jsp">ApproveDeposits</a></li>
			<li><a href="InterestRateAll.jsp">Rate Of Interest</a></li>
			<li><a href="TransactionByDate.jsp">Transaction by Date</a></li>
			<li><a href="TransactionByAcc.jsp">Transaction by Account</a></li>
			<li><a href="UserCancel.jsp">Cancel Account</a></li>


		</ul>
	</div>


	<%
	UserDetailsDaoimpl UserDao = new UserDetailsDaoimpl();
	List<UserDetails> List = new ArrayList<UserDetails>();
	List = UserDao.viewUser();
	%>

	 <div class="t1">
		<table>

			<thead>
				<tr>
					<th>S.no</th>
					<th>UserLoginId</th>
					<th>UserName</th>
					<th>Email</th>
					<th>MobileNumber</th>
				</tr>
			</thead>
			 

			<tbody>
				<%
				int i = 0;
				for (UserDetails Viewuser : List) {
					i++;
				%>
				<tr>


					<td><%=i%></td>
					<td><%=Viewuser.getUser_id()%></td>
					<td><%=Viewuser.getUser_name()%></td>
					<td><%=Viewuser.getEmailId()%></td>
					<td><%=Viewuser.getMobile_Number()%></td>

				</tr>

				<%
				}
				%>
			</tbody>
		</table>
		 </div>
		<br><br>
		<div class="btn3">
		<button type="submit" class="btn2">Back</button>
		</div>
		
	 

</body>
</html>