package dog_MYF.notice.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dog_MYF.notice.entity.Notice;
import dog_MYF.notice.entity.NoticeView;
import dog_MYF.notice.service.NoticeService;
import oracle.net.ano.Service;

@WebServlet("/dog_MYF/noticeList")
public class NoticeListController extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		/*
		 * SESSION : TRUE/FALSE
		 */
		String currentUser = "log-off";
		String currentUser_ = req.getParameter("currentUser");
		if(currentUser_ != null)
		{
			currentUser = currentUser_;
		}

		
		boolean isLogin = false;
		HttpSession myfSession = req.getSession(false);
		if(myfSession != null)
		{
			currentUser = (String)myfSession.getAttribute("id");
		}
//		else
//		{
//			req.setAttribute("currentUser", "log-off");
//		}
		
		/*
		 * VALUE : INIT/POST
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
		 * ACTION : regPage
		 */
		
		String regPage = req.getParameter("regPage");
		if(regPage != null)
		{
			viewPage = "noticeReg";
		}
		
		
		/*
		 * ACTION : detailPage
		 */
		
		String detailPage = req.getParameter("detailPage");
		if(detailPage != null)
		{
			NoticeService service = new NoticeService();
			Notice notice = service.getNotice(Integer.parseInt(detailPage));
			req.setAttribute("n", notice);
			viewPage = "noticeDetail";
		}
		
		
		/*
		 * ACTION : delete
		 */
		
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
		
		
		/*
		 * register
		 */
		
		String register = req.getParameter("register");
		if(register != null)
		{
			String title = req.getParameter("title");
			String content = req.getParameter("content");
			
			Notice notice = new Notice();
			notice.setTitle(title);
			notice.setWriter((String)myfSession.getAttribute("id"));
			notice.setContent(content);
			
			NoticeService service = new NoticeService();
			service.insertNotice(notice);
			
			isForward = false;
		}


		/*
		 * ACTION : viewPage
		 */
		if(currentUser == null)
		{
			currentUser = "log-off";
		}
		req.setAttribute("currentUser", currentUser);
		
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
