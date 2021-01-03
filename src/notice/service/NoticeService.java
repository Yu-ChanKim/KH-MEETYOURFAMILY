package notice.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import notice.entity.Notice;
import notice.entity.NoticeView;

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
	
		String sql = "INSERT INTO NOTICE(TITLE, CONTENT, WRITER, PUB) VALUES(?, ?, ?, 0)";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try
		{
			Class.forName(JDBC_DRIVER);
			conn = DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASS);
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, notice.getTitle());
			pstmt.setString(2, notice.getContent());
			pstmt.setString(3, notice.getWriter());
			
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
		return 0;
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
	
	public List<NoticeView> getNoticeList(int page)
	{
		return getNoticeList("TITLE", "", page);
	}
	
	public List<NoticeView> getNoticeList(String field, String query, int page)
	{	
		List<NoticeView> list = new ArrayList<>();
		
		String sql = "SELECT * FROM"
				+ " ("
				+ "    SELECT ROWNUM NUM, N.* FROM"
				+ "    ("
				+ "        SELECT * FROM NOTICE_VIEW WHERE " + field + " LIKE ? ORDER BY REGDATE DESC"
				+ "    ) N"
				+ " )"
				+ " WHERE NUM BETWEEN ? AND ?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try
		{
			Class.forName(JDBC_DRIVER);
			conn = DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASS);
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, "%" + query + "%");
			pstmt.setInt(2, 1+(page-1)*10);
			pstmt.setInt(3, page*10);
			
			rs = pstmt.executeQuery();

			while(rs.next())
			{
				int id = rs.getInt("ID");
				String title = rs.getString("TITLE");
				String writer = rs.getString("WRITER");
				Date regdate = rs.getDate("REGDATE");
				String files = rs.getString("FILES");
				String hit = rs.getString("HIT");
//				String content = rs.getString("CONTENT");
				boolean pub = rs.getBoolean("PUB");
				int commentCount = rs.getInt("COMMENT_COUNT");
				
				NoticeView notice = new NoticeView(id, title, writer, regdate, files, hit, /*content,*/ pub, commentCount);
				
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
	
	public int getNoticeCount()
	{
		return getNoticeCount("title", "");
	}
	
	public int getNoticeCount(String field, String query)
	{
		int count = 0;
		
		String sql = "SELECT COUNT(ID) COUNT FROM"
				+ " ("
				+ "    SELECT ROWNUM NUM, N.* FROM"
				+ "    ("
				+ "        SELECT * FROM NOTICE_TB WHERE " + field + " LIKE ? ORDER BY REGDATE DESC"
				+ "    ) N"
				+ " )";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try
		{
			Class.forName(JDBC_DRIVER);
			conn = DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASS);
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, "%" + query + "%");

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
			Class.forName(JDBC_DRIVER);
			conn = DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASS);
			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, id);
			
			rs = pstmt.executeQuery();

			if(rs.next())
			{
				int nid = rs.getInt("ID");
				String title = rs.getString("TITLE");
				String writer = rs.getString("WRITER");
				Date regdate = rs.getDate("REGDATE");
				String files = rs.getString("FILES");
				String hit = rs.getString("HIT");
				String content = rs.getString("CONTENT");
				boolean pub = rs.getBoolean("PUB");
				
				notice = new Notice(nid, title, writer, regdate, files, hit, content, pub);
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
			Class.forName(JDBC_DRIVER);
			conn = DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASS);
			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, id);
			
			rs = pstmt.executeQuery();

			if(rs.next())
			{
				int nid = rs.getInt("ID");
				String title = rs.getString("TITLE");
				String writer = rs.getString("WRITER");
				Date regdate = rs.getDate("REGDATE");
				String files = rs.getString("FILES");
				String hit = rs.getString("HIT");
				String content = rs.getString("CONTENT");
				boolean pub = rs.getBoolean("PUB");
				
				notice = new Notice(nid, title, writer, regdate, files, hit, content, pub);
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
			Class.forName(JDBC_DRIVER);
			conn = DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASS);
			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, id);
			
			rs = pstmt.executeQuery();

			if(rs.next())
			{
				int nid = rs.getInt("ID");
				String title = rs.getString("TITLE");
				String writer = rs.getString("WRITER");
				Date regdate = rs.getDate("REGDATE");
				String files = rs.getString("FILES");
				String hit = rs.getString("HIT");
				String content = rs.getString("CONTENT");
				boolean pub = rs.getBoolean("PUB");
				
				notice = new Notice(nid, title, writer, regdate, files, hit, content, pub);
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
			Class.forName(JDBC_DRIVER);
			conn = DriverManager.getConnection(JDBC_URL, DB_USER, DB_PASS);
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