package cart;

import javax.naming.*;
import javax.sql.*;
import java.sql.*;
import java.util.*;

public class UserDAO
{
	Connection con;
	public UserDAO()
	{
	}
	public Connection getConnection() throws ClassNotFoundException, SQLException
	{
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cart1","root","mikado");
		
		return con;
	}
	public void closeConnection() throws SQLException
	{
		con.close();
	}
	public void addUser(User user) throws Exception
	{
		getConnection();
		PreparedStatement pstmt = con.prepareStatement("Insert into user values(?,?,?,?)");
		pstmt.setString(1,user.getName());
		pstmt.setString(2,user.getUsername().trim());
		pstmt.setString(3,user.getPassword());
		pstmt.setString(4,user.getAddress());
		int i = pstmt.executeUpdate();
		pstmt.close();
		closeConnection();

	}
	public User getUser(String username) throws Exception
	{
		getConnection();
		PreparedStatement pstmt = con.prepareStatement("select * from user where username=? ");
		pstmt.setString(1,username);
		ResultSet rs = pstmt.executeQuery();
		if(!rs.next())
		{
			pstmt.close();
			closeConnection();
			return null;
		}
		else
		{
			User user = new User();
			user.setName(rs.getString(1));
			user.setUsername(rs.getString(2));
			user.setPassword(rs.getString(3));
			user.setAddress(rs.getString(4));
			pstmt.close();
			closeConnection();
			return user;
		}
	}
}
