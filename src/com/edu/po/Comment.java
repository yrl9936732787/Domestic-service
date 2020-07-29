package com.edu.po;

public class Comment {
	private String id;
	private String uid;//用户id
	private String aid;//阿姨id
	private String uid_name;//用户id
	private String aid_name;//用户id
	private String comment_content;//评论内容
	private String comment_time;//评论时间
	private String comment_grade;//评论等级
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
	public String getAid() {
		return aid;
	}
	public void setAid(String aid) {
		this.aid = aid;
	}
	public String getUid_name() {
		return uid_name;
	}
	public void setUid_name(String uid_name) {
		this.uid_name = uid_name;
	}
	public String getAid_name() {
		return aid_name;
	}
	public void setAid_name(String aid_name) {
		this.aid_name = aid_name;
	}
	public String getComment_content() {
		return comment_content;
	}
	public void setComment_content(String comment_content) {
		this.comment_content = comment_content;
	}
	public String getComment_time() {
		return comment_time;
	}
	public void setComment_time(String comment_time) {
		this.comment_time = comment_time;
	}
	public String getComment_grade() {
		return comment_grade;
	}
	public void setComment_grade(String comment_grade) {
		this.comment_grade = comment_grade;
	}
	@Override
	public String toString() {
		return "Comment [id=" + id + ", uid=" + uid + ", aid=" + aid
				+ ", uid_name=" + uid_name + ", aid_name=" + aid_name
				+ ", comment_content=" + comment_content + ", comment_time="
				+ comment_time + ", comment_grade=" + comment_grade + "]";
	}
	
	

}
