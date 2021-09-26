<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Signup</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
      <form action ="signupAction.jsp" method = "post">
      
      <input type="text" name="name" placeholder= "Enter Name" required>
      <input type="text" name="email" placeholder= "Enter Email-id" required>
      <input type="number" name="mobileNumber" placeholder= "Enter Mobile Number" required>
      <select name="securityQuestion" required>
      <option value="What is your favorite color?">What is your favorite color?</option>
      <option value="What is name of your pet?">What is name of your pet?</option>
      <option value="What elementary school did you attend?">What elementary school did you attend?</option>
      <option value="What is the name of your favourite teacher?">What is the name of your favorite teacher?</option>
      </select>
      <input type="text" name="answer" placeholder= "Enter Answer" required>
      <input type="password" name="password" placeholder= "Enter Password" required>
      <input type="submit" value="signup">
      </form>
      <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whysign'>
  <% 
  String msg=request.getParameter("msg");
  if ("valid".equals(msg))
  {
 %>
	 <h1>Successfully Registered !!</h1> 
	 <% 
  }
  %>

<%
if ("invalid".equals(msg))
{
	 %>
	<h1>Some thing Went Wrong! Try Again !</h1>
	 <% 
}
%>




    <h2>Online Shopping</h2>
    <p>The Online Shopping System is the application that allows the users to shop online without going to the shops to buy them.</p>
  </div>
</div>

</body>
</html>