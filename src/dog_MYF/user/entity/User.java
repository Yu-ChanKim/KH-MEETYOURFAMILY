package dog_MYF.user.entity;

public class User
{
	private String id;
	private String pw;
	
	public User()
	{
		
	}
	
	public User(String id, String pw)
	{
		this.id = id;
		this.pw = pw;
	}

	public String getId()
	{
		return id;
	}

	public String getPw()
	{
		return pw;
	}
}
