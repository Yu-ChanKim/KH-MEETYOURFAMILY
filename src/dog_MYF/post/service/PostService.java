package dog_MYF.post.service;

import java.sql.Connection;
import java.sql.Timestamp;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import java.util.List;

import dog_MYF.post.entity.Comment;
import dog_MYF.post.entity.Post;
import dog_MYF.post.entity.PostView;

public class PostService
{
	private final String JDBC_DRIVER = "oracle.jdbc.driver.OracleDriver";
	private final String JDBC_URL = "jdbc:oracle:thin:@localhost:1521:XE";
	private final String DB_USER = "system";
	private final String DB_PASS = "oracle";
	
	public int removePostAll(int[] ids)
	{
		return 0;
	}

	public int pubPostAll(int[] ids)
	{
		return 0;
	}
	
	public int insertPost(Post post)
	{
		int result = 0;
	
		String sql = "INSERT INTO POST_TB (TITLE, WRITER, CONTENT, FILES) VALUES(?, ?, ?, ?)";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try
		{
			Class.forName(this.JDBC_DRIVER);
			conn = DriverManager.getConnection(this.JDBC_URL, this.DB_USER, this.DB_PASS);
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, post.getTitle());
			pstmt.setString(2, post.getWriter());
			pstmt.setString(3, post.getContent());
			pstmt.setString(4, post.getFiles());
			
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
	
	public int deletePost(int id)
	{
		int[] idArr = {id};
		int result = deletePostAll(idArr);
		
		return result;
	}
	
	public int updatePost(Post post)
	{
		return 0;
	}
	
	List<Post> getPostNewestList()
	{
		return null;
	}
	
	// PostView
	public List<PostView> getPostList()
	{
		return getPostList("TITLE", "", 1);
	}
	
	public List<PostView> getPostList(int pageNo)
	{
		return getPostList("TITLE", "", pageNo);
	}
	
	public List<PostView> getPostList(String category, String keyword, int pageNo)
	{	
		List<PostView> list = new ArrayList<>();
		
		String sql = "SELECT * FROM"
				+ " ("
				+ "    SELECT ROWNUM NUM, P.* FROM"
				+ "    ("
				+ "        SELECT * FROM POST_VIEW WHERE " + category + " LIKE ? ORDER BY REGDATE DESC"
				+ "    ) P"
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
				
				PostView post = new PostView(id, title, writer, /*content,*/ regdate, files, hit, pub, commentCount);
				
				list.add(post);
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
	
	public void updatePostHit(int pageNo)
	{
		String sql = "UPDATE POST_TB P"
				+ " SET P.HIT = P.HIT+1"
				+ " WHERE P.ID = ?";
		
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
		
		String sql = "DELETE POSET_COMMENT_TB WHERE ID IN ("+ id +")";
		
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
	
		String sql = "INSERT INTO POST_COMMENT_TB (WRITER, CONTENT, POST_ID) VALUES(?, ?, ?)";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try
		{
			Class.forName(this.JDBC_DRIVER);
			conn = DriverManager.getConnection(this.JDBC_URL, this.DB_USER, this.DB_PASS);
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, comment.getWriter());
			pstmt.setString(2, comment.getContent());
			pstmt.setInt(3, comment.getPostId());
			
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
	
	
	
	public List<Comment> getCommentList(int postId)
	{	
		List<Comment> list = new ArrayList<>();
		
		String sql = "SELECT * FROM POST_COMMENT_TB WHERE POST_ID=?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try
		{
			Class.forName(this.JDBC_DRIVER);
			conn = DriverManager.getConnection(this.JDBC_URL, this.DB_USER, this.DB_PASS);
			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, postId);
			
			rs = pstmt.executeQuery();

			while(rs.next())
			{
				int id = rs.getInt("ID");
				String writer = rs.getString("WRITER");
				String content = rs.getString("CONTENT");
				Timestamp regdate = rs.getTimestamp("REGDATE");

				
				Comment comment = new Comment(id, writer, content, regdate, postId);
				
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
	
	
	public int getPostCount()
	{
		return getPostCount("title", "");
	}
	
	public int getPostCount(String category, String keyword)
	{
		int count = 0;
		
		String sql = "SELECT COUNT(ID) COUNT FROM"
				+ " ("
				+ "    SELECT ROWNUM NUM, P.* FROM"
				+ "    ("
				+ "        SELECT * FROM POST_TB WHERE " + category + " LIKE ? ORDER BY REGDATE DESC"
				+ "    ) P"
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
	
	public Post getPost(int id)
	{
		Post post = null;
		
		String sql = "SELECT * FROM POST_TB WHERE ID=?";
				
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
				
				post = new Post(nid, title, writer, content, regdate, files, hit, pub);
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
		
		return post;
	}
	
	public Post getNextPost(int id)
	{
		Post post = null;
		
		String sql = "SELECT * FROM POST_TB"
				+ " WHERE ID ="
				+ " ("
				+ "    SELECT ID FROM POST_TB"
				+ "    WHERE REGDATE >"
				+ "    ("
				+ "        SELECT REGDATE FROM POST_TB WHERE ID = ?"
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
				
				post = new Post(nid, title, writer, content, regdate, files, hit, pub);
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
		
		return post;
	}
	
	public Post getPrevPost(int id)
	{
		Post post = null;
		
		String sql = "SELECT * FROM POST_TB"
				+ " WHERE ID ="
				+ " ("
				+ "    SELECT ID FROM"
				+ "    ("
				+ "        SELECT * FROM POST_TB ORDER BY REGDATE DESC"
				+ "    )"
				+ "    WHERE REGDATE <"
				+ "    ("
				+ "        SELECT REGDATE FROM POST_TB WHERE ID = ?"
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
				
				post = new Post(nid, title, writer, content, regdate, files, hit, pub);
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
		
		return post;
	}

	public int deletePostAll(int[] deleteIds)
	{
		int result = 0;
		String ids = "";
		
		for(int i : deleteIds)
		{
			ids += (i+",");
		}
		ids = ids.substring(0, ids.length()-1);
		
		String sql = "DELETE POST_TB WHERE ID IN ("+ ids +")";
		
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