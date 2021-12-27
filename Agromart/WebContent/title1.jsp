<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>

.tab {
overflow: hidden;

}
.tab a {
float: left;
margin-left: 30px;
margin-right:auto;
color:black;
text-align: center;
padding: 14px 16px;
text-decoration: none;
font-size: 17px;
}
.column {
float: left;
column-width: 16.8%;

}

img.agro
{
padding-left:70px;
}

.user
{
width:100%;
padding-left: 40px;
background-color: #3e8e41;
}

</style>
</head>
<body background="f1.jpg">

<div class="row">

<div class="column">
<img class="agro" src="agro.png" height"40%" width="40%"></img>
</div>

<div class="column">
<div class="tab">
<a href="index.html" target="dash">Home</a><a href="About.html" target="dash">About</a><a href="services.html" target="dash">Services</a><a href="gallery.html" target="dash">Gallery</a><a href="contact.html" target="dash">Contact</a>
</div>
</div>

</body>
</html>