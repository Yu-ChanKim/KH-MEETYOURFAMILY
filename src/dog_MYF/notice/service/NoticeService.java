package dog_MYF.notice.service;

import java.sql.Connection;
import java.sql.Timestamp;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import java.util.List;

import dog_MYF.notice.entity.Comment;
import dog_MYF.notice.entity.Notice;
import dog_MYF.notice.entity.NoticeView;

public class NoticeService
{
	private final String JDBC_DRIVER = "oracle.jdbc.driver.OracleDriver";
	private final String JDBC_URL = "jdbc:oracle:thin:@localhost:1521:XE";
	private final String DB_USER = "system";
	private final String DB_PASS = "oracle";
	
	public int removeNoticeAll(int[] ids)
	{
		return 0;
	}

	public int pubNoticeAll(int[] ids)
	{
		return 0;
	}
	
	public int insertNotice(Notice notice)
	{
		int result = 0;
	
		String sql = "INSERT INTO NOTICE_TB (TITLE, WRITER, CONTENT, FILES) VALUES(?, ?, ?, ?)";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try
		{
			Class.forName(this.JDBC_DRIVER);
			conn = DriverManager.getConnection(this.JDBC_URL, this.DB_USER, this.DB_PASS);
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, notice.getTitle());
			pstmt.setString(2, notice.getWriter());
			pstmt.setString(3, notice.getContent());
			pstmt.setString(4, notice.getFiles());
			result = pstmt.executeUpdate();
		}
		catch (ClassNotFoundException e)
		{
			e.printStackTrace();
		}
		catch (SQLException e)
		{
			e.printStackTrace();
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		finally
		{
			if (pstmt != null)	try { pstmt.close();}	catch (Exception e) {}
			if (conn != null)	try { conn.close();	}	catch (Exception e) {}
		}
		
		return result;
	}
	
	public int deleteNotice(int id)
	{
		int[] idArr = {id};
		int result = deleteNoticeAll(idArr);
		
		return result;
	}
	
	public int updateNotice(Notice notice)
	{
		return 0;
	}
	
	List<Notice> getNoticeNewestList()
	{
		return null;
	}
	
	// NoticeView
	public List<NoticeView> getNoticeList()
	{
		return getNoticeList("TITLE", "", 1);
	}
	
	public List<NoticeView> getNoticeList(int pageNo)
	{
		return getNoticeList("TITLE", "", pageNo);
	}
	
	public List<NoticeView> getNoticeList(String category, String keyword, int pageNo)
	{	
		List<NoticeView> list = new ArrayList<>();
		
		String sql = "SELECT * FROM"
				+ " ("
				+ "    SELECT ROWNUM NUM, N.* FROM"
				+ "    ("
				+ "        SELECT * FROM NOTICE_VIEW WHERE " + category + " LIKE ? ORDER BY REGDATE DESC"
				+ "    ) N"
				+ " )"
				+ " WHERE NUM BETWEEN ? AND ?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try
		{
			Class.forName(this.JDBC_DRIVER);
			conn = DriverManager.getConnection(this.JDBC_URL, this.DB_USER, this.DB_PASS);
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, "%" + keyword + "%");
			pstmt.setInt(2, 1+(pageNo-1)*10);
			pstmt.setInt(3, pageNo*10);
			
			rs = pstmt.executeQuery();

			while(rs.next())
			{
				int id = rs.getInt("ID");
				String title = rs.getString("TITLE");
				String writer = rs.getString("WRITER");
				Timestamp regdate = rs.getTimestamp("REGDATE");
				String files = rs.getString("FILES");
				String hit = rs.getString("HIT");
				boolean pub = rs.getBoolean("PUB");
				int commentCount = rs.getInt("COMMENT_COUNT");
				
				NoticeView notice = new NoticeView(id, title, writer, /*content,*/ regdate, files, hit, pub, commentCount);
				
				list.add(notice);
			}
		}
		catch (ClassNotFoundException e)
		{
			e.printStackTrace();
		}
		catch (SQLException e)
		{
			e.printStackTrace();
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		finally
		{
			if (rs != null)		try { rs.close();	}	catch (Exception e) {}
			if (pstmt != null)	try { pstmt.close();}	catch (Exception e) {}
			if (conn != null)	try { conn.close();	}	catch (Exception e) {}
		}
		
		return list;
	}
	
