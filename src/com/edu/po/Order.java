package com.edu.po;

public class Order {
	//10个类
	private String oid;
	private String uid;
	private String auntid;
	private String user_signature;//用户签名，甲方
	private String aunt_signature;//家政签名，乙方
	private String work_begin;//服务开始时间
	private String work_end;//服务结束时间
	private String dangqian_work_begin;//客户开始时预约的时间
	private String dangqian_work_end;//客户结束时预约的时间
	private String money;
	private String hetong_content;//合同内容
	private String order_time;//订单创建时间
	
	//用户信息，甲方，5个类
	private String user_name;
	private String user_idcard;
	private String user_phone;
	private String user_address;
	private String user_signdate;//签订日期
		
	//阿姨信息，乙方，7个类
	private String aunt_name;
	private String aunt_image;
	private String aunt_type;
	private String aunt_phone;
	private String aunt_idcard;
	private String aunt_state;//订单状态、家政人员状态
	private String aunt_signdate;//乙方签订日期
	
	//评论状态
	private String order_commentState;

	public String getOid() {
		return oid;
	}

	public void setOid(String oid) {
		this.oid = oid;
	}

	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public String getAuntid() {
		return auntid;
	}

	public void setAuntid(String auntid) {
		this.auntid = auntid;
	}

	public String getUser_signature() {
		return user_signature;
	}

	public void setUser_signature(String user_signature) {
		this.user_signature = user_signature;
	}

	public String getAunt_signature() {
		return aunt_signature;
	}

	public void setAunt_signature(String aunt_signature) {
		this.aunt_signature = aunt_signature;
	}

	public String getWork_begin() {
		return work_begin;
	}

	public void setWork_begin(String work_begin) {
		this.work_begin = work_begin;
	}

	public String getWork_end() {
		return work_end;
	}

	public void setWork_end(String work_end) {
		this.work_end = work_end;
	}

	public String getDangqian_work_begin() {
		return dangqian_work_begin;
	}

	public void setDangqian_work_begin(String dangqian_work_begin) {
		this.dangqian_work_begin = dangqian_work_begin;
	}

	public String getDangqian_work_end() {
		return dangqian_work_end;
	}

	public void setDangqian_work_end(String dangqian_work_end) {
		this.dangqian_work_end = dangqian_work_end;
	}

	public String getMoney() {
		return money;
	}

	public void setMoney(String money) {
		this.money = money;
	}

	public String getHetong_content() {
		return hetong_content;
	}

	public void setHetong_content(String hetong_content) {
		this.hetong_content = hetong_content;
	}

	public String getOrder_time() {
		return order_time;
	}

	public void setOrder_time(String order_time) {
		this.order_time = order_time;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_idcard() {
		return user_idcard;
	}

	public void setUser_idcard(String user_idcard) {
		this.user_idcard = user_idcard;
	}

	public String getUser_phone() {
		return user_phone;
	}

	public void setUser_phone(String user_phone) {
		this.user_phone = user_phone;
	}

	public String getUser_address() {
		return user_address;
	}

	public void setUser_address(String user_address) {
		this.user_address = user_address;
	}

	public String getUser_signdate() {
		return user_signdate;
	}

	public void setUser_signdate(String user_signdate) {
		this.user_signdate = user_signdate;
	}

	public String getAunt_name() {
		return aunt_name;
	}

	public void setAunt_name(String aunt_name) {
		this.aunt_name = aunt_name;
	}

	public String getAunt_image() {
		return aunt_image;
	}

	public void setAunt_image(String aunt_image) {
		this.aunt_image = aunt_image;
	}

	public String getAunt_type() {
		return aunt_type;
	}

	public void setAunt_type(String aunt_type) {
		this.aunt_type = aunt_type;
	}

	public String getAunt_phone() {
		return aunt_phone;
	}

	public void setAunt_phone(String aunt_phone) {
		this.aunt_phone = aunt_phone;
	}

	public String getAunt_idcard() {
		return aunt_idcard;
	}

	public void setAunt_idcard(String aunt_idcard) {
		this.aunt_idcard = aunt_idcard;
	}

	public String getAunt_state() {
		return aunt_state;
	}

	public void setAunt_state(String aunt_state) {
		this.aunt_state = aunt_state;
	}

	public String getAunt_signdate() {
		return aunt_signdate;
	}

	public void setAunt_signdate(String aunt_signdate) {
		this.aunt_signdate = aunt_signdate;
	}

	public String getOrder_commentState() {
		return order_commentState;
	}

	public void setOrder_commentState(String order_commentState) {
		this.order_commentState = order_commentState;
	}

	@Override
	public String toString() {
		return "Order [oid=" + oid + ", uid=" + uid + ", auntid=" + auntid
				+ ", user_signature=" + user_signature + ", aunt_signature="
				+ aunt_signature + ", work_begin=" + work_begin + ", work_end="
				+ work_end + ", dangqian_work_begin=" + dangqian_work_begin
				+ ", dangqian_work_end=" + dangqian_work_end + ", money="
				+ money + ", hetong_content=" + hetong_content
				+ ", order_time=" + order_time + ", user_name=" + user_name
				+ ", user_idcard=" + user_idcard + ", user_phone=" + user_phone
				+ ", user_address=" + user_address + ", user_signdate="
				+ user_signdate + ", aunt_name=" + aunt_name + ", aunt_image="
				+ aunt_image + ", aunt_type=" + aunt_type + ", aunt_phone="
				+ aunt_phone + ", aunt_idcard=" + aunt_idcard + ", aunt_state="
				+ aunt_state + ", aunt_signdate=" + aunt_signdate
				+ ", order_commentState=" + order_commentState + "]";
	}

	
	
	
	

}
