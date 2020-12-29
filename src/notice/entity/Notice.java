package notice.entity;

import java.util.Date;

public class Notice
{
	private int id;
	private String title;
	private String writer;
	private Date regdate;
	private String files;
	private String hit;
	private String content;
	
	public Notice(int id, String title, String writer, Date regdate, String files, String hit, String content)
	{
		this.id = id;
		this.title = title;
		this.writer = writer;
		this.regdate = regdate;
		this.files = files;
		this.hit = hit;
		this.content = content;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public String getHit() {
		return hit;
	}

	public void setHit(String hit) {
		this.hit = hit;
	}

	public String getFiles() {
		return files;
	}

	public void setFiles(String files) {
		this.files = files;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	@Override
	public String toString() {
		return "Notice [id=" + id + ", title=" + title + ", writer=" + writer + ", regdate=" + regdate + ", hit=" + hit
				+ ", files=" + files + ", content=" + content + "]";
	}
}
