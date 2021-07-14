<html>
<table width="100%" height="100%">
<tr>
<td width="100%" height="20%" bgcolor="BlanchedAlmond"><table align="center"><tr><td style="font-size: 24pt">Welcome to Priyanka's Shopping Centre</td></tr></table></td>
</tr>
<tr>
<td width="100%" height="60%" bgcolor="AliceBlue">
<b> Hi <%= ((cart.User)session.getAttribute("user")).getName() %> Your Items will be delivered shortly on following address</b>
	<br/>
	<textarea rows=4 cols=25 readonly><%= ((cart.User)session.getAttribute("user")).getAddress() %></textarea>
	<br/>
	<b> Click the link below to go to Home Page </b>	
	<br/>
	<% session.invalidate(); %>
<a href="/Shop1/Index.html">
Home</a></td>
</tr>
<tr>
<td width="100%" height="20%" bgcolor="BlanchedAlmond">&nbsp;</td>
</tr>
</table>
</html>