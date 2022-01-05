<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  import = "java.util.List" import = "java.util.ArrayList"%>
    <%@page import="com.bankapp.impl.UserDetailsDaoimpl"%>
    <%@page import="com.bankapp.model.UserDetails"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin</title>
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

		<header>ADMMIN</header>
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
<% UserDetailsDaoimpl UserDao = new UserDetailsDaoimpl();
        List<UserDetails> List = new ArrayList<UserDetails>();
        List = UserDao.viewUser();

%>


<table >
 
<thead>
<tr>
  <th>S.no</th>
  <th>UserLoginId</th>
 <th>UserName</th>
 <th>Email</th>
<th>MobileNumber</th>
</tr>
</thead>
<br>
<br>

<tbody>
<%
int i = 0;
for (UserDetails Viewuser :List ) {
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
</body>
</html>