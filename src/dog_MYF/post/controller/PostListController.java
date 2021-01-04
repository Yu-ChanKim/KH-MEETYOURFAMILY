package dog_MYF.post.controller;

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

import dog_MYF.post.entity.Post;
import dog_MYF.post.entity.PostView;
import dog_MYF.post.service.PostService;
import oracle.net.ano.Service;


@WebServlet("/dog_MYF/postList")
public class PostListController extends HttpServlet
{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		req.setAttribute("user", "user");

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

		PostService service = new PostService();
		List<PostView> list = service.getPostList(category, keyword, pageNo);
		int count = service.getPostCount(category, keyword);
		for(PostView v : list)
		{
//			System.out.println(v.);
		}
		req.setAttribute("count", count);
		req.setAttribute("list", list);
		
		req.getRequestDispatcher("/dog_MYF/post/postList.jsp").forward(req, resp);
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		doPost(req, resp);
	}
}
