package cart;

import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;
import java.util.*;

public class LoginServlet extends HttpServlet
{
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		User user = new User("","someone@somehost.com","","");
		request.setAttribute("user",user);
		request.setAttribute("username.error","");
		request.setAttribute("password.error","");
		request.getRequestDispatcher("/login.jsp").forward(request,response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		UserDAO dao = new UserDAO();
		System.out.println("1");
		try
		{
			User user = dao.getUser(username);
			if(user == null)
			{
				user= new User("",username,"","");
				request.setAttribute("user",user);
				request.setAttribute("username.error","No Such User");
				request.setAttribute("password.error","");
				request.getRequestDispatcher("/login.jsp").forward(request,response);
			}
			else if(!user.getPassword().equals(password))
			{
				request.setAttribute("user",user);
				request.setAttribute("username.error","");
				request.setAttribute("password.error","Inncorect Password");
				request.getRequestDispatcher("/login.jsp").forward(request,response);	
			}
			else
			{
				HttpSession hs = request.getSession();
				hs.setAttribute("user",user);
				request.getRequestDispatcher("/Shipping.jsp").forward(request,response);	
			}

		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		
		
	}
}