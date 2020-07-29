package com.edu.po;


public class Huser {
	private String id;
	private String password;
	private String username;
	private String userphone;
	private String usersex;
	private String useraddress;
	private String userintroduction;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getUserphone() {
		return userphone;
	}
	public void setUserphone(String userphone) {
		this.userphone = userphone;
	}
	public String getUsersex() {
		return usersex;
	}
	public void setUsersex(String usersex) {
		this.usersex = usersex;
	}
	public String getUseraddress() {
		return useraddress;
	}
	public void setUseraddress(String useraddress) {
		this.useraddress = useraddress;
	}
	public String getUserintroduction() {
		return userintroduction;
	}
	public void setUserintroduction(String userintroduction) {
		this.userintroduction = userintroduction;
	}
	@Override
	public String toString() {
		return "Huser [id=" + id + ", password=" + password + ", username="
				+ username + ", userphone=" + userphone + ", usersex="
				+ usersex + ", useraddress=" + useraddress
				+ ", userintroduction=" + userintroduction + "]";
	}
	

}
