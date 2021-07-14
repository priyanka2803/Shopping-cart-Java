package cart;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;
import java.util.*;

public class RegistrationServlet extends HttpServlet
{
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		User user = new User();
		user.setName("");
		user.setUsername("someone@somehost.com");
		user.setPassword("");
		user.setAddress("");
		request.setAttribute("user",user);
		request.setAttribute("username.already","");
		request.getRequestDispatcher("/Register.jsp").forward(request,response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		User user = new User();
		user.setName(request.getParameter("name"));
		user.setUsername(request.getParameter("username"));
		user.setPassword(request.getParameter("password"));
		user.setAddress(request.getParameter("address"));
		try
		{
			UserDAO dao = new UserDAO();
			dao.addUser(user);
			HttpSession session = request.getSession();
			session.setAttribute("user",user);
			request.getRequestDispatcher("/Registered.jsp").forward(request,response);
		}
		catch(Exception e)
		{
			
			request.setAttribute("user",user);
			request.setAttribute("username.already","user already exists");
			request.getRequestDispatcher("/Register.jsp").forward(request,response);
		}
	}
}
