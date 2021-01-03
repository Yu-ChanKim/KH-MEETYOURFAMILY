package notice.entity;

import java.util.Date;

public class NoticeView extends Notice
{
	private int commentCount;
	
	public int getCommentCount()
	{
		return commentCount;
	}

	public void setCommentCount(int commentCount)
	{
		this.commentCount = commentCount;
	}

	public NoticeView(int id, String title, String writer, Date regdate, String files, String hit, /*String content,*/ boolean pub, int commentCount)
	{
		super(id, title, writer, regdate, files, hit, null, pub);
		this.commentCount = commentCount;
	}
}