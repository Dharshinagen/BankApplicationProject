<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
    </style>
</head>
<body>
<h3 align="center">INDIAN BANK</h3>
	<div class="sidebar">

		<header>ADMIN</header>
		<ul>
			<li><a href="viewAllUser.jsp">View All Users</a></li>
		    <li><a href="UpdateAccountDetails.jsp">Insert Account Details </a></li>
			<li><a href="UpdateAccountDetails.jsp">Update Account Details </a></li>
			<li><a href="ApproveLoans.jsp">ApproveLoans</a></li>
			<li><a href="ApproveDeposits.jsp">ApproveDeposits</a></li>
			<li><a href="InterestRate.jsp">Rate Of Interest</a></li>
			<li><a href="ApproveDeposits.jsp">View By Date</a></li>
			<li><a href="">Cancel Account</a></li>
			 
			<li><a href="#">  </a></li>
		</ul>
     </div>
      
     <h2 align="center">WELCOME!</h2>
     <div class="box">
     <form  action ="interestRate" method="post">
     <table>
     <tr>
     <th>Enter DescriptionId</th>
      <td><input type="text" name="desc"/></td>
     </tr>
    
       <tr>
     <th>Enter InterestRate</th>
          <td><input type="text" name="rate"/></td>
     </tr>
      </table>
     </form>
     <button type="submit">Submit</button>
              <%!
String flag;
%>
<%
if(session.getAttribute("rate") != null){
flag = session.getAttribute("rate").toString();
%>


	<h4 id = "transhead"><%= flag%></h4>
<% }%>
     <%session.removeAttribute("rate");
       %>
       </div>
      
</body>
</html>