<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
body
{
background-size:100% 100%;
}
b { display: inline; }
p { display: inline; }
</style>

<body background="dash.jpeg">
<%String name=(String)session.getAttribute("name");%>
<b>Username: <% out.print(name);%></b>

</body>
<script>

</script>

</html>