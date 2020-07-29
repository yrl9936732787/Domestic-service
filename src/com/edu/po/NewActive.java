package com.edu.po;

public class NewActive {
	private String id;//编号
	private String uid;//当前登录者账号
	private String uid_name;//当前登陆者姓名
	private String new_title;//发布的标题
	private String new_content;//发布内容
	private String publish_time;//发布时间
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public String getUid_name() {
		return uid_name;
	}
	public void setUid_name(String uid_name) {
		this.uid_name = uid_name;
	}
	public String getNew_title() {
		return new_title;
	}
	public void setNew_title(String new_title) {
		this.new_title = new_title;
	}
	public String getNew_content() {
		return new_content;
	}
	public void setNew_content(String new_content) {
		this.new_content = new_content;
	}
	public String getPublish_time() {
		return publish_time;
	}
	public void setPublish_time(String publish_time) {
		this.publish_time = publish_time;
	}
	@Override
	public String toString() {
		return "NewActive [id=" + id + ", uid=" + uid + ", uid_name="
				+ uid_name + ", new_title=" + new_title + ", new_content="
				+ new_content + ", publish_time=" + publish_time + "]";
	}
	
	


	

}
