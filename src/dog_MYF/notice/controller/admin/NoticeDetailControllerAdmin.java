package dog_MYF.notice.controller.admin;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dog_MYF.notice.entity.Notice;
import dog_MYF.notice.service.NoticeService;

@WebServlet("/dog_MYF/noticeDetail/Admin")
public class NoticeDetailControllerAdmin extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		req.setAttribute("user", "admin");
		
		int id = Integer.parseInt(req.getParameter("id"));

		NoticeService service = new NoticeService();
		Notice notice = service.getNotice(id);
		req.setAttribute("n", notice);

		req.getRequestDispatcher("/dog_MYF/notice/noticeDetail.jsp").forward(req, resp);
		
//		String deleteBtn = req.getParameter("deleteBtn");
//		
//		if(deleteBtn != null)
//		{
//			int[] id_ = {id};
//			System.out.println("abc");
//			int deleteResult = service.deleteNoticeAll(id_);
//			
//			resp.sendRedirect("/dog_notice/noticeListAdmin.jsp");
//		}
//		상세화면 삭제기능
	}
	
	@Override
	protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		doPost(req, resp);
	}
}
