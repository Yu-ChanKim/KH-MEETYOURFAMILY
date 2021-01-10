package dog_MYF.notice.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.join.CustomInfo;

import dog_MYF.notice.entity.Comment;
import dog_MYF.notice.entity.Notice;
import dog_MYF.notice.service.NoticeService;

@WebServlet("/dog_MYF/noticePrevNext")
public class NoticePrevNextController extends HttpServlet
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
		 *	PREV or NEXT PAGE  
		 */

		String prevNextStr = req.getParameter("prevNext");
		if(prevNextStr != null)
		{
			int prevNext = Integer.parseInt(prevNextStr);
			if(generalLogin)
			{
				session.setAttribute("detailPage", prevNext);
			}
			NoticeService service = new NoticeService();
			if(!adminLogin)
			{
				service.updateNoticeHit(prevNext);
			}
			Notice notice = service.getNotice(prevNext);
			req.setAttribute("n", notice);
			List<Comment> cList = service.getCommentList(prevNext);
			req.setAttribute("cList", cList);
			Notice nextNotice = service.getNextNotice(prevNext);
			req.setAttribute("nextNotice", nextNotice);
			Notice prevNotice = service.getPrevNotice(prevNext);
			req.setAttribute("prevNotice", prevNotice);

			req.getRequestDispatcher("/dog_MYF/notice/noticeDetail.jsp").forward(req, resp);
		}
//		req.getRequestDispatcher("/dog_MYF/noticeDetail").forward(req, resp);
//		resp.sendRedirect("/dog_MYF/noticeDetail");
//		resp.sendRedirect("/dog_MYF/notice/noticeDetail.jsp");
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		doPost(req, resp);
	}
}
