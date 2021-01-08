package dog_MYF.notice.entity;

import java.sql.Timestamp;

public class Comment
{
	private int id;
	private String writer;
	private String content;
	private Timestamp regdate;
	private int noticeId;
	
	public Comment()
	{
		
	}
	
	public Comment(int id, String writer, String content, Timestamp regdate, int noticeId)
	{
		this.id = id;
		this.writer = writer;
		this.content = content;
		this.regdate = regdate;
		this.noticeId = noticeId;
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
		return content;
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
	
	public int getNoticeId()
	{
		return noticeId;
	}

	public void setNoticeId(int noticeId)
	{
		this.noticeId = noticeId;
	}
}
