<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User</title>
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
            padding-right : 328.3px;
        }
h3{
padding:20px;
background-color:blue;
margin:0;
}
.sidebar{
 position:absolute;
left:0;
width:250px;
height:86%;
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
   color:white;
    background-color:transparent;
    border-color:transparent;
    font-size:15px;
}
p{
padding:10px;
padding-left:300px;
padding-right:50px;
}

 
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
   
     <%! String name; %>
     <%   name=(String) session.getAttribute("username"); %>
    
     <div >
     <p class="pa"> <b>WELCOME &nbsp <%=name %>! </b></p> <br><br>
         <p>Some ways to Prevent Spread of COVID-19</p>
         
         <p class="par"> Avoid touching surfaces, especially in public settings or health facilities, in case people infected with COVID-19 have touched them. Clean surfaces regularly with standard disinfectants.</p>
          <p class="par">  Frequently clean your hands with soap and water, or an alcohol-based hand rub</p>
     </div>
</body>
</html>