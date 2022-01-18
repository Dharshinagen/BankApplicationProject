<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.util.List"
	import="java.util.ArrayList"%>
<%@page import="com.bankapp.impl. DepositsDaoimpl"%>
<%@page import="com.bankapp.model.Deposits"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>admin</title> 
 
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
        padding-right: 48.5px;
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
            padding-right : 311.5px;
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
     .btn{
    float:right;
    padding:5px 7px;
    margin-right:5px;
    border-radius:7px;
    color:gray;
     

}
.table1 {
	padding: 90px;
	padding-left: 350px;
	border:none;
}

td {
	padding-left: 15px;
	 
}

th {
	padding-left:  10px;
	font-size:18px;
	 
}
.btn2 {
	padding: 3px;
	color: white;
	background-color: green;
	margin-right: 30px;
}

.btn3 {
	margin-left: 70px;
}

body {
	background-color: rgb(198, 208, 214);
}
.div1{
padding-left :460px;}
#transhead{
color:green;}
</style>
</head>
<body>
<h1 align="center"> BANK OF INDIA </h1> 
        <nav>
                        <a  href="index.jsp"> Home</a> 
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

		<header>ADMIN</header>
		<ul>
			<li><a href="viewAllUser.jsp">View All Users</a></li>
			<li><a  href="viewAccount.jsp">View All Account</a></li>
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
      
	 
	<%
	DepositsDaoimpl depositDao = new DepositsDaoimpl();
	List<Deposits> List = new ArrayList<Deposits>();
	List = depositDao.viewdeposit();
	%>

	<div class="table1">
		<table>
			<thead>
				<tr>
					<th>S.no</th>
					<th>AccountNumber</th>
					<th>DepositType</th>
					<th>Amount</th>
					<th>Date</th>
					<th>Tenure</th>
					<th>Status</th>
					<th>Approve</th>
				</tr>
			</thead>
			<br>
			<br>

			<tbody>
				<%
				int i = 0;
				for (Deposits viewuser : List) {
					i++;
				%>
				<tr>


					<td><%=i%></td>
					<td><%=viewuser.getAccno()%></td>
					<td><%=viewuser.getDeposit_type()%></td>
					<td><%=viewuser.getAmount()%></td>
					<td><%=viewuser.getDate_of_deposit()%></td>
					<td><%=viewuser.getTenure()%></td>
					<td><%=viewuser.getDeposit_status()%></td>
					<td><a href="DepositApproveAdmin?accno=<%=viewuser.getAccno()%>">Approve</a></td>
				</tr>

				<%
				}
				%>
			</tbody>
		</table>
		
	</div>
	 
</body>
</html>