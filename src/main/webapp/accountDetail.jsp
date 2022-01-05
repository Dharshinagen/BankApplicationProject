<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.bankapp.impl.AccountDetailsdaoimpl" %>
 <%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>accountDetail</title>
 <style>
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
}.box{
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

		<header>My Account</header>
		<ul><li><a href="accountDetail.jsp">AccountDetails</a></li>
			<li><a href="TransferAmount.jsp">Transfer</a></li>
			<li><a href="Balance.jsp">Balance</a></li>
			
			<li><a href="FixedDeposit.jsp">Fixed Deposits</a></li>
			<li><a href="RecurringDeposit.jsp">Recurring Deposits</a></li>
			<li><a href="PersonalLoan.jsp">Personal Loan request</a></li>
			<li><a href="HousingLoan.jsp">Housing Loan request</a></li>
			<li><a href="TransactionSummary.jsp">Transaction History</a></li>
			<li><a href="depositStatusUser.jsp">Deposit Status</a></li>
		</ul>
 </div>
 <div class="box">
 <form action="AccountDetails" method="post">
 <table>
    <tr>
      <th> <label for="accountNo">Enter AccountNumber:</label> </th>
      <td><input type="text" name="accNo" pattern="[0-9]{12}"required autofocus/></td>
    </tr>
    <tr>
     <th> <label for="pin">Enter Pin Number</label></th>
      <td><input type="password" name="pin" pattern="[0-9]{4}"required /></td>
  </tr>
 </table><br>
       <input type="submit" value=submit />
       <input type="reset" value=cancel />
 </form>
 </div></div>
 

 
</body>
</html>  