package cart;

import javax.naming.*;
import javax.sql.*;
import java.sql.*;
import java.util.*;

public class ItemDAO
{
	Connection con;
	public ItemDAO()
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
	public Collection getAllItems() throws ClassNotFoundException, SQLException
	{
		System.out.println("GetAllItems");
		Vector items = new Vector();
		getConnection();
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery("select * from items");
		System.out.println("RS");
		while(rs.next())
		{
			Item item = new Item();
			item.setId(rs.getInt(1));
			System.out.println("GetAllItems-ID");
			item.setName(rs.getString(2));
			System.out.println("GetAllItems-N");
			item.setImagePath(rs.getString(3));
			System.out.println("GetAllItems-P");
			item.setDescription(rs.getString(4));
			System.out.println("GetAllItems-D");
			item.setPrice(rs.getDouble(5));
			System.out.println("GetAllItems-P");
			items.addElement(item);
		}
		rs.close();
		stmt.close();
		closeConnection();
		return items;
	}
	public Item getItem(final int itemId) throws ClassNotFoundException, SQLException
	{
		Item item = new Item();
		getConnection();
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery("select * from Items where id = "+itemId);
		if(rs.next())
		{
			
			item.setId(rs.getInt(1));
			item.setName(rs.getString(2));
			item.setImagePath(rs.getString(3));
			item.setDescription(rs.getString(4));
			item.setPrice(rs.getDouble(5));
			System.out.println("Price Set");
		}
		rs.close();
		stmt.close();
		closeConnection();
		return item;
	}
	public int getItemCount() throws ClassNotFoundException,SQLException
	{
		getConnection();
		Statement stmt = con.createStatement();
		ResultSet rs = stmt.executeQuery("select count(*) from items");
		rs.next();
		int itemCount = rs.getInt(1);
		rs.close();
		stmt.close();
		closeConnection();
		return itemCount;
	}
};