<html>
<head>
<title>Shopping cart</title>
<style>
* { font-size: 12px; font-family: Verdana }
</style>
</head>
<body>
<form action="cart1.jsp">

<img src="addcart.png" width="50px" onclick="document.location='fert.jsp'">
&nbsp&nbsp<img src="removecart.png" width="40px" onclick="document.location='remove.jsp'">
&nbsp&nbsp<img src="cart.png" width="40px" onclick="document.location='cart.jsp'">


<h2>The shopping cart</h2>

<jsp:scriptlet><![CDATA[ 
java.util.Enumeration content = session.getAttributeNames();

while (content.hasMoreElements()) {
	 String name = (String) content.nextElement();
	 int i=0;
	 float a[]=new float[50];
    if(name.equals("fert1"))
	{
        out.println("<br>");
    	out.println(name);  
    	int p=100;
		out.println("price per qty:"+p);
		out.println("x"+"<input type='text' name='txt1' size='1'></input>");
		//int str =Integer.parseInt(request.getParameter("str"));
		//out.println(str);
		//int z=Integer.parseInt(str);
		//int q=p*z;
	}
    
    if(name.equals("fert2"))
	{
    	out.println("<br>");
    	out.println(name);  
    	int p=10;
		out.println("price per qty:"+p);
		out.println("x"+"<input type='text' name='txt2' size='1'></input>");
		
	}
    
    if(name.equals("fert3"))
	{
    	out.println("<br>");
    	out.println(name);  
    	int p=50;
		out.println("price per qty:"+p);
		out.println("x"+"<input type='text' name='txt3' size='1'></input>");
	}
    
    if(name.equals("fert4"))
	{ 
    	out.println("<br>");
    	out.println(name);  
    	int p=75;
		out.println("price per qty:"+p);
		out.println("x"+"<input type='text' name='txt4' size='1'></input>");
	}
    
    if(name.equals("fert5"))
	{ 
    	out.println("<br>");
    	out.println(name);  
    	int p=20;
		out.println("price per qty:"+p);
		out.println("x"+"<input type='text' name='txt5' size='1'></input>");
	}
    
    
}

 ]]></jsp:scriptlet>
<input type="submit"></input>
</form>
</body>
</html>