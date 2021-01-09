package dog_MYF.notice.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dog_MYF.notice.entity.Comment;
import dog_MYF.notice.entity.Notice;
import dog_MYF.notice.service.NoticeService;

@WebServlet("/dog_MYF/noticeDetail")
public class NoticeDetailController extends HttpServlet
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
		String detailPageStr;
		if(generalLogin)
		{
			detailPageStr = (String)myfSession.getAttribute("detailPage");
			int detailPage = Integer.parseInt(detailPageStr);
			
			NoticeService service = new NoticeService();
			Notice notice = service.getNotice(detailPage);
			
			req.setAttribute("n", notice);
			List<Comment> cList = service.getCommentList(detailPage);
			req.setAttribute("cList", cList);
			Notice nextNotice = service.getNextNotice(detailPage);
			req.setAttribute("nextNotice", nextNotice);
			Notice prevNotice = service.getPrevNotice(detailPage);
			req.setAttribute("prevNotice", prevNotice);
		}
		req.getRequestDispatcher("/dog_MYF/notice/noticeDetail.jsp").forward(req, resp);
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		doPost(req, resp);
	}
}
