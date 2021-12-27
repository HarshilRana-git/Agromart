<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LOGIN</title>
<style>

.sec
{
padding:40px;
margin:40px;
}

fieldset
{
border: 1px solid black;
border-color:black;
border-collapse:collapse;
color:black;
padding:5px;
}

body 
{
font-family: Alegreya SC;
background-size: 100%;
background-repeat: no-repeat;
background-attachment: fixed;
overflow: noscroll;
}

.container 
{
  padding: 16px;
}

form
{
width:40%;
}

input[type=email], input[type=password]
{
  width: 100%;
  padding: 10px 10px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}
input[type=submit],input[type=button] {
  width: 100%;
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
h5 
{
   width: 100%; 
   text-align: center; 
   border-bottom: 1px solid #000; 
   line-height: 0.1em;
   margin: 10px 0 20px; 
} 

h5 span 
{ 
    background:#fff; 
    padding:0 10px; 
}

@media screen and (max-width: 300px) 
{
  span.psw {
     display: block;
     float: none;
}

span.psw 
{
float: right;
padding-top: 16px;
color:black;
}
.column {
  float: left;
  width: 33.33%;
  padding: 10px;
  height: 300px;
}

</style>
</head>

<div class="sec">
<center>
<body background="green.jpg">


<form action="log"> 
<fieldset>
<legend><font color="white"><h2>Sign in</h2></legend>
<div class="con" align="left">
    <label for="email" color="white"><h3><b>Username</b></label><br>
    <input type="email" name="email" placeholder="Enter email id" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" required><br>
    <label for="pwd"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="pwd" required>
        
<br>
    <center><input type="submit" ></center>   
  </div>

 
</font>
</fieldset>
</form>
</body>
</center>
</div>
<div class="sec">
</div>


</html>