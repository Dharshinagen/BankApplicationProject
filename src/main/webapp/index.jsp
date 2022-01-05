<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>


<html>
<head>

<meta charset="ISO-8859-1">
 
<title>Home</title>
 
 <style>
 *{
 margin:0;
 padding:0;
 }
 nav {
	font-size: 20px;
	color: black;
	float: left;
	background-color: gray;
	height: 30%;
	margin: 0;
	width: 100%;
	color: white;
	padding:5px
}

h1 {
	
	color: white;
	width: 100%;
	background-color:  olive;
	height: 10%;
	margin: 0;
}

a {
	text-decoration: none;
}

marquee {
	height: 200px;
	color: red;
}
 .img{
 background-image: url("images/bank15.jpg");
 background-repeatation:none;
 }
 </style> 
</head>
<body>

 
 <h1 align="center"> Indian Bank </h1> 
 <nav>
                <a  href="index.html"> Home</a> 
                <a  href="Reg.jsp">Register</a> 
                <a  href="login.jsp">Login</a> 
                <a  href="help.html">Help</a> 
</nav>
<div class="img">
<marquee>Welcome !!</marquee>
</div>
</body>
</html>