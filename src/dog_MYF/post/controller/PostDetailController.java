package dog_MYF.post.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.join.CustomInfo;
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

		CustomInfo loginId = new CustomInfo();
		HttpSession session = req.getSession(false);
		if (session != null)
		{
			loginId = (CustomInfo) session.getAttribute("customInfo");
			if (loginId != null)
			{
				req.setAttribute("currentUser", loginId.getUserId());
				generalLogin = true;
				if (adminId.equals(loginId.getUserId()))
				{
					adminLogin = true;
				}
			}
		}
		if (req.getAttribute("currentUser") == null)
		{
			req.setAttribute("currentUser", "log-off");
		}

		



		
		/*
		 * 
		 */
		String detailPageStr;
		if (generalLogin)
		{
			detailPageStr = (String) session.getAttribute("detailPage");
			int detailPage = Integer.parseInt(detailPageStr);

			PostService service = new PostService();
			Post post = service.getPost(detailPage);

			req.setAttribute("p", post);
			List<Comment> cList = service.getCommentList(detailPage);
			req.setAttribute("cList", cList);
			Post nextPost = service.getNextPost(detailPage);
			req.setAttribute("nextPost", nextPost);
			Post prevPost = service.getPrevPost(detailPage);
			req.setAttribute("prevPost", prevPost);
		}

		req.getRequestDispatcher("/dog_MYF/post/postDetail.jsp").forward(req, resp);
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		doPost(req, resp);
	}
}
