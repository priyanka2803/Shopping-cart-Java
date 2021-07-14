<%@ page import="java.util.*, cart.Item" %>

<html>
<head>
<style>
.z {
border: 1px solid black; 
border-collapse:collapse ;
text-align:center;
margin-left:auto;
margin-right:auto;
margin-top:0px;
overflow:hidden;
width:80%;
}
.y{
  border: 1px solid black;
  padding:10px 10px 10px 10px;
}
.w{
	 background-color:AliceBlue;
	 color:black;
}
</style>
</head>
<table width="100%" height="100%">
<tr>
<td width="100%" height="10%" bgcolor="BlanchedAlmond">&nbsp;</td>
</tr>
<tr>
<td width="100%" height="80%" bgcolor="AliceBlue">
<script>
var count=0;
function validate() 
{
	console.log(c);
	var s = c.toString();
	var t = "true";
	console.log(s);
	if(s.includes(t))
	{
		console.log(document.forms["loginForm"].submit());
		document.forms["loginForm"].submit();
		return true;
	}
	else
	{ 
		event.preventDefault();
		alert("No item Selected ");
		return false;
	}
}
function update(element,id,checked)
{
	c[id-1]=checked;
	//alert(c);
}
</script>
	<form name="loginForm" method="POST" action="/Shop1/addItems" onsubmit="alert(validate());return validate()" id="myForm">
	
	<table align="center" cellsapcing=60 class="z" bgcolor="LightYellow">
	<caption><h1>Cataloq</h1></caption>
	<tr class="z" bgcolor="white">
	<th class="y">Image</th><th class="y">Description</th><th class="y">Rate</th><th class="y">&nbsp;</th>
	</tr>
<%  Collection c = (Collection)request.getAttribute("items");
		Iterator it = c.iterator();
		while(it.hasNext())
		{
			Item item = (Item)it.next();
%>
	<tr class="z" >
	<script> count++; </script>
		<td cellpadding="30" class="y" ><img src="<%= item.getImagePath() %>"  width="60" height="50" ></td>
		<td cellpadding="30" class="y"><B><%= item.getDescription() %></B></td>
		<td cellpadding="30" class="y">INR <%= item.getPrice() %></td>
		<td class="y" bgcolor="white">&nbsp;<input type="checkbox" name="item<%= item.getId() %>" value="ON" id="<%= item.getId() %>"onclick	="update(this,this.id,this.checked)"></td>
		
	</tr>
	<% } %>
	<script> var c = new Array(count);</script>
	<tr class="y">
		<td cellpadding="30" colspan="4" align="center" class="y" bgcolor="white"><input type="submit" name="submit" value="Purchase" onclick="validate()"/></td>
		
	</tr>
	</table>
	</form>
</td>
</tr>
<tr>
<td width="100%" height="10%" bgcolor="BlanchedAlmond">&nbsp;</td>
</tr>
</table>
</html>