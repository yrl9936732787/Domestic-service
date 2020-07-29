package com.edu.po;

public class NewActiveReply {
	private String id;//编号
	private String rid;//回复者者账号
	private String rid_name;//回复者姓名
	private String reply_time;//回复时间
	private String reply_content;//回复内容
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getRid() {
		return rid;
	}
	public void setRid(String rid) {
		this.rid = rid;
	}
	public String getRid_name() {
		return rid_name;
	}
	public void setRid_name(String rid_name) {
		this.rid_name = rid_name;
	}
	public String getReply_time() {
		return reply_time;
	}
	public void setReply_time(String reply_time) {
		this.reply_time = reply_time;
	}
	public String getReply_content() {
		return reply_content;
	}
	public void setReply_content(String reply_content) {
		this.reply_content = reply_content;
	}
	@Override
	public String toString() {
		return "NewActiveReply [id=" + id + ", rid=" + rid + ", rid_name="
				+ rid_name + ", reply_time=" + reply_time + ", reply_content="
				+ reply_content + "]";
	}
	
	

}
