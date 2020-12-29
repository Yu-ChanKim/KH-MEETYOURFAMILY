package notice.controller;

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

import notice.entity.Notice;

@WebServlet("/dog_notice/noticeDetail")
public class NoticeDetailController extends HttpServlet
{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
	{
		int id = Integer.parseInt(req.getParameter("id"));

		String url = "jdbc:oracle:thin:@localhost:1521:XE";
		String sql = "SELECT * FROM NOTICE WHERE ID=?";
		
		try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection(url, "system", "oracle");
			PreparedStatement st = con.prepareStatement(sql);
			st.setInt(1, id);
			
			ResultSet rs = st.executeQuery();
			
			rs.next();
			
			String title = rs.getString("TITLE");
			String writer = rs.getString("WRITER");
			Date regdate = rs.getDate("REGDATE");
			String files = rs.getString("FILES");
			String hit = rs.getString("HIT");
			String content = rs.getString("CONTENT");
			
			Notice notice = new Notice(id, title, writer, regdate, files, hit, content);
		    
		    req.setAttribute("n", notice);
		    /*
		    req.setAttribute("title", title);
		    req.setAttribute("writer", writer);
		    req.setAttribute("regdate", regdate);
		    req.setAttribute("hit", hit);
		    req.setAttribute("files", files);
		    req.setAttribute("content", content);
		    */
		    
			rs.close();
			st.close();
			con.close();

		}
		catch (ClassNotFoundException e)
		{
			e.printStackTrace();
		}
		catch (SQLException e)
		{
			e.printStackTrace();
		}

		req.getRequestDispatcher("/dog_notice/noticeDetail.jsp").forward(req, resp);
	}
}
