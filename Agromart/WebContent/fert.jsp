<html>
<head>
<title>Shopping cart</title>
<style>
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>

body 
{
  background-image: url('dash.jpg');
width:100%;
}

* {
  box-sizing: border-box;
}

#myInput {
  background-image: url('/css/searchicon.png');
  background-position: 10px 12px;
  background-repeat: no-repeat;
  width: 50%;
  font-size: 16px;
  padding: 12px 20px 12px 40px;
  border: 1px solid #ddd;
  margin:12px;
}

.btn {
  background-color: DodgerBlue;
  border: none;
  color: white;
  padding: 12px 16px;
  font-size: 18px;
  cursor: pointer;
}

/* Darker background on mouse-over */
.btn:hover {
  background-color: RoyalBlue;
}
#myUL {
  list-style-type: none;
  padding: 0;
  margin: 0;
}

ul li{
  display: inline;

}
div.cont {
  width:20%;
  height:30%;
  border: 3px solid blue;
float:left;
margin:45px;
}
* { font-size: 12px; font-family: Verdana }
input { border: 1px solid #ccc }
</style>
</head>
<body>

<jsp:declaration>
java.util.Enumeration parms;
java.util.Enumeration values;
</jsp:declaration>

<jsp:scriptlet>
parms = request.getParameterNames();
values = request.getParameterNames();


while(parms.hasMoreElements()) {
    String name = (String) parms.nextElement();
    String value = (String) values.nextElement();
    session.setAttribute(name, value);
}

</jsp:scriptlet>


<img src="addcart.png" width="50px" onclick="document.location='fert.jsp'">
&nbsp&nbsp<img src="removecart.png" width="40px" onclick="document.location='remove.jsp'">
&nbsp&nbsp<img src="cart.png" width="40px" onclick="document.location='cart.jsp'">


<h2>Add to shopping cart</h2>


<center><h3>BUY FERTILIZERS......</h3></center>
<input type="text" id="myInput" placeholder="search..."></input>
<button class="btn" onclick="myFunction()"><i class="fa fa-search"></i></button>
<a href="cart.jsp"><img src="cart.png" width="40px" onclick="document.location='cart.jsp'"></a>
<ul id="myUL">

<form method="get" action="fert.jsp">
<li>
<a href="#">
<div class="cont">
<img src="fert1.JPG" width="100%" height="100%" >
<br><input type="checkbox" <% if (session.getAttribute("fert1") != null) 
out.print("checked"); %> name="fert1">
fert1 &nbsp&nbsp
<input type="submit" value="Add to cart">
</div>
</a>
</li>

<li>
<a href="#">
<div class="cont">
<img src="fert2.JPG" width="100%" height="100%" >
<br><input type="checkbox" <% if (session.getAttribute("fert2") != null) 
out.print("checked"); %> name="fert2">
fert2 &nbsp&nbsp
<input type="submit" value="Add to cart">
</div>
</a>
</li>

<li>
<a href="#">
<div class="cont">
<img src="fert3.JPG" width="100%" height="100%" >
<br><input type="checkbox" <% if (session.getAttribute("fert3") != null) 
out.print("checked"); %> name="fert3">
fert3 &nbsp&nbsp
<input type="submit" value="Add to cart">
</div>
</a>
</li>

<li>
<a href="#">
<div class="cont">
<img src="fert4.JPG" width="100%" height="100%" >
<br><input type="checkbox" <% if (session.getAttribute("fert4") != null) 
out.print("checked"); %> name="fert4">
fert4 &nbsp&nbsp
<input type="submit" value="Add to cart">
</div>
</a>
</li>

<li>
<a href="#">
<div class="cont">
<img src="fert5.JPG" width="100%" height="100%" >
<br><input type="checkbox" <% if (session.getAttribute("fert5") != null) 
out.print("checked"); %> name="fert5">
fert5 &nbsp&nbsp
<input type="submit" value="Add to cart">
</div>
</a>
</li>
</ul>
<br><br>

</form>
<script>
function myFunction() 
{
    var input, filter, ul, li, a, i, txtValue;
    input = document.getElementById("myInput");
    filter = input.value.toUpperCase();
    ul = document.getElementById("myUL");
    li = ul.getElementsByTagName("li");
    for (i = 0; i < li.length; i++) 
{
        a = li[i].getElementsByTagName("a")[0];
        txtValue = a.textContent || a.innerText;
        if (txtValue.toUpperCase().indexOf(filter) > -1) {
            li[i].style.display = "";
        } else {
            li[i].style.display = "none";
        }
    }
}
</script>

</body>
</html>