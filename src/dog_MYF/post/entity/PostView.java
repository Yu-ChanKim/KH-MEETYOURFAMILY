package dog_MYF.post.entity;

import java.sql.Timestamp;

public class PostView extends Post
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

	public PostView(int id, String title, String writer, /*String content,*/ Timestamp regdate, String files, String hit, boolean pub, int commentCount)
	{
		super(id, title, writer, null, regdate, files, hit, pub);
		this.commentCount = commentCount;
	}
}