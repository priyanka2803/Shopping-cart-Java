<html>

<head>
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>New Page 1</title>
</head>

<body>
<%@ page import="java.util.*,cart.*" %>
<% Cart cart = (Cart)session.getAttribute("cart"); 
	   Collection cartItems = cart.getCartItems();
	   Iterator it = cartItems.iterator();
%>
<table width="100%" height="100%">
<tr>
<td width="100%" height="20%" bgcolor="BlanchedAlmond">&nbsp;</td>
</tr>
<tr>
<td width="100%" height="60%" bgcolor="AliceBlue">
<form method="GET" action="/Shop1/decision" name="cart">
  <table border="1" cellpadding="10" cellspacing="0" align="center">
  <caption>Your Cart</caption>
  	<tr>
  		<th>Item Purchased</th>
  		<th>Quantity</th>
  		<th>Rate</th>
  		<th>Remove</th>
  	</tr>
	<% while(it.hasNext()) { 
		CartItem cartItem = (CartItem)it.next();
		%>
    <tr>
      <td><%= cartItem.getItem().getDescription() %></td>
      <td align="center">
      <input type="number" min=1 max=100 name="T<%= cartItem.getCartItemId() %>" size="1" value="<%= cartItem.getQuantity() %>"></td>
      <td>INR <%= cartItem.getItem().getPrice() %></td>
      <td align="center"><input type="checkbox" name="<%= cartItem.getCartItemId() %>" value="ON"></td>
    </tr>
	<% } %>
    <tr>
      <td colspan="2">Total Amount</td>
      <td>INR <%= cart.getCartValue() %></td>
      <td>&nbsp;</td>
     </tr>
     <tr>
     	<td colspan="4"><input type="submit" value="Update Cart" name="update" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="Shop More" name="shop">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="submit" value="Freeze Cart" name="freeze">
     	</td>
     </tr>
     </table>
	 <script type="text/javascript">
			function checkQuantity(quantity,element)
			{
				if(quantity>0&&quantity<=100)
				{
					
				}
				else
				{
					element.value=1;
					alert("Quantity cannot be less than 0 or more than 100 = " +quantity);
				}
			}
	 </script>
  </td>
</tr>
<tr>
<td width="100%" height="20%" bgcolor="BlanchedAlmond">&nbsp;</td>
</tr>
</table>
     
  
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  
</form>

</body>

</html>