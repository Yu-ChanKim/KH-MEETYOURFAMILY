package dog_MYF.user.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dog_MYF.user.service.UserService;

@WebServlet("/dog_MYF/login")
public class LoginController extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		String currentUser = "log-off";

		String login = req.getParameter("login");
		if(login != null)
		{
			String id = req.getParameter("id");
			String pw = req.getParameter("pw");
			if(id != null && pw != null)
			{
				UserService service = new UserService();
				boolean result = service.login(id, pw);
				if(result)
				{
					HttpSession myfSession = req.getSession(true);
					myfSession.setAttribute("id", id);
					currentUser = (String)myfSession.getAttribute("id");
					req.setAttribute("currentUser", currentUser);
				}
			}
		}
		
		String logout = req.getParameter("logout");
		if(logout != null)
		{
			HttpSession myfSession = req.getSession(false);
			if(myfSession != null)
			{
				myfSession.invalidate();
			}
		}
		
		req.setAttribute("currentUser", currentUser);
		
		req.getRequestDispatcher("/dog_MYF/meetyourfamily.jsp").forward(req, resp);
	}

	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		doPost(req, resp);
	}
}

