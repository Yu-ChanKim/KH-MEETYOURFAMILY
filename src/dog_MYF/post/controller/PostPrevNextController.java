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

@WebServlet("/dog_MYF/postNextPrev")
public class PostPrevNextController extends HttpServlet
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
		 *	PREV or NEXT PAGE  
		 */

		String prevNextStr = req.getParameter("prevNext");
		if(prevNextStr != null)
		{
			int prevNext = Integer.parseInt(prevNextStr);
			if(generalLogin)
			{
				myfSession.setAttribute("detailPage", prevNext);
			}
			PostService service = new PostService();
			if(!adminLogin)
			{
				service.updatePostHit(prevNext);
			}
			Post post= service.getPost(prevNext);
			req.setAttribute("n", post);
			List<Comment> cList = service.getCommentList(prevNext);
			req.setAttribute("cList", cList);
			Post nextPost = service.getNextPost(prevNext);
			req.setAttribute("nextPost", nextPost);
			Post prevPost = service.getPrevPost(prevNext);
			req.setAttribute("prevPost", prevPost);

			req.getRequestDispatcher("/dog_MYF/post/postDetail.jsp").forward(req, resp);
		}
//		req.getRequestDispatcher("/dog_MYF/postDetail").forward(req, resp);
//		resp.sendRedirect("/dog_MYF/postDetail");
//		resp.sendRedirect("/dog_MYF/post/Detail.jsp");
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{

	}
}
