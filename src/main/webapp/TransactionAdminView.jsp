<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  import = "java.util.List" import = "java.util.ArrayList"%>
    <%@page import="com.bankapp.impl.TransactionDaoimpl"%>
    <%@page import="com.bankapp.model.Transaction"%>
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
     <div class="box">
      <%
     long acc;
      
     %>
     <% TransactionDaoimpl tranDao = new TransactionDaoimpl();
     acc=(Long) session.getAttribute("accNo");
        List<Transaction> List = tranDao.getByAccountNumberAdmin(acc);
      %>


<table >
<thead>
<tr>
  <th>S.no</th>
  <th>Sender Account Number</th>
 <th>Name</th>
 <th>Transaction</th>
<th>Receive Account Number</th>
<th>Amount</th>
<th>Transaction Date</th>
</tr>
</thead>
<br>
<br>

<tbody>
<%
int i = 0;
for (Transaction Viewuser :List ) {
i++;

%>
<tr>


<td><%=i%></td>
<td><%=Viewuser.getSender_Account_number()%></td>
<td><%=Viewuser.getName()%></td>
<td><%=Viewuser.getTransaction_type()%></td>
 <td><%=Viewuser.getReceiver_account_number()%></td>
 <td><%=Viewuser.getAmount()%></td>
 <td><%=Viewuser.getTransaction_date()%></td>
 </tr>

<%
}
%>
</tbody>
          </table>
          <button type="submit" ><a href="adminDashBoard.jsp">Ok</a></button>
     </div>
     
</body>
</html>