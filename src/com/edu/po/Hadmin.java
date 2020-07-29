package com.edu.po;

public class Hadmin {
	private String id;
	private String username;
	private String password;
	private String admin_time;
	private String admin_state;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getAdmin_time() {
		return admin_time;
	}
	public void setAdmin_time(String admin_time) {
		this.admin_time = admin_time;
	}
	public String getAdmin_state() {
		return admin_state;
	}
	public void setAdmin_state(String admin_state) {
		this.admin_state = admin_state;
	}
	@Override
	public String toString() {
		return "Hadmin [id=" + id + ", username=" + username + ", password="
				+ password + ", admin_time=" + admin_time + ", admin_state="
				+ admin_state + "]";
	}
	
	

}
