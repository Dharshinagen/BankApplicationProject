<%@page import="com.bankapp.model.Deposits"%>
<%@page import="com.bankapp.impl.DepositsDaoimpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import = "java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="accountDetail.css">
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
 <h3 align="center">Welcome to DashBoard</h3>
	<div class="sidebar">

		<header>MY ACCOUNT</header>
		<ul>
			<li><a href="accountDetail.jsp">AccountDetails</a></li>
			<li><a href="TransferAmount.jsp">Transfer</a></li>
			<li><a href="Balance.jsp">Balance</a></li>
			<li><a href="FixedDeposit.jsp">Fixed Deposits</a></li>
			<li><a href="RecurringDeposit.jsp">Recurring Deposits</a></li>
			<li><a href="PersonalLoan.jsp">Personal Loan request</a></li>
			<li><a href="HousingLoan.jsp">Housing Loan request</a></li>
		</ul>
 </div>
 <div class="box">
 <%
long accno =  (Long)session.getAttribute("useraccno");
 DepositsDaoimpl depdao  = new DepositsDaoimpl();
 List<Deposits>  accde = depdao. viewStatusUser(accno);
 %>
		<table>

			<thead>
				<tr>
					<th>S.no</th>
					<th>AccountNumber</th>
					<th>MaturityValue</th>
					<th>Status</th>

				</tr>
			</thead>
			<br>
			

			<tbody>
				<%
				int i = 0;
				for (Deposits Viewuser : accde) {
					i++;
				%>
				<tr>


					<td><%=i%></td>
					<td><%=Viewuser.getAccno()%></td>
					<td><%=Viewuser.getMaturity_value()%></td>
					<td><%=Viewuser.getDeposit_status()%></td>


				</tr>

				<%
				}
				%>
			</tbody>
		</table>
		<button type="submit" ><a href="CustomerDashBoard.jsp">ok</a></button>
   
</body>
</html>