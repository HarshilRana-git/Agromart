<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@page import="java.sql.*" %>
    <%@page import="javax.servlet.*" %>
    <%@page import="javax.servlet.http.*" %>
     <%@page import="java.util.*" %>
     <%@page import="javax.servlet.RequestDispatcher" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
	<style>
body 
{
font-family: Alegreya SC;
background-size: 100%;
background-repeat: no-repeat;
background-attachment: fixed;
overflow: noscroll;
}

form
{
width:40%;
}

input[type=submit],input[type=reset] {
  width: 40%;
  background-color:#2698eb;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}
input[type=submit]:hover {
  background-color: #45a049;
}
input[type=reset]:hover 
{
  background-color: #45a049;
}

</style>
</head>
<body bgcolor="green" text="#ffffff">
<h1 align="Center">Create an account</h1>
		<center>
		<form action="SignUp">
			<fieldset>
				<legend align="Center">Personal Details</legend>
				<table  cellpadding="20%" align="Center">
					<tr>
					<td><strong>Enter Name:</strong></td>
					<td><input type="text" name="name"  placeholder="Your Name" required></td>
					</tr>

					<tr>
					<td><strong>Enter Password:</strong></td>
					<td><input type="password" name="password" placeholder="Your Password"  required></td>
					</tr>

					<tr>
					<td><strong>Confirm Password:</strong></td>
					<td><input type="password" name="confirm_password" placeholder="Confirm Password"  required></td>
					</tr>

					
					<tr>
					<td><strong>Enter Mobile Number:</strong></td>
					<td><input type="tel" id="phone" name="phone" pattern="[1-9]{1}[0-9]{9}" required></td>
					</tr>

					<tr>
					<td><strong>Enter Email ID:</strong></td>
					<td><input type="email" id="email" name="email"
  pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" placeholder="Example:abc@gmail.com" required></td>
					</tr>
				</table>
			</fieldset>
				
			<fieldset>
				<legend align="Center">Other Details</legend>
				<table cellpadding="20%" align="Center">
				<tr>
				<td><strong>Select State:</strong></td>
				<td><select name="state">
					<option value="Guj">Gujarat</option>
					<option value="MH">Maharashtra</option>
					<option value="Raj">Rajasthan</option>
				</select></td>
				</tr>
				
				<tr>
				<td><strong>Select City:</strong></td>
				<td><select name="city">
					<option value="Nvs">Navsari</option>
					<option value="Surat">Surat</option>
					<option value="Vadodra">Vadodra</option>
					<option value="Bharuch">Bharuch</option>
					<option value="Mumbai Central">Mumbai Central</option>
					<option value="Powai">Powai</option>
				</select></td>
				</tr>
				<tr>
				<td>Address:</td>
				<td><textarea name="Address" rows="4" cols="30" required></textarea></td>
				</tr>
				<tr>
					<td><strong>Enter Pincode:</strong></td>
					<td><input type="tel" id="zip" name="zip" pattern="[0-9]{6}" placeholder="Example:395009" required></td>
				</tr>
				</table>
			</fieldset>
			<center>
		<input type="submit" value="Submit" >
		<br>
		<input type="reset" value="reset">
		</form>
</body>
</html>