<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin</title>
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
     <%! String name; %>
     <%   name=(String) session.getAttribute("adminname"); %>
    
     <div class="box">
     <p class="pa"> <b>WELCOME &nbsp <%=name %>! </b></p> <br><br>
         <p>Some ways to Prevent Spread of COVID-19</p>
         
         <p class="par"> Avoid touching surfaces, especially in public settings or health facilities, in case people infected with COVID-19 have touched them. Clean surfaces regularly with standard disinfectants.</p>
          <p class="par">  Frequently clean your hands with soap and water, or an alcohol-based hand rub</p>
     </div>
</body>
</html>