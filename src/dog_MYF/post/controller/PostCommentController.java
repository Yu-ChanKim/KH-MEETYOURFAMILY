package dog_MYF.post.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.join.CustomInfo;

import dog_MYF.post.entity.Comment;
import dog_MYF.post.service.PostService;

@WebServlet("/dog_MYF/postComment")
public class PostCommentController extends HttpServlet
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
		if(session != null)
		{
			loginId = (CustomInfo) session.getAttribute("customInfo");
			if(loginId != null)
			{
				req.setAttribute("currentUser", loginId.getUserId());
				generalLogin = true;
				if(adminId.equals(loginId.getUserId()))
				{
					adminLogin = true;
				}
			}
		}
		if(req.getAttribute("currentUser") == null)
		{
			req.setAttribute("currentUser", "log-off");
		}
		
		
		/*
		 * ACTION : NEW COMMENT
		 */
		String detailPage = req.getParameter("detailPage");
		
		if(generalLogin)
		{
			String cRegister = null; 
			String cRegister_ = req.getParameter("cRegister");
			if(cRegister_ != null)
			{
				cRegister = cRegister_;
				
				String content = req.getParameter("comment");
				int postId = Integer.parseInt(cRegister);
				
				Comment comment = new Comment();
				comment.setWriter(loginId.getUserId());
				comment.setContent(content);
				comment.setPostId(postId);
				
				PostService service = new PostService();
				service.insertComment(comment);
				
				
				resp.sendRedirect("/dog_MYF/postDetail");
				
			}

			
			/*
			 * ACTION : DELETE COMMENT
			 */

			if(generalLogin)
			{
				String deleteComment = req.getParameter("deleteComment");
				if(deleteComment != null)
				{
					PostService service = new PostService();
					service.deleteComment(Integer.parseInt(deleteComment));
					
					resp.sendRedirect("/dog_MYF/postDetail");
				}
			}
		}
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		doPost(req, resp);
	}
}
