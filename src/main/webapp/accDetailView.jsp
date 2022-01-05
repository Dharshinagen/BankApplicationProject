<%@page import="com.bankapp.model.AccountDetails"%>
<%@page import="com.bankapp.impl.AccountDetailsdaoimpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import = "java.util.List"%>
    
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
 
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
			<li><a href="TransactionSummary.jsp">Transaction History</a></li>
			<li><a href="depositStatusUser.jsp">Deposit Status</a></li>
		</ul>
 </div>
 <div class="box">
 <%
long accno =  (long)session.getAttribute("useraccno");
 int pin = (int)session.getAttribute("userpin");
 AccountDetailsdaoimpl accountDetailsdaoimpl = new AccountDetailsdaoimpl();
 List<AccountDetails>  accdet = accountDetailsdaoimpl.searchDetail(accno, pin);
 %>
 <table>
 <%for(AccountDetails acc : accdet){ %>
   <tr>
   <th>AccountType</th>
   <td><%=acc.getAccount_type() %></td>
   </tr>
   <tr>
   <th>AccountHolderName</th>
   <td><%=acc.getAccount_Holder_name() %></td>
   </tr>
   <tr>
   <th>AccountBalance</th>
   <td><%=acc.getBalance() %></td>
   </tr>
   <tr>
   <th>AccountAddress</th>
   <td><%=acc.getAddress() %></td>
   </tr>
     <th >City</th>
   <td><%=acc.getCity() %></td>
   </tr>
    <th >PinCode</th>
    <td><%=acc.getPincode() %></td>
   </tr>
    <th >DOB</th>
   <td><%=acc.getDob() %></td>
   </tr>
    <th >Mobile number</th>
   <td><%=acc. getMobile_Number()%></td>
   </tr>
    <th >Email</th>
   <td><%=acc.getEmail() %></td>
   </tr>
    <th >IFSC code</th>
   <td><%=acc.getIfsc_Code()%></td>
   </tr>
    <th >Branch Name</th>
   <td><%=acc. getBranchName() %></td>
   </tr>
    
    <%} %>
    </table>
    <button type="submit" ><a href="CustomerDashBoard.jsp">ok</a></button>
   
</body>
</html>