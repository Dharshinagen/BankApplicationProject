<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<link rel="stylesheet" href="RegCss.css">
</head>
<script>
        
        function validate(){
        	var pwd=document.getElementbyId("pwd");
            var Cpwd=document.getElementbyId("Cpwd");
        	if(pwd!=Cpwd){
        		document.getElementById("pwd").style.borderColor = "#E34236";
                document.getElementById("Cpwd").style.borderColor = "#E34236";
        	}
        	 
        }
</script>
<body>
<div class="box">   
 <form  action="register" method="post" >
        <fieldset>
          <h2 align=center>USER</h2>
          <table>
            <tr>
               <th><label for="Name">Name</label></th>
               <td><input type=" text" name="uname" pattern="[A-Za-z]{5,}" required autofocus> </td>
            </tr>
            <tr>
                <th><label for="email">Email</label></th>
                <td><input type="email" name="emailId" pattern="[a-z0-9]+[@][a-z]+[.][a-z]+{8,15}" required > </td>
             </tr>
            <tr> 
               <th><label for="pwd">New Password:</label></th>
               <td><input type="Password" name="pwd" id="pwd" pattern="[A-Za-z0-9]{8,10}" required  > </td>
            </tr>
            <tr> 
               <th><label for="confirmPwd">Confirm Password:</label></th>
               <td><input type="Password" name="confirmPwd" id="Cpwd" required  > </td>
            </tr>
            <tr>
                <th><label for="mobNo">Mobile Number</label></th>
                <td><input type="phone" name="mobNo"  pattern="[6-9][0-9]{9}" required ></td>
             </tr>
           </table>
              <button type="submit" onclick="validate()"=>Submit</a></button>
              <button type="reset">Reset</button>
               
        </fieldset>
</form>
</div>

 </body>
</body>
</html>