<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact Us</title>
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
<style>
* {
	margin: 0;
	padding: 0;
	box-sizing:border-box;
	font-family:sans-serif;
}

nav {
	font-size: 17px;
	color: black;
	float: left;
	background-color: rgb(9, 57, 87);
	height: 25%;
	margin: 0;
	color: red;
	padding: 8px;
}

nav a {
	padding-right: 73.7px;
}

h1 {
	color: white;
	background: #042331;
	height: 10%;
	margin: 0;
	padding: 7px;
}

a {
	text-decoration: none;
	color: white;
}

.par {
	padding-left: 30px;
}

marquee {
	height: 200px;
	color: red;
}

.set1 {
	padding-right: 293.4px;
}

p {
	color: white;
}

h3, h2 {
	text-align: center;
	font-size: 20px;
}
body{
background-image: url("images/bankof5.jpg") ; 
   background-repeat: no-repeat;
    
   background-size:cover;
   
   }
   .content-section{
   width:100%;
   display:flex;
   justify-content:center;
   align-items:center;
   }
   .contact-info{
   color:#fff;
   max-width:500px;
   line-height:65px;
   padding-left:50px;
   font-size:18px;
   }
   .contact-info i{
   margin-right:20px;
   font-size:25px;
   }
   .contact-form{
   max-width:700px;
   margin-right:50px;
   padding-left:155px;}
   .contact-info,.contact-form{
   flex:1;
   }
   .contact-form h2{
    color:#fff;
    text-align:center;
    font-size:35px;
    text-transform:uppercase;
    margin-bottom:30px;
   }
   .contact-form .text-box{
   background:#000;
   color:#fff;
   border:none;
   height:50px;
   padding:12px;
   font-size:15px;
   border-radius:5px;
   opacity:0.9;
   margin-bottom:20px;
   }
   .contact-form .text-box:first-child{
   margin-right:15px;
   }
   .contact-form textarea{
   background:#000;
   color:#fff;
   border:none;
   width:100%;
   padding:12px;
   font-size:15px;
   border-radius:5px;
   margin-bottom:20px;
   opacity:0.9;
   
   
   }
   .contact-form .s-btn{
   float:right;
   background-color:#2E94E4;
   color:#fff;
   border:none;
   width:120px;
   height:40px;
   font-size:15px;
   border-radius:5px;
   text-align:center;
   
   }
   .sec{
   display:inline-flex;
   padding-left:5px;
   }
</style>
</head>
<body>


	<h1 align="center">BANK OF INDIA</h1>
	<nav>
		<a href="index.jsp"> Home</a> <a href="loans.jsp">Loans</a> <a
			href="deposits.jsp">Deposits</a> <a href="interest.jsp">Interest
			Rate</a> <a href="Reg.jsp">Register</a> <a href="login.jsp">Login</a> <a
			href="AboutUs.jsp">About us</a> <a href="ContactUs.jsp" class="set1">ContactUs</a>
	</nav>
	<br><br>
	<br>
	<%--<br>
	<br>
	<br>
	<br>
	<h2>Call Us</h2>
	<br>
	<h3>1800 1200 (Toll Free)</h3>
	<br>


	<h3>Timings: 8:00 AM to 8:00 PM</h3>
	<br>

	<h3>(Post 8 PM till 8 AM only critical service offered)</h3>
	<br>
	<br>
	<h2>Email & SMS</h2>
	<br>
	<h3>bankofindia@bankofindia.in</h3>
	<br>
	<h3>SMS 'HELP' space CUST ID</h3>
	<br>
	<h3>+91 9652220020</h3>--%>
	<div class="sec">
	 <div class="contact-section">
	      <div class="contact-info">
	         <div ><i class="fas fa-map-marker-alt"></i>Address</div>
	         <div ><i class="fas fa-envelope"></i>bankofindia@bankofindia.in</div>
	         <div ><i class="fas fa-phone"></i>+91 9652220020</div>
	         <div ><i class="fas fa-clock"></i>8:00 AM to 8:00 PM</div>
	           <div ><i class="fas fa-clock"></i>Post 8 PM till 8 AM only critical service offered</div>
	      </div>
	 </div>
	<br>
	<div class="contact-form">
	   <h2>Contact Us</</h2>
	   <br>
	   <br>
	      <form class="contact" action="" method="post">
	      <input type="text" name="name" class="text-box" placeholder="Your Name" required>
	      <input type="email" class="text-box" name="email" placeholder="Your Email" required>
	      <textarea name="message" rows="6" placeholder="Your Message" required></textarea>
	      <input type="submit" name="submit" class="s-btn" value="SUBMIT">
	      
	      </form>
	
	</div>
	</div>
	
</body>
</html>