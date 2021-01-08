package dog_MYF.notice.entity;

import java.sql.Timestamp;

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

	public NoticeView(int id, String title, String writer, /*String content,*/ Timestamp regdate, String files, String hit, boolean pub, int commentCount)
	{
		super(id, title, writer, null, regdate, files, hit, pub);
		this.commentCount = commentCount;
	}
}