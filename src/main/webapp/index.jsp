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
	background-color:rgb(14, 1, 14);
	height: 30%;
	margin: 0;
	width: 100%;
	color: red;
	padding:5px
}

h1 {
	
	color: white;
	width: 100%;
	background-color:  slategrey;
	height: 10%;
	margin: 0;
}

a {
	text-decoration: none;
	color:white;
}

marquee {
	height: 200px;
	color: red;
}
 body{
 background-image: url("images/bank21.jpg");
 background-repeat: no-repeat;
        background-size:cover;
 }
 h2
 {
 color:white;
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
<div class="">
<h2 align="center">Welcome</h2>
 
<% response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
%>
</div>
</body>
</html>