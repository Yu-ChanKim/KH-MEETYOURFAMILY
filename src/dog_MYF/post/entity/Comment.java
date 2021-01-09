package dog_MYF.post.entity;

import java.sql.Timestamp;

public class Comment
{
	private int id;
	private String writer;
	private String content;
	private Timestamp regdate;
	private int postId;
	
	public Comment()
	{
		
	}
	
	public Comment(int id, String writer, String content, Timestamp regdate, int postId)
	{
		this.id = id;
		this.writer = writer;
		this.content = content;
		this.regdate = regdate;
		this.postId = postId;
	}

	public int getId()
	{
		return id;
	}

	public void setId(int id)
	{
		this.id = id;
	}

	public String getWriter()
	{
		return writer;
	}

	public void setWriter(String writer)
	{
		this.writer = writer;
	}

	public String getContent()
	{
		return content.replace("\r\n", "<br>").replace(" ", "&nbsp;");
	}

	public void setContent(String content)
	{
		this.content = content;
	}
	
	public Timestamp getRegdate()
	{
		return regdate;
	}

	public void setRegdate(Timestamp regdate)
	{
		this.regdate = regdate;
	}
	
	public int getPostId()
	{
		return postId;
	}

	public void setPostId(int postId)
	{
		this.postId = postId;
	}
}
