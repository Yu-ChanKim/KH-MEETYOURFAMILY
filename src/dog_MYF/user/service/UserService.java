package dog_MYF.user.service;

import java.util.ArrayList;
import java.util.List;

import dog_MYF.notice.entity.NoticeView;
import dog_MYF.user.entity.User;

public class UserService
{
	List<User> users = new ArrayList<>();
	
	public UserService()
	{
		this.users.add(new User("gildong", "18"));
		this.users.add(new User("admin", "admin"));
	}
	
	public boolean login(String id, String pw)
	{
		boolean result = false;
		for(User u : users)
		{
			if(u.getId().equals(id) && u.getPw().equals(pw))
			{
				return true;
			}
		}
		return result;
	}
}