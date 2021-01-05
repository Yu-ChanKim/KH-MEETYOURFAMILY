package dog_MYF.post.entity;

import java.util.Date;

public class PostView extends Post
{
	private int commentCount;
	
	public int getcommentCount()
	{
		return commentCount;
	}

	public void setcommentCount(int commentCount)
	{
		this.commentCount = commentCount;
	}

	public PostView(int id, String title, String writer, /*String content,*/ Date regdate, String files, String hit, boolean pub, int commentCount)
	{
		super(id, title, writer, null, regdate, files, hit, pub);
		this.commentCount = commentCount;
	}
}