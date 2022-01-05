<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="RegCss.css">
<title>Login</title>
</head>
<body>
<div class="img">
  <div class="box">
    <form action="login"  method="post">
        <fieldset>
        <h2 align=center>Login</h2>
        
           <table>
              <tr>
                  <th><label for="userId">User EmailId:</label></th> 
                  <td><input type="text" name="userId" pattern="[a-z]+[0-9.]+[@][a-z]+[.][a-z]+{8,15}" required autofocus></td>
              </tr>
               <tr>
                 <th><label for="pwd"> Password:</label></th>
                 <td><input type="password"  name="pwd" pattern="[A-Za-z0-9]{8,10}" required></td>
               </tr>
          </table>
             
            <a href="forgotPassword.html">Forgot Password ?</a>
            
            <%
            String login=(String)session.getAttribute("login");
             if(login!=null)
             {%>
           <h4><%=login %></h4>
             <% }
            %>
            
            <button type="submit">Log In</button>
            <button type="submit"><a href="Reg.jsp">New user</a></button>
            
          
        </fieldset>
       </form>
       
       <%session.removeAttribute("login");
       %>
      </div>
      </div>
</body>
</html>