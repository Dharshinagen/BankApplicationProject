<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.util.*"%>
<%@page import="com.bankapp.model.AdminUse"%>
<%@page import="com.bankapp.impl.AdminUseDaoimpl"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Interest</title>
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

.par {
	padding-left: 30px;
}

marquee {
	height: 200px;
	color: red;
}

.set1 {
	padding-right: 293.4px;
}

.t1 {
	 
	  
}

td {
	padding: 15px;
	cell-spacing:15px;
}


th {
	color:;
}
</style>
</head>
<body>


	<h1 align="center">BANK OF INDIA</h1>
	<nav>
		 <a href="index.jsp"> Home</a>
		  <a href="loans.jsp">Loans</a>
		  <a href="deposits.jsp">Deposits</a> 
		  <a href="interest.jsp" >Interest Rate</a>
		  <a href="Reg.jsp">Register</a>
		  <a href="login.jsp">Login</a>
		  <a href="AboutUs.jsp">About us</a>
		  <a href="ContactUs.jsp" class="set1">ContactUs</a>
		  </nav>


	<%
	AdminUseDaoimpl admin = new AdminUseDaoimpl();
	List<AdminUse> list = admin.interestRate();
	for (AdminUse Viewuser : list) {
	%>

	<table  class="t1">
		 
			<tr>
				<td><%=Viewuser.getCategoryType()%></td>
				<td><%=Viewuser.getDescription()%></td>
				<td><%=Viewuser.getRateOfInterest()%></td>
			</tr>
			<%}%>

		 
	</table>




</body>
</html>