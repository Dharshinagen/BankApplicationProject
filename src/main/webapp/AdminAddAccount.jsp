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
     <form action="addAccount" method="post">
     <table>
     <tr>
     <th>Enter Account Type  </th>
     <td><input type="text" name="type"  required/></td>
     </tr>
     <tr>
     <th>Enter Account Holder Name </th>
     <td><input type="text" name="aname" pattern="[A-Za-z]{5,}"  required/></td>
     </tr>
     <tr>
     <th>Enter Address  </th>
     <td><input type="text" name="address" pattern="[A-Za-z0-9]{5,}"  required/></td>
     </tr>
     <tr>
     <th>Enter City  </th>
     <td><input type="text" name="city" pattern="[A-Za-z]{3,}"  required/></td>
     </tr>
     <tr>
     <th>Enter Pincode  </th>
     <td><input type="text" name="pincode" pattern="[0-9]{6}"  required/></td>
     </tr>
     <tr>
     <th>Enter Date of Birth  </th>
     <td><input type="text" name="date" placeholder="dd-mm-yyyy"  required/></td>
     </tr>
     <tr>
     <th>Enter Mobile Number </th>
     <td><input type="text" name="mobno" pattern="[6-9][0-9]{9}"  required/></td>
     </tr>
     <tr>
     <th>Enter Email  </th>
     <td><input type="email" name="email" pattern="[a-z0-9]+[@][a-z]+[.][a-z]+{8,15}"  required/></td>
     </tr>
     <tr>
     <th>Enter Ifsc code  </th>
     <td><input type="text" name="code"  required/></td>
     </tr>
     <tr>
     <th>Enter Branch Name  </th>
     <td><input type="text" name="branch" pattern="[A-Za-z]{3,}"  required/></td>
     </tr>
     <tr>
     <th>Enter Balance  </th>
     <td><input type="text" name="balance"   required/></td>
     </tr>
     
     <tr>
     <th>Enter Pin Number  </th>
     <td><input type="text" name="pin" pattern="[0-9]{4}"  required/></td>
     </tr>
     <tr>
     <th>Enter Status  </th>
     <td><input type="text" name="status" placeholder="ACTIVE OR INACTIVE" required/></td>
     </tr>
     </table>
     <button type="Submit">Submit</button><br>
     <br>
     </form>
      
     <%!
String flag;
%>
<%
if(session.getAttribute("add") != null){
flag = session.getAttribute("add").toString();
%>
<h4 id = "transhead"><%= flag%></h4>
<% }%>
 
  <%session.removeAttribute("add");
       %>
     </div>

</body>
</html>