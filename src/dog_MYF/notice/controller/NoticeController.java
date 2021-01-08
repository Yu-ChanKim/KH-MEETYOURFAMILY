package dog_MYF.notice.controller;

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

import dog_MYF.notice.entity.Comment;
import dog_MYF.notice.entity.Notice;
import dog_MYF.notice.entity.NoticeView;
import dog_MYF.notice.service.NoticeService;
import oracle.net.ano.Service;

@MultipartConfig
(
	fileSizeThreshold=1024*1024,
	maxFileSize=1024*1024*5,
	maxRequestSize=1024*1024*5*5
)
@WebServlet("/dog_MYF/noticeList")
public class NoticeController extends HttpServlet
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
		
		String viewPage = "noticeList";
		
		
		/*
		 * ACTION : detailPage
		 */
		String detailPage = req.getParameter("detailPage");
		if(detailPage != null)
		{
			NoticeService service = new NoticeService();
			Notice notice = service.getNotice(Integer.parseInt(detailPage));
			req.setAttribute("n", notice);
			List<Comment> cList = service.getCommentList(Integer.parseInt(detailPage));
			req.setAttribute("cList", cList);
			viewPage = "noticeDetail";
		}
		
		
		/*
		 * ACTION : delete
		 */
		if(adminLogin)
		{
			String deleteId = req.getParameter("deleteId");
			if(deleteId != null)
			{
				NoticeService service = new NoticeService();
				service.deleteNotice(Integer.parseInt(deleteId));
				isForward = false;
			}
			
			String deleteIds = req.getParameter("deleteIds");
			if(deleteIds != null)
			{
				String[] deleteIdsStr = req.getParameterValues("delIds");
				if(deleteIdsStr != null)
				{
					NoticeService service = new NoticeService();
					int[] ids = new int[deleteIdsStr.length];
					for (int i=0; i<ids.length; i++)
					{
						ids[i] = Integer.parseInt(deleteIdsStr[i]);
					}
					service.deleteNoticeAll(ids);
				}
				isForward = false;
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
				viewPage = "noticeReg";
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
				NoticeFileUpload fileUpload = new NoticeFileUpload(req);
				String files = fileUpload.getFileNames();
				
				Notice notice = new Notice();
				notice.setTitle(title);
				notice.setWriter((String)myfSession.getAttribute("id"));
				notice.setContent(content);
				notice.setFiles(files);
				
				NoticeService service = new NoticeService();
				service.insertNotice(notice);
				
				isForward = false;
			}
		}
		
		
		/*
		 * ACTION : comment register
		 */
		if(generalLogin)
		{
			String cRegister = null; 
			String cRegister_ = req.getParameter("cRegister");
			if(cRegister_ != null)
			{
				cRegister = cRegister_;
				String content = req.getParameter("comment");
//				int noticeId = Integer.parseInt(req.getParameter("n.id"));
				int noticeId = Integer.parseInt(cRegister);
				
				Comment comment = new Comment();
				comment.setWriter((String)myfSession.getAttribute("id"));
				comment.setContent(content);
				comment.setNoticeId(noticeId);
				
				NoticeService service = new NoticeService();
				service.insertComment(comment);
				
				Notice notice = service.getNotice(Integer.parseInt(cRegister));
				req.setAttribute("n", notice);
				List<Comment> cList = service.getCommentList(Integer.parseInt(cRegister));
				req.setAttribute("cList", cList);
				
				req.setAttribute("cRegister", null);
				viewPage = "noticeDetail";
			}
		}


		/*
		 * ACTION : COMMON
		 */
		
		NoticeService service = new NoticeService();
		List<NoticeView> list = service.getNoticeList(category, keyword, pageNo);
		int count = service.getNoticeCount(category, keyword);
		req.setAttribute("count", count);
		req.setAttribute("list", list);
		
		if(isForward)
		{
			req.getRequestDispatcher("/dog_MYF/notice/" + viewPage + ".jsp").forward(req, resp);
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
