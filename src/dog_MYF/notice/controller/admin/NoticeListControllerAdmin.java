package dog_MYF.notice.controller.admin;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dog_MYF.notice.entity.Notice;
import dog_MYF.notice.entity.NoticeView;
import dog_MYF.notice.service.NoticeService;
import oracle.net.ano.Service;

@WebServlet("/dog_MYF/noticeList/Admin")
public class NoticeListControllerAdmin extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		req.setAttribute("user", "admin");
		
		String deleteBtn = req.getParameter("deleteBtn");
		String openBtn = req.getParameter("openBtn");
		
		if(deleteBtn != null)
		{
			String[] deleteIdsStr = req.getParameterValues("deleteId");
			if(deleteIdsStr != null)
			{
				NoticeService service = new NoticeService();
				int[] deleteIds = new int[deleteIdsStr.length];
				for (int i=0; i<deleteIds.length; i++)
				{
					deleteIds[i] = Integer.parseInt(deleteIdsStr[i]);
				}
				int result = service.deleteNoticeAll(deleteIds);
			}
			resp.sendRedirect("/dog_MYF/noticeList/Admin");
		}
		else if(openBtn != null)
		{
			String[] openIds = req.getParameterValues("openId");
		}
		else
		{
			String category = "title";
			String category_ = req.getParameter("category");
			if (category_ != null && !category_.equals(""))
			{
				category = category_;
			}

			String keyword = "";
			String keyword_ = req.getParameter("keyword");
			if (keyword_ != null)
			{
				keyword = keyword_;
			}

			int pageNo = 1;
			String pageNo_ = req.getParameter("pageNo");
			if (pageNo_ != null && !pageNo_.equals(""))
			{
				pageNo = Integer.parseInt(pageNo_);
			}

			NoticeService service = new NoticeService();
			List<NoticeView> list = service.getNoticeList(category, keyword, pageNo);
			int count = service.getNoticeCount(category, keyword);

			req.setAttribute("count", count);
			req.setAttribute("list", list);

			req.getRequestDispatcher("/dog_MYF/notice/noticeList.jsp").forward(req, resp);
		}
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		doPost(req, resp);
	}
}
