package com.edu.po;

public class Need {
	private String id;
	private String need_type;//服务类型
	private String need_username;//预约人
	private String need_phone;//联系电话
	private String need_address;//上门地址
	private String need_request;//额外需求
	private String need_date;//当时的预约订单时间
	private String need_state;//预约状态
	private String need_beizhu;//管理员处理备注
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getNeed_type() {
		return need_type;
	}
	public void setNeed_type(String need_type) {
		this.need_type = need_type;
	}
	public String getNeed_username() {
		return need_username;
	}
	public void setNeed_username(String need_username) {
		this.need_username = need_username;
	}
	public String getNeed_phone() {
		return need_phone;
	}
	public void setNeed_phone(String need_phone) {
		this.need_phone = need_phone;
	}
	public String getNeed_address() {
		return need_address;
	}
	public void setNeed_address(String need_address) {
		this.need_address = need_address;
	}
	public String getNeed_request() {
		return need_request;
	}
	public void setNeed_request(String need_request) {
		this.need_request = need_request;
	}
	public String getNeed_date() {
		return need_date;
	}
	public void setNeed_date(String need_date) {
		this.need_date = need_date;
	}
	public String getNeed_state() {
		return need_state;
	}
	public void setNeed_state(String need_state) {
		this.need_state = need_state;
	}
	public String getNeed_beizhu() {
		return need_beizhu;
	}
	public void setNeed_beizhu(String need_beizhu) {
		this.need_beizhu = need_beizhu;
	}
	@Override
	public String toString() {
		return "Need [id=" + id + ", need_type=" + need_type
				+ ", need_username=" + need_username + ", need_phone="
				+ need_phone + ", need_address=" + need_address
				+ ", need_request=" + need_request + ", need_date=" + need_date
				+ ", need_state=" + need_state + ", need_beizhu=" + need_beizhu
				+ "]";
	}
	
	

}