	public void updateNoticeHit(int pageNo)
	{
		String sql = "UPDATE NOTICE_TB N"
				+ " SET N.HIT = N.HIT+1"
				+ " WHERE N.ID = ?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try
		{
			Class.forName(this.JDBC_DRIVER);
			conn = DriverManager.getConnection(this.JDBC_URL, this.DB_USER, this.DB_PASS);
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, pageNo);
			rs = pstmt.executeQuery();
		}
		catch (ClassNotFoundException e)
		{
			e.printStackTrace();
		}
		catch (SQLException e)
		{
			e.printStackTrace();
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		finally
		{
			if (rs != null)		try { rs.close();	}	catch (Exception e) {}
			if (pstmt != null)	try { pstmt.close();}	catch (Exception e) {}
			if (conn != null)	try { conn.close();	}	catch (Exception e) {}
		}
	}
	
	
	public int deleteComment(int id)
	{
		int result = 0;
		
		String sql = "DELETE NOTICE_COMMENT_TB WHERE ID IN ("+ id +")";
		
		Connection conn = null;
		Statement stmt = null;
		
		try
		{
			Class.forName(this.JDBC_DRIVER);
			conn = DriverManager.getConnection(this.JDBC_URL, this.DB_USER, this.DB_PASS);
			stmt = conn.createStatement();

			result = stmt.executeUpdate(sql);
		}
		catch (ClassNotFoundException e)
		{
			e.printStackTrace();
		}
		catch (SQLException e)
		{
			e.printStackTrace();
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		finally
		{
			if (stmt != null)	try { stmt.close();}	catch (Exception e) {}
			if (conn != null)	try { conn.close();	}	catch (Exception e) {}
		}
		return result;
	}
	
	
	public int insertComment(Comment comment)
	{
		int result = 0;
	
		String sql = "INSERT INTO NOTICE_COMMENT_TB (WRITER, CONTENT, NOTICE_ID) VALUES(?, ?, ?)";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try
		{
			Class.forName(this.JDBC_DRIVER);
			conn = DriverManager.getConnection(this.JDBC_URL, this.DB_USER, this.DB_PASS);
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, comment.getWriter());
			pstmt.setString(2, comment.getContent());
			pstmt.setInt(3, comment.getNoticeId());
			result = pstmt.executeUpdate();
		}
		catch (ClassNotFoundException e)
		{
			e.printStackTrace();
		}
		catch (SQLException e)
		{
			e.printStackTrace();
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		finally
		{
			if (pstmt != null)	try { pstmt.close();}	catch (Exception e) {}
			if (conn != null)	try { conn.close();	}	catch (Exception e) {}
		}
		return result;
	}
	

	public List<Comment> getCommentList(int noticeId)
	{	
		List<Comment> list = new ArrayList<>();
		
		String sql = "SELECT * FROM NOTICE_COMMENT_TB WHERE NOTICE_ID=?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try
		{
			Class.forName(this.JDBC_DRIVER);
			conn = DriverManager.getConnection(this.JDBC_URL, this.DB_USER, this.DB_PASS);
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, noticeId);
			rs = pstmt.executeQuery();

			while(rs.next())
			{
				int id = rs.getInt("ID");
				String writer = rs.getString("WRITER");
				String content = rs.getString("CONTENT");
				Timestamp regdate = rs.getTimestamp("REGDATE");

				Comment comment = new Comment(id, writer, content, regdate, noticeId);
				list.add(comment);
			}
		}
		catch (ClassNotFoundException e)
		{
			e.printStackTrace();
		}
		catch (SQLException e)
		{
			e.printStackTrace();
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		finally
		{
			if (rs != null)		try { rs.close();	}	catch (Exception e) {}
			if (pstmt != null)	try { pstmt.close();}	catch (Exception e) {}
			if (conn != null)	try { conn.close();	}	catch (Exception e) {}
		}
		return list;
	}
	
	
	public int getNoticeCount()
	{
		return getNoticeCount("title", "");
	}
	
	public int getNoticeCount(String category, String keyword)
	{
		int count = 0;
		
		String sql = "SELECT COUNT(ID) COUNT FROM"
				+ " ("
				+ "    SELECT ROWNUM NUM, N.* FROM"
				+ "    ("
				+ "        SELECT * FROM NOTICE_TB WHERE " + category + " LIKE ? ORDER BY REGDATE DESC"
				+ "    ) N"
				+ " )";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try
		{
			Class.forName(this.JDBC_DRIVER);
			conn = DriverManager.getConnection(this.JDBC_URL, this.DB_USER, this.DB_PASS);
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, "%" + keyword + "%");
			rs = pstmt.executeQuery();

			if(rs.next())
			{
				count = rs.getInt("count");
			}
		}
		catch (ClassNotFoundException e)
		{
			e.printStackTrace();
		}
		catch (SQLException e)
		{
			e.printStackTrace();
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		finally
		{
			if (rs != null)		try { rs.close();	}	catch (Exception e) {}
			if (pstmt != null)	try { pstmt.close();}	catch (Exception e) {}
			if (conn != null)	try { conn.close();	}	catch (Exception e) {}
		}
		return count;
	}
	
	public Notice getNotice(int id)
	{
		Notice notice = null;
		
		String sql = "SELECT * FROM NOTICE_TB WHERE ID=?";

		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try
		{
			Class.forName(this.JDBC_DRIVER);
			conn = DriverManager.getConnection(this.JDBC_URL, this.DB_USER, this.DB_PASS);
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, id);
			rs = pstmt.executeQuery();

			if(rs.next())
			{
				int nid = rs.getInt("ID");
				String title = rs.getString("TITLE");
				String writer = rs.getString("WRITER");
				String content = rs.getString("CONTENT");
				Timestamp regdate = rs.getTimestamp("REGDATE");
				String files = rs.getString("FILES");
				String hit = rs.getString("HIT");
				boolean pub = rs.getBoolean("PUB");

				notice = new Notice(nid, title, writer, content, regdate, files, hit, pub);
			}
		}
		catch (ClassNotFoundException e)
		{
			e.printStackTrace();
		}
		catch (SQLException e)
		{
			e.printStackTrace();
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		finally
		{
			if (rs != null)		try { rs.close();	}	catch (Exception e) {}
			if (pstmt != null)	try { pstmt.close();}	catch (Exception e) {}
			if (conn != null)	try { conn.close();	}	catch (Exception e) {}
		}
		return notice;
	}
	
	public Notice getNextNotice(int id)
	{
		Notice notice = null;
		
		String sql = "SELECT * FROM NOTICE_TB"
				+ " WHERE ID ="
				+ " ("
				+ "    SELECT ID FROM NOTICE_TB"
				+ "    WHERE REGDATE >"
				+ "    ("
				+ "        SELECT REGDATE FROM NOTICE_TB WHERE ID = ?"
				+ "    )"
				+ "    AND ROWNUM = 1"
				+ " )";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try
		{
			Class.forName(this.JDBC_DRIVER);
			conn = DriverManager.getConnection(this.JDBC_URL, this.DB_USER, this.DB_PASS);
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, id);
			rs = pstmt.executeQuery();

			if(rs.next())
			{
				int nid = rs.getInt("ID");
				String title = rs.getString("TITLE");
				String writer = rs.getString("WRITER");
				String content = rs.getString("CONTENT");
				Timestamp regdate = rs.getTimestamp("REGDATE");
				String files = rs.getString("FILES");
				String hit = rs.getString("HIT");
				boolean pub = rs.getBoolean("PUB");
				
				notice = new Notice(nid, title, writer, content, regdate, files, hit, pub);
			}
		}
		catch (ClassNotFoundException e)
		{
			e.printStackTrace();
		}
		catch (SQLException e)
		{
			e.printStackTrace();
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		finally
		{
			if (rs != null)		try { rs.close();	}	catch (Exception e) {}
			if (pstmt != null)	try { pstmt.close();}	catch (Exception e) {}
			if (conn != null)	try { conn.close();	}	catch (Exception e) {}
		}
		
		return notice;
	}
	
	public Notice getPrevNotice(int id)
	{
		Notice notice = null;
		
		String sql = "SELECT * FROM NOTICE_TB"
				+ " WHERE ID ="
				+ " ("
				+ "    SELECT ID FROM"
				+ "    ("
				+ "        SELECT * FROM NOTICE_TB ORDER BY REGDATE DESC"
				+ "    )"
				+ "    WHERE REGDATE <"
				+ "    ("
				+ "        SELECT REGDATE FROM NOTICE_TB WHERE ID = ?"
				+ "    )"
				+ "    AND ROWNUM = 1"
				+ " )";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try
		{
			Class.forName(this.JDBC_DRIVER);
			conn = DriverManager.getConnection(this.JDBC_URL, this.DB_USER, this.DB_PASS);
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, id);
			rs = pstmt.executeQuery();

			if(rs.next())
			{
				int nid = rs.getInt("ID");
				String title = rs.getString("TITLE");
				String writer = rs.getString("WRITER");
				String content = rs.getString("CONTENT");
				Timestamp regdate = rs.getTimestamp("REGDATE");
				String files = rs.getString("FILES");
				String hit = rs.getString("HIT");
				boolean pub = rs.getBoolean("PUB");
				
				notice = new Notice(nid, title, writer, content, regdate, files, hit, pub);
			}
		}
		catch (ClassNotFoundException e)
		{
			e.printStackTrace();
		}
		catch (SQLException e)
		{
			e.printStackTrace();
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		finally
		{
			if (rs != null)		try { rs.close();	}	catch (Exception e) {}
			if (pstmt != null)	try { pstmt.close();}	catch (Exception e) {}
			if (conn != null)	try { conn.close();	}	catch (Exception e) {}
		}
		return notice;
	}

	public int deleteNoticeAll(int[] deleteIds)
	{
		int result = 0;
		String ids = "";
		
		for(int i : deleteIds)
		{
			ids += (i+",");
		}
		ids = ids.substring(0, ids.length()-1);
		
		String sql = "DELETE NOTICE_TB WHERE ID IN ("+ ids +")";
		
		Connection conn = null;
		Statement stmt = null;
		
		try
		{
			Class.forName(this.JDBC_DRIVER);
			conn = DriverManager.getConnection(this.JDBC_URL, this.DB_USER, this.DB_PASS);
			stmt = conn.createStatement();
			result = stmt.executeUpdate(sql);
		}
		catch (ClassNotFoundException e)
		{
			e.printStackTrace();
		}
		catch (SQLException e)
		{
			e.printStackTrace();
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		finally
		{
			if (stmt != null)	try { stmt.close();}	catch (Exception e) {}
			if (conn != null)	try { conn.close();	}	catch (Exception e) {}
		}
		return result;
	}
}