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
public class NoticeListController extends HttpServlet
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
		
		String viewPage = "noticeList.jsp";
		
		
		/*
		 * ACTION : detailPage
		 */
		String detailPageStr = req.getParameter("detailPage");
		if(detailPageStr != null)
		{
			int detailPage = Integer.parseInt(detailPageStr);
			if(generalLogin)
			{
				myfSession.setAttribute("detailPage", detailPageStr);
			}
			NoticeService service = new NoticeService();
			if(!adminLogin)
			{
				service.updateNoticeHit(detailPage);
			}
			Notice notice = service.getNotice(detailPage);
			req.setAttribute("n", notice);
			List<Comment> cList = service.getCommentList(detailPage);
			req.setAttribute("cList", cList);
			Notice nextNotice = service.getNextNotice(detailPage);
			req.setAttribute("nextNotice", nextNotice);
			Notice prevNotice = service.getPrevNotice(detailPage);
			req.setAttribute("prevNotice", prevNotice);
			
			viewPage = "noticeDetail.jsp";
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
				viewPage = "noticeList";
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
				viewPage = "noticeList";
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
				viewPage = "noticeReg.jsp";
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
				viewPage = "noticeList";
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
			req.getRequestDispatcher("/dog_MYF/notice/" + viewPage).forward(req, resp);
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
