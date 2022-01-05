<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="customer.css">
<style>
.box{
        width:380px;
        height:700px;
        position:relative;
        margin:6% auto; 
        background: transparent;
        padding:5px;
        box:shadow;
    }
</style>
</head>
<body>
	<h3 align="center">INDIAN BANK</h3>
	<div class="sidebar">

		<header>Dashboard</header>
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
	<div class="box">
	<form   method="post">
		<table>
			<tr>
				<th>Enter Email Id </th>
				<td><input type="email" name="email" /></td>
            </tr>
            <tr>
				<th>Enter Status(active or inactive)</th>
				<td><input type="email" name="email" /></td>
            </tr>
             		</table>
		<button type="submit">Submit</button>
	</form>
	    <%!
String flag;
%>
<%
if(session.getAttribute("can") != null){
flag = session.getAttribute("can").toString();
%>


	<h4 id = "transhead"><%= flag%></h4>
<% }%>
	</div>
</body>
</html>