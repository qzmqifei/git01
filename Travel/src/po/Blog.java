package po;

import java.util.Date;

public class Blog {
	private Integer blogId;//日志主键
	private String btitle;//日志标题
	private String btext;//日志内容
	private Integer userId;//用户ID
	private Date pubTime;//日志发布时间
	private long contentNumber;//日志的评论数量
	
	
	public Integer getBlogId() {
		return blogId;
	}
	public void setBlogId(Integer blogId) {
		this.blogId = blogId;
	}
	public String getBtitle() {
		return btitle;
	}
	public void setBtitle(String btitle) {
		this.btitle = btitle;
	}
	public String getBtext() {
		return btext;
	}
	public void setBtext(String btext) {
		this.btext = btext;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public Date getPubTime() {
		return pubTime;
	}
	public void setPubTime(Date pubTime) {
		this.pubTime = pubTime;
	}
	public long getContentNumber() {
		return contentNumber;
	}
	public void setContentNumber(long contentNumber) {
		this.contentNumber = contentNumber;
	}
	
	
	
	
	
	
	
}
