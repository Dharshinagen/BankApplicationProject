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
background-color:#36486b;
color:white;
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
.table1{
	padding-left: 470px;
    border:none;
    cell-padding:5px;
    
}
td{
padding:5px;
 
}
th{
padding:5px;
 
}
body{
 
 background-color:;
}
h2{
color:white;
}
</style>
</head>
<body>
<h1 align="center"> BANK OF INDIA </h1> 
        <nav>
                        <a  href="index.jsp"> Home</a> 
                       <a  href="loans.jsp">Loans</a> 
                       <a  href="deposits.jsp">Deposits</a> 
                       <a  href="insurance.jsp">Insurance</a>  
                       <a  href="AboutUs.jsp">About us</a>
                       <a  href="ContactUs.jsp">Contact Us</a> 
                       <a  href="help.jsp" >Help</a>
                       <a   href="interest.jsp" class="set1">%</a>   
                       <a href="UserProfile">My Profile</a>
                        <button class="btn"><a href="LogoutServlet">Logout</a></button>
       </nav>
       <br>
       <br>
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
     
     <h2 align="center">WELCOME!</h2><br><br>
      
<% UserDetailsDaoimpl UserDao = new UserDetailsDaoimpl();
        List<UserDetails> List = new ArrayList<UserDetails>();
        List = UserDao.viewUser();

%>


<table class="table1" >
 
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
 <button type="submit" class="btn1"><a href="CustomerDashBoard">Ok</a></button>
</body>
</html>