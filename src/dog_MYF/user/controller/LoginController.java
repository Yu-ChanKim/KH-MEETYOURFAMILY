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

		String btn = req.getParameter("btn");
		String id = req.getParameter("id");
		String pw = req.getParameter("pw");
		String currentUser = "log-off";
		if(btn != null && btn.equals("login") && id != null && pw != null)
		{
			UserService service = new UserService();
			boolean result = service.login(id, pw);
			if(result)
			{
				HttpSession myfSession = req.getSession(true);
				myfSession.setAttribute("id", id);
				currentUser = (String)myfSession.getAttribute("id");
			}
		}
		else if(btn != null && btn.equals("logout"))
		{
			HttpSession myfSession = req.getSession(false);
			if(myfSession != null)
			{
				myfSession.invalidate();
			}
		}
		else
		{
			HttpSession myfSession = req.getSession(false);
			if(myfSession != null)
			{
				String currentUser_ = (String)myfSession.getAttribute("id");
				if (currentUser_ != null)
				{
					currentUser = currentUser_;
				}
			}
		}
		
		req.setAttribute("currentUser", currentUser);
//		resp.sendRedirect("/dog_MYF/meetyourfamily.jsp");
		
		req.getRequestDispatcher("/dog_MYF/meetyourfamily.jsp").forward(req, resp);
	}

	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		doPost(req, resp);
	}
}

