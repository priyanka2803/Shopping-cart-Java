package cart;

public class User
{
	String name;
	String username;
	String password;
	String address;

	public User()
	{
	}
	public User(String name,String username,String password,String address)
	{
		this.name = name;
		this.username = username;
		this.password = password;
		this.address = address;
	}
	public void setName(String name)
	{
		this.name = name;

	}
	public String getName()
	{
		return name;
	}
	public void setUsername(String username)
	{
		this.username = username;
	}
	public String getUsername()
	{
		return username;
	}
	public void setPassword(String password)
	{
		this.password = password;
	}
	public String getPassword()
	{
		return password;
	}
	public void setAddress(String address)
	{
		this.address = address;
	}
	public String getAddress()
	{
		return address;
	}
};
