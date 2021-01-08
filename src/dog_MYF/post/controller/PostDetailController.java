package dog_MYF.post.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dog_MYF.post.entity.Comment;
import dog_MYF.post.entity.Post;
import dog_MYF.post.service.PostService;

@WebServlet("/dog_MYF/postDetail")
public class PostDetailController extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		/*
		 * SESSION - CHECK
		 */
		String adminId = "admin";
		boolean adminLogin = false;
		boolean generalLogin = false;

		HttpSession myfSession = req.getSession(false);
		if(myfSession != null)
		{
			String loginId = (String)myfSession.getAttribute("id");

			req.setAttribute("currentUser", loginId);
			generalLogin = true;			
			if(adminId.equals(loginId))
			{
				adminLogin = true;
			}
		}
		if(req.getAttribute("currentUser") == null)
		{
			req.setAttribute("currentUser", "log-off");
		}
		
		/*
		 * 
		 */
		String detailPage;
		if(generalLogin)
		{
			detailPage = (String)myfSession.getAttribute("detailPage");
			PostService service = new PostService();
			Post post = service.getPost(Integer.parseInt(detailPage));
			req.setAttribute("p", post);
			List<Comment> cList = service.getCommentList(Integer.parseInt(detailPage));
			req.setAttribute("cList", cList);
		}
		
		req.getRequestDispatcher("/dog_MYF/post/postDetail.jsp").forward(req, resp);
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		doPost(req, resp);
	}
}
