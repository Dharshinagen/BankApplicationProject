<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  import = "java.util.List" import = "java.util.ArrayList"%>
    <%@page import="com.bankapp.impl. LoansDaoimpl"%>
    <%@page import="com.bankapp.model.Loans"%>
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
    .border{
    padding:5px;
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
    <div class="box">
<% LoansDaoimpl LoanDao = new LoansDaoimpl();
        List<Loans> List = new ArrayList<Loans>();
        List = LoanDao.viewloan();

%>


<table>
<h1><b>All User List</b></h1>
<thead>
<tr>
  <th>S.no</th>
  <th>UserId</th>
<th>AccountNumber</th>
<th>LoanType</th>
<th>LoanAmount</th>
<th>Tenure</th>
<th>Status</th>
</tr>
</thead>
<br>
<br>

<tbody>
<%
int i = 0;
for ( Loans viewuser : List) {
i++;

%>
<tr>


<td><%=i%></td>
<td><%=viewuser.getUser_Id()%></td>
<td><%=viewuser.getAccount_number()%></td>
<td><%=viewuser. getLoan_type()%></td> 
<td><%=viewuser. getLoan_amount()%></td>
 <td><%=viewuser.getTenure()%></td>
 <td><%=viewuser.getLoan_status()%></td>
 
 </tr>

<%
}
%>
</tbody>
          </table>
        <button input="Submit"><a href="loanStatus.jsp">Update Status</a></button>
     </div>
</body>
</html>