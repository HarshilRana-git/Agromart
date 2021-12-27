<html>
<head>
<title>Shopping cart</title>
<style>
* { font-size: 12px; font-family: Verdana }
input { border: 1px solid #ccc }
table
{
border:1px solid black;
}
</style>
</head>
<body>

<jsp:declaration>
java.util.Enumeration parms;
</jsp:declaration>

<jsp:scriptlet>
parms = request.getParameterNames();

while(parms.hasMoreElements()) {
    String name = (String) parms.nextElement();
    session.removeAttribute(name);
}

</jsp:scriptlet>


<img src="addcart.png" width="50px" onclick="document.location='fert.jsp'">
&nbsp&nbsp<img src="removecart.png" width="40px" onclick="document.location='remove.jsp'">
&nbsp&nbsp<img src="cart.png" width="40px" onclick="document.location='cart.jsp'">

<h2>Remove items from cart</h2>

<form method="get" action="remove.jsp">

<table>
<% if (session.getAttribute("fert1") != null) { %>
<tr>
<td><input type="checkbox" name="fert1"></td><td>fert1</td></td>
</tr>
<% } %>
<% if (session.getAttribute("fert2") != null) { %>
<tr>
<td><input type="checkbox" name="fert2"></td><td>fert2</td></td>
</tr>
<% } %>
<% if (session.getAttribute("fert3") != null) { %>
<tr>
<td><input type="checkbox" name="fert3"></td><td>fert3</td></td>
</tr>
<% } %>
<% if (session.getAttribute("fert4") != null) { %>
<tr>
<td><input type="checkbox" name="fert4"></td><td>fert4</td></td>
</tr>
<% } %>
<% if (session.getAttribute("fert5") != null) { %>
<tr>
<td><input type="checkbox" name="fert5"></td><td>fert5</td></td>
</tr>
<% } %>
</table>
<br><br>
<input type="submit" value="submit">
</form>

</body>
</html>