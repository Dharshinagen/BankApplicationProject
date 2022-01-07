<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  import = "java.util.List" import = "java.util.ArrayList"%>
    <%@page import="com.bankapp.impl.AdminUseDaoimpl"%>
    <%@page import="com.bankapp.model.AdminUse"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 
<style>
*{
 margin:0;
 padding:0;
 }
a{
text-decoration:none}
h3{
padding:20px;
background-color:blue;
margin:0;
}
.sidebar{
position:fixed;
left:0;
width:250px;
height:100%;
background:#042331;
color:white;
}
.sidebar header{
font-size:15px;
color:white;
text-align: center;
line-height:50px;
background:#063146;

}
ul{
list-style-type: none;
}
.sidebar ul a{

height:100%;
width:100%;
line-height: 40px;
font-size: 15px;
padding-left:40px;
color:white;
 
 
}
ul li:hover a{
padding-left:50px;
}
.sidebar ul a {
margin-right:16px;
}
.box{
        width:380px;
        height:700px;
        position:relative;
        margin:6% auto; 
        background: transparent;
        padding:5px;
        box:shadow;
    }
     .btn{
    float:right;
    padding:5px 7px;
    margin-right:5px;
    border-radius:7px;
    color:gray;
     

}
</style>
</head>
<body>
<h3 align="center">INDIAN BANK</h3>
	<div class="sidebar">

		<header>ADMIN</header>
		<ul>
			<li><a href="viewAllUser.jsp">View All Users</a></li>
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
     <button class="btn"><a href="LogoutServlet">Logout</a></button>
	<h2 align="center">WELCOME!</h2>
	<%
	 AdminUseDaoimpl adminDao = new AdminUseDaoimpl();
	List<AdminUse> List = new ArrayList<AdminUse>();
	List = adminDao.allDetails();
	%>

	<div class="box">
		<table>
			<thead>
				<tr>
					<th>S.no</th>
					<th>Category</th>
					<th>CategoryType</th>
					<th>Description</th>
					<th>DescriptionId</th>
					<th>InterestRate</th>
					
				</tr>
			</thead>
			<br>
			<br>

			<tbody>
				<%
				int i = 0;
				for (AdminUse viewuser : List) {
					i++;
				%>
				<tr>


					<td><%=i%></td>
					<td><%=viewuser. getCategoryName()%></td>
					 <td><%=viewuser. getCategoryType()%></td>
					<td><%=viewuser. getDescription()%></td>
					<td><%=viewuser. getDescriptionId()%></td>
					<td><%=viewuser. getRateOfInterest()%></td>
				</tr>

				<%
				}
				%>
			</tbody>
		</table>
		<button input="Submit">
			<a href="InterestRate.jsp">Update Status</a>
		</button>
	</div>
</body>
</html>