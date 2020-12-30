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

public class NoticeService
{
	private final String JDBC_DRIVER = "oracle.jdbc.driver.OracleDriver";
	private final String JDBC_URL = "jdbc:oracle:thin:@localhost:1521:XE";
	private final String DB_USER = "system";
	private final String DB_PASS = "oracle";
	
	public List<Notice> getNoticeList()
	{
		return getNoticeList("TITLE", "", 1);
	}
	
	public List<Notice> getNoticeList(int page)
	{
		return getNoticeList("TITLE", "", page);
	}
	
	public List<Notice> getNoticeList(String field, String query, int page)
	{	
		List<Notice> list = new ArrayList<>();
		
		String sql = "SELECT * FROM"
				+ " ("
				+ "    SELECT ROWNUM NUM, N.* FROM"
				+ "    ("
				+ "        SELECT * FROM NOTICE WHERE " + field + " LIKE ? ORDER BY REGDATE DESC"
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
				String content = rs.getString("CONTENT");
				
				Notice notice = new Notice(id, title, writer, regdate, files, hit, content);
				
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
				+ "        SELECT * FROM NOTICE WHERE " + field + " LIKE ? ORDER BY REGDATE DESC"
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
		
		String sql = "SELECT * FROM NOTICE WHERE ID=?";
				
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
				
				notice = new Notice(nid, title, writer, regdate, files, hit, content);
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
		
		String sql = "SELECT * FROM NOTICE"
				+ " WHERE ID ="
				+ " ("
				+ "    SELECT ID FROM NOTICE"
				+ "    WHERE REGDATE >"
				+ "    ("
				+ "        SELECT REGDATE FROM NOTICE WHERE ID = ?"
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
				
				notice = new Notice(nid, title, writer, regdate, files, hit, content);
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
		
		String sql = "SELECT * FROM NOTICE "
				+ " WHERE ID ="
				+ " ("
				+ "    SELECT ID FROM"
				+ "    ("
				+ "        SELECT * FROM NOTICE ORDER BY REGDATE DESC"
				+ "    )"
				+ "    WHERE REGDATE <"
				+ "    ("
				+ "        SELECT REGDATE FROM NOTICE WHERE ID = ?"
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
				
				notice = new Notice(nid, title, writer, regdate, files, hit, content);
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
}