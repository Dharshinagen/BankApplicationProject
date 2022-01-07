<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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

height:98%;
width:99%;
line-height: 40px;
font-size: 15px;
padding-left:40px;
color:white;
 
 
}
ul li:hover a{
padding-left:50px;
}
.sidebar ul a {
margin-right:0px;
}
.box{
        width:380px;
        height:380px;
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

.pa{
text-align:left;
}
.par{
padding:20px;
}
 </style>
</head>
<body>
<h3 align="center">Indian Bank</h3>
        
	<div class="sidebar">

		<header>My Account</header>
		<ul>
			<li><a href="accountDetail.jsp">AccountDetails</a></li>
			<li><a href="TransferAmount.jsp">Transfer</a></li>
			<li><a href="Balance.jsp">Balance</a></li>
			<li><a href="FixedDeposit.jsp">Fixed Deposits</a></li>
			<li><a href="RecurringDeposit.jsp">Recurring Deposits</a></li>
			<li><a href="PersonalLoan.jsp">Personal Loan request</a></li>
			<li><a href="HousingLoan.jsp">Housing Loan request</a></li>
			<li><a href="TransactionSummary.jsp">Transaction History</a></li>
			<li><a href="depositStatusUser.jsp">Deposit Status</a></li>
			<li><a href="LoanStatusUser.jsp">Loan Status</a></li>
			 
		</ul>
     </div>
     <button class="btn"><a href="LogoutServlet">Logout</a></button>
     <h2 align="center">WELCOME!</h2>
     <div class="box">
     <form action="House"  method="post">
     <table>
     <tr>
     <th>Enter Loan Amount </th>
     <td><input type="text" name="amountDeposit"  pattern="[1-9][0-9]+" required"/></td>
     </tr>
     <tr>
     <th>Enter tenure</th>
     <td><input type="text" name="period" pattern="[1-9]+"  placeholder="TENURE IN YEARS" required /></td>
     </tr>
     </table>
     <button type="submit">Submit</button>
     <button type="reset">Reset</button><br> <br>
     </form>
     <%!
String flag;
%>
<%
if(session.getAttribute("Hloan") != null){
flag = session.getAttribute("Hloan").toString();
%>


	<h4 id = "transhead"><%= flag%></h4>
<% }%>
 <%session.removeAttribute("Hloan");
       %>
     </div>

</body>
</html>