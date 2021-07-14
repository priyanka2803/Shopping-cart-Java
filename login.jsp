<html>
<head>
<style>
.error {
	color: #ff0000;
}
 
.errorblock {
	color: #000;
	background-color: #ffEEEE;
	border: 3px solid #ff0000;
	padding: 8px;
	margin: 16px;
}
</style>
</head>
 <body>
<table width="100%" height="100%">
<tr>
<td width="100%" height="20%" bgcolor="BlanchedAlmond"><table align="center"><tr><td style="font-size: 24pt">Welcome to Priyanka's Shopping Centre</td></tr></table></td>
</tr>
<tr>
<td width="100%" height="60%" bgcolor="AliceBlue">

<div align="center">
<TABLE WIDTH=20% BORDER=0 BORDERCOLOR="#aabbcc">
	<TR VALIGN=TOP>
		<TH colspan="2">
			User Login
		</TH>
	</TR>
	<TR VALIGN=TOP>
		<TD colspan="2">
		</TD>
	</TR>
	</TABLE>

	<form method="POST" action="/Shop1/authenticate">
<!--<form:errors path="*" cssClass="errorblock" element="div" />-->

		<table>
			<tr>
				<td>Username</td>
				<td><input type="email" name="username" value="<%= ((cart.User)(request.getAttribute("user"))).getUsername() %>" required /></td>
				<td><%= request.getAttribute("username.error") %></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input type="password" name="password" required/></td>
				<td><%= request.getAttribute("password.error") %></td>
			</tr>
			<tr>
				<td colspan="3"><input type="submit" value="submit"/></td>
			</tr>
		</table>
	</form>

</td>
</tr>
<tr>
<td width="100%" height="20%" bgcolor="BlanchedAlmond">&nbsp;</td>
</tr>
</table>
</body>
</html>