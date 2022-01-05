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

		<header>ADMIN</header>
		<ul>
<li><a href="viewAllUser.jsp">View All Users</a></li>
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
     <form  method="post">
     <table>
     <tr>
     <tr>
     <th>Enter Email</th>
    <td><input type="text" name="email" pattern="[a-z]+[0-9.]+[@][a-z]+[.][a-z]+{8,15}"/></td>
     </tr>
     <th>Enter Email to update</th>
     <td><input type="text" name="email1" pattern="[a-z]+[0-9.]+[@][a-z]+[.][a-z]+{8,15}"/></td>
     </tr>
     <tr>
     <th>Enter Mobile number to update</th>
     <td><input type="text" name="mobno" pattern="[6-9][0-9]{9}"/></td>
     </tr>
     </table>
     <button type="submit">Submit</button>
     <button type="reset">Reset</button>
     </form>
     <%!
String flag;
%>
<%
if(session.getAttribute("msg") != null){
flag = session.getAttribute("msg").toString();
%>


	<h4 id = "transhead"><%= flag%></h4>
<% }%>
</div>
</body>
</html>