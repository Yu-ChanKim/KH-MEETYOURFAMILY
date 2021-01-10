package dog_MYF.post.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/dog_MYF/postImage")
public class PostImage extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		String img = req.getParameter("imgFile");
		if(img != null)
		{
			req.setAttribute("imgFile", img);
		}
		req.getRequestDispatcher("/dog_MYF/post/postImage.jsp").forward(req, resp);
	}
	
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException ,IOException
	{
		doPost(req, resp);
	}
}
