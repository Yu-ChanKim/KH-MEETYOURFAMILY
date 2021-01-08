package dog_MYF.post.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import dog_MYF.post.entity.Comment;
import dog_MYF.post.entity.Post;
import dog_MYF.post.entity.PostView;
import dog_MYF.post.service.PostService;
import oracle.net.ano.Service;

@MultipartConfig
(
	fileSizeThreshold=1024*1024,
	maxFileSize=1024*1024*5,
	maxRequestSize=1024*1024*5*5
)
@WebServlet("/dog_MYF/postList")
public class PostListController extends HttpServlet
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
		 * VALUE - INIT
		 */
		boolean isForward = true;
		
		String category = "title";
		String category_ = req.getParameter("category");
		if(category_ != null && !category_.equals(""))
		{
			category = category_;
		}
		
		String keyword = "";
		String keyword_ = req.getParameter("keyword");
		if(keyword_ != null)
		{
			keyword = keyword_;
		}
		
		int pageNo = 1;
		String pageNo_ = req.getParameter("pageNo");
		if(pageNo_ != null && !pageNo_.equals(""))
		{
			pageNo = Integer.parseInt(pageNo_);
		}
		
		String viewPage = "postList.jsp";
		
		
		/*
		 * ACTION : detailPage
		 */
		String detailPage = req.getParameter("detailPage");
		if(detailPage != null)
		{
			if(generalLogin)
			{
				myfSession.setAttribute("detailPage", detailPage);
			}
			PostService service = new PostService();
			if(!adminLogin)
			{
				service.updatePostHit(Integer.parseInt(detailPage));
			}
			Post post = service.getPost(Integer.parseInt(detailPage));
			req.setAttribute("p", post);
			List<Comment> cList = service.getCommentList(Integer.parseInt(detailPage));
			req.setAttribute("cList", cList);
			viewPage = "postDetail.jsp";
		}
		
		
		/*
		 * ACTION : delete
		 */
		if(adminLogin)
		{
			String deleteId = req.getParameter("deleteId");
			if(deleteId != null)
			{
				PostService service = new PostService();
				service.deletePost(Integer.parseInt(deleteId));
				isForward = false;
				viewPage = "postList";
			}
			
			String deleteIds = req.getParameter("deleteIds");
			if(deleteIds != null)
			{
				String[] deleteIdsStr = req.getParameterValues("delIds");
				if(deleteIdsStr != null)
				{
					PostService service = new PostService();
					int[] ids = new int[deleteIdsStr.length];
					for (int i=0; i<ids.length; i++)
					{
						ids[i] = Integer.parseInt(deleteIdsStr[i]);
					}
					service.deletePostAll(ids);
				}
				isForward = false;
				viewPage = "postList";
			}
		}
		
		
		/*
		 * ACTION : regPage
		 */
		if(adminLogin)
		{
			String regPage = req.getParameter("regPage");
			if(regPage != null)
			{
				viewPage = "postReg.jsp";
			}
		}
		
		
		/*
		 * ACTION : register
		 */
		if(adminLogin)
		{
			String register = req.getParameter("register");
			if(register != null)
			{
				String title = req.getParameter("title");
				String content = req.getParameter("content");
				PostFileUpload fileUpload = new PostFileUpload(req);
				String files = fileUpload.getFileNames();
				
				Post post = new Post();
				post.setTitle(title);
				post.setWriter((String)myfSession.getAttribute("id"));
				post.setContent(content);
				post.setFiles(files);
				
				PostService service = new PostService();
				service.insertPost(post);
				
				isForward = false;
				viewPage = "postList";
			}
		}
		
		
		/*
		 * ACTION : comment register
		 */
		

		/*
		 * ACTION : COMMON
		 */
		
		PostService service = new PostService();
		List<PostView> list = service.getPostList(category, keyword, pageNo);
		int count = service.getPostCount(category, keyword);
		req.setAttribute("count", count);
		req.setAttribute("list", list);

		
		if(isForward)
		{
			req.getRequestDispatcher("/dog_MYF/post/" + viewPage).forward(req, resp);
		}
		else
		{	
			resp.sendRedirect("/dog_MYF/" + viewPage);
		}
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		doPost(req, resp);
	}
}
