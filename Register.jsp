<html> 
    <head> 
        <script> 
          
            // Function to check Whether both passwords 
            // is same or not. 
            function checkPassword(form) { 
                password1 = form.password.value; 
                password2 = form.password1.value; 
  
                // If password not entered 
                if (password1 == '') 
                    alert ("Please enter Password"); 
                      
                // If confirm password not entered 
                else if (password2 == '') 
                    alert ("Please enter confirm password"); 
                      
                // If Not same return False.     
                else if(password1 != password2) { 
                    alert ("\nPassword did not match: Please try again...") 
                    return false; 
                } 
				else
				{
					return true;
				}
   // If same return True. 
                
            } 
        </script> 
        
    </head> 
    <body> 
	<table width="100%" height="100%">
<tr>
<td width="100%" height="20%" bgcolor="BlanchedAlmond"><table align="center"><tr><td style="font-size: 24pt">Welcome to VESP's Shopping Centre</td></tr></table></td>
</tr>
<tr>
<td width="100%" height="60%" bgcolor="AliceBlue">
        
        <form onSubmit = "return checkPassword(this)" method="POST" action="/Shop1/register"> 
        <table border = 1 align = "center"> 
			<tr> 
                <!-- Enter Username -->
                <td>Name:</td> 
                <td><input type = "text" name = "name" value="<%= ((cart.User)request.getAttribute("user")).getName() %>" size = 25 required /></td>
				<td>   </td>
            </tr>
            <tr> 
                <!-- Enter Username -->
                <td>Username:</td> 
                <td><input type = "email" name = "username" placeholder="someone@somehost.com" value="<%= ((cart.User)request.getAttribute("user")).getUsername() %>" size = 25 required /></td> 
				<td><%= request.getAttribute("username.already") %> </td>
            </tr> 
            <tr> 
                <!-- Enter Password. -->
                <td>Password:</td> 
                <td><input type = "password" name = "password" size = 25 required /></td> 
				<td> </td>
            </tr> 
            <tr> 
                <!-- To Confirm Password. -->
                <td>Confirm Password:</td> 
                <td><input type = "password" name = "password1" size = 25 required /></td> 
				<td> </td>
            </tr> 
			<tr> 
                <!-- Address -->
                <td>Shipping Address</td> 
                <td><textarea name = "address" rows="5" cols="25" required> <%= ((cart.User)request.getAttribute("user")).getAddress() %> </textarea></td>
				<td> </td>
            </tr> 
            <tr> 
                <td colspan = 3 align = right> 
                <input type = "submit" value = "Submit"></td> 
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