<html>
<table width="100%" height="100%">
<tr>
<td width="100%" height="20%" bgcolor="BlanchedAlmond"><table align="center"><tr><td style="font-size: 24pt">Welcome to VESP's Shopping Centre</td></tr></table></td>
</tr>
<tr>
<td width="100%" height="60%" bgcolor="AliceBlue">
	<b> Hi <%= ((cart.User)session.getAttribute("user")).getName() %> You have been Successfully Registered </b>
	<br/>
	<b> Click the link below to login </b>

<a href="/Shop1/login">
LOGIN </a></td>
</tr>
<tr>
<td width="100%" height="20%" bgcolor="BlanchedAlmond">&nbsp;</td>
</tr>
</table>
</html>