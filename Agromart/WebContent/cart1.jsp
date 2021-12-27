<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
    <%@page import="javax.servlet.*" %>
    <%@page import="javax.servlet.http.*" %>
     <%@page import="java.util.*" %>
     <%@page import="javax.servlet.RequestDispatcher" %>
<html>
<head>
<title>Shopping cart</title>
<style>
* { font-size: 12px; font-family: Verdana }
</style>
</head>
<body>

<img src="addcart.png" width="50px" onclick="document.location='fert.jsp'">
&nbsp&nbsp<img src="removecart.png" width="40px" onclick="document.location='remove.jsp'">
&nbsp&nbsp<img src="cart.png" width="40px" onclick="document.location='cart.jsp'">



<h2>The shopping cart</h2>
<form action="fert.jsp">
<jsp:scriptlet><![CDATA[ 
java.util.Enumeration content = session.getAttributeNames();

int z1=0,z2=0,z3=0,z4=0,z5=0,p1,p2,p3,p4,p5;
int count;
String email=(String)session.getAttribute("email");
//out.println();
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost/mysql","root","root");
String query="insert into orderhistory values(?,?,?,?)";
PreparedStatement stmt=con.prepareStatement(query);
while (content.hasMoreElements()) {
	 String name = (String) content.nextElement();
	 
	 if(name.equals("fert1"))
	{
    	z1=0;
        out.println("<br>");
    	out.println(name);  
    	p1=100;
		out.println("price per qty:"+p1);
		int s1=Integer.parseInt(request.getParameter("txt1"));
		out.println("x"+s1+"=");
        z1=p1*s1;
        out.println(z1);
        stmt.setString(1,name);
		stmt.setInt(2,s1);
		stmt.setInt(3,z1);
		stmt.setString(4,email);
		count = stmt.executeUpdate();
	}
    
    if(name.equals("fert2"))
	{
    	z2=0;
    	out.println("<br>");
    	out.println(name);  
    	p2=10;
		out.println("price per qty:"+p2);
		int s2=Integer.parseInt(request.getParameter("txt2"));
		out.println("x"+s2+"=");
		z2=p2*s2;
        out.println(z2);
        stmt.setString(1,name);
		stmt.setInt(2,s2);
		stmt.setInt(3,z2);
		stmt.setString(4,email);
		count = stmt.executeUpdate();
	}
    
    if(name.equals("fert3"))
	{
    	out.println("<br>");
    	out.println(name);  
    	p3=50;
		out.println("price per qty:"+p3);
		int s3=Integer.parseInt(request.getParameter("txt3"));
		out.println("x"+s3+"=");
		z3=p3*s3;
        out.println(z3);
        stmt.setString(1,name);
		stmt.setInt(2,s3);
		stmt.setInt(3,z3);
		stmt.setString(4,email);
		count = stmt.executeUpdate();
	}
    
    if(name.equals("fert4"))
	{ 
    	out.println("<br>");
    	out.println(name);  
    	p4=75;
		out.println("price per qty:"+p4);
		int s4=Integer.parseInt(request.getParameter("txt4"));
		out.println("x"+s4+"=");
		z4=p4*s4;
        out.println(z4);
        stmt.setString(1,name);
		stmt.setInt(2,s4);
		stmt.setInt(3,z4);
		stmt.setString(4,email);
		count = stmt.executeUpdate();
	}
    
    if(name.equals("fert5"))
	{ 
    	out.println("<br>");
    	out.println(name);  
    	p5=20;
		out.println("price per qty:"+p5);
		int s5=Integer.parseInt(request.getParameter("txt5"));
		out.println("x"+s5+"=");
		z5=p5*s5;
        out.println(z5);
        stmt.setString(1,name);
		stmt.setInt(2,s5);
		stmt.setInt(3,z5);
		stmt.setString(4,email);
		count = stmt.executeUpdate();
    }
    
   
}
out.println("<br>");
int total=z1+z2+z3+z4+z5;
out.println("<br>");
out.println("total:"+total);
out.println("<br>");
if(total!=0)
{
out.println("<input type='submit' onclick='f1()' value='Place order'></input>");
}
 ]]></jsp:scriptlet>
 <script>
 function f1()
 {
	window.alert("Order placed successfully");
 }
 </script>
</form>
</body>
</html>