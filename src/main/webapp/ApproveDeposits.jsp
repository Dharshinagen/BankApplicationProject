<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.util.List"
	import="java.util.ArrayList"%>
<%@page import="com.bankapp.impl. DepositsDaoimpl"%>
<%@page import="com.bankapp.model.Deposits"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title> 
<link rel="stylesheet" href="customer.css">
<style>
.box {
	width: 380px;
	height: 650px;
	position: relative;
	margin: 1% auto;
	background: transparent;
	padding: 5px;
	box: shadow;
}

.border {
	padding: 5px;
}
</style>
</head>
<body>
	<h3 align="center">INDIAN BANK</h3>
	<div class="sidebar">

		<header>ADMIN</header>
		<ul>
			<li><a href="viewAllUser.jsp">View All Users</a></li>
		    <li><a href="">Insert Account Details </a></li>
			<li><a href="UpdateAccountDetails.jsp">Update Account Details </a></li>
			<li><a href="ApproveLoans.jsp">ApproveLoans</a></li>
			<li><a href="ApproveDeposits.jsp">ApproveDeposits</a></li>
			<li><a href="InterestRateAll.jsp">Rate Of Interest</a></li>
			<li><a href="">Transaction by Date</a></li>
			<li><a href="">Transaction by Account</a></li>
			<li><a href="">Cancel Account</a></li>
		</ul>
	</div>
	<h2 align="center">WELCOME!</h2>
	<%
	DepositsDaoimpl depositDao = new DepositsDaoimpl();
	List<Deposits> List = new ArrayList<Deposits>();
	List = depositDao.viewdeposit();
	%>

	<div class="box">
		<table>
			<thead>
				<tr>
					<th>S.no</th>
					<th>AccountNumber</th>
					<th>DepositType</th>
					<th>Amount</th>
					<th>Date</th>
					<th>Tenure</th>
					<th>Status</th>
				</tr>
			</thead>
			<br>
			<br>

			<tbody>
				<%
				int i = 0;
				for (Deposits viewuser : List) {
					i++;
				%>
				<tr>


					<td><%=i%></td>
					<td><%=viewuser.getAccno()%></td>
					<td><%=viewuser.getDeposit_type()%></td>
					<td><%=viewuser.getAmount()%></td>
					<td><%=viewuser.getDate_of_deposit()%></td>
					<td><%=viewuser.getTenure()%></td>
					<td><%=viewuser.getDeposit_status()%></td>

				</tr>

				<%
				}
				%>
			</tbody>
		</table>
		<button input="Submit">
			<a href="depositStatus.jsp">Update Status</a>
		</button>
		
	</div>
</body>
</html>