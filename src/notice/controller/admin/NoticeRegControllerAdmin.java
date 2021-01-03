package notice.controller.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import notice.entity.Notice;
import notice.service.NoticeService;

@WebServlet("/dog_notice/noticeReg/Admin")
public class NoticeRegControllerAdmin extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{	
		req.setAttribute("user", "admin");
		
		String title = req.getParameter("title");
		String content = req.getParameter("content");
		
		Notice notice = new Notice();
		notice.setTitle(title);
		notice.setWriter("Admin");
		notice.setContent(content);
		
		NoticeService service = new NoticeService();
		int result = service.insertNotice(notice);
		
		resp.sendRedirect("/dog_notice/noticeList/Admin");
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		doPost(req, resp);
	}
}