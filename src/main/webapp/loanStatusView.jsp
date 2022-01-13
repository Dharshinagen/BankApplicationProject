<%@page import="com.bankapp.model.Loans"%>
<%@page import="com.bankapp.impl.LoansDaoimpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import = "java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Loan Status</title>
<link rel="stylesheet" href="accountDetail.css">
<style>

*{
        margin:0;
        padding:0;
        }
        nav {
           font-size: 18px;
           color: black;
           float: left;
              background-color:rgb(9, 57, 87);
           height: 30%;
           margin: 0;
          
           color: red;
           padding:8px;
          
       }
       
       nav a {
        padding-right:  77.4px;
       }
       
       h1 {
           
           color: white;
          
         background:#042331;
           height: 10%;
           margin: 0;
           padding: 7px;
       }
       
       a {
           text-decoration: none;
           color:white;
       }
        .set1{
            padding-right : 313.5px;
        }
         .btn{
       color:white;
    background-color:transparent;
    border-color:transparent;
    font-size:15px;
    }
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
.t1 {
	padding: 90px;
	padding-left: 350px;
	border:none;
}

td {
	padding-left: 15px;
	 
}

th {
	padding-left:  10px;
	font-size:17px;
	 
}


}
.btn2 {
	padding: 3px;
	color: white;
	background-color:green;
	margin-right: 30px;
}

.btn3 {
	margin-left: 780px;
}

body {
	background-color: rgb(198, 208, 214);
}
 </style>
</head>
<body>
<h1 align="center"> BANK OF INDIA </h1> 
        <nav>
                        <a  href="CustomerDashBoard.jsp"> Home</a> 
                       <a  href="loans.jsp">Loans</a> 
                       <a  href="deposits.jsp">Deposits</a> 
                       <a  href="AboutUs.jsp">About us</a>
                       <a  href="ContactUs.jsp">Contact Us</a> 
                       <a   href="interest.jsp" class="set1">%</a>   
                       <a href="MyProfile.jsp">My Profile</a>
                         <button class="btn"><a href="LogoutServlet">Logout</a></button>
       </nav>
       <br>
       <br>
        
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
     
 <div class="t1">
 <%
long accno =  (Long)session.getAttribute("useraccno");
 LoansDaoimpl depdao  = new LoansDaoimpl();
 List<Loans>  accde = depdao. viewStatusUser(accno);
 %>
		<table>

			<thead>
				<tr>
					<th>S.no</th>
					<th>AccountNumber</th>
					<th>Name</th>
					<th>Loan Type</th>
					<th>Amount</th>
					<th>Rate of Interest</th>
					<th>Tenure</th>
					<th>Monthly Payment</th>
					<th>Status</th>

				</tr>
			</thead>
			<br>
			

			<tbody>
				<%
				int i = 0;
				for ( Loans Viewuser : accde) {
					i++;
				%>
				<tr>


					<td><%=i%></td>
					<td><%=Viewuser.getAccount_number()%></td>
					<td><%=Viewuser. getUser_name()%></td>
					<td><%=Viewuser. getLoan_type()%></td>
					<td><%=Viewuser. getLoan_amount()%></td>
					<td><%=Viewuser.  getInterest_rate()%></td>
					<td><%=Viewuser. getTenure()%></td>
					<td><%=Viewuser. getMonthly_payment()%></td>
					<td><%=Viewuser.getLoan_status()%></td>


				</tr>

				<%
				}
				%>
			</tbody>
		</table>
		<br><br><br>
		<div class="btn3">
		<button type="submit" class="btn2"><a href="CustomerDashBoard.jsp">ok</a></button>
   </div>
</body>
</html>