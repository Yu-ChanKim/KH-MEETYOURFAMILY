package dog_MYF.post.entity;

import java.util.Date;

public class Post
{
	private int id;
	private String title;
	private String writer;
	private String content;
	private Date regdate;
	private String files;
	private String hit;
	private boolean pub;
	
	public Post()
	{
		
	}
	
	public Post(int id, String title, String writer, String content, Date regdate, String files, String hit, boolean pub)
	{
		this.id = id;
		this.title = title;
		this.writer = writer;
		this.content = content;
		this.regdate = regdate;
		this.files = files;
		this.hit = hit;
		this.pub = pub;
	}

	public int getId()
	{
		return id;
	}

	public void setId(int id)
	{
		this.id = id;
	}

	public String getTitle()
	{
		return title;
	}

	public void setTitle(String title)
	{
		this.title = title;
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
	
	public Date getRegdate()
	{
		return regdate;
	}

	public void setRegdate(Date regdate)
	{
		this.regdate = regdate;
	}

	public String getHit()
	{
		return hit;
	}

	public void setHit(String hit)
	{
		this.hit = hit;
	}

	public String getFiles()
	{
		return files;
	}

	public void setFiles(String files)
	{
		this.files = files;
	}
	
	public boolean getPub()
	{
		return pub;
	}

	public void setPub(boolean pub)
	{
		this.pub = pub;
	}

	@Override
	public String toString() {
		return "Post [id=" + id + ", title=" + title + ", writer=" + writer + ", content=" + content + ", regdate="
				+ regdate + ", files=" + files + ", hit=" + hit + ", pub=" + pub + "]";
	}
}
