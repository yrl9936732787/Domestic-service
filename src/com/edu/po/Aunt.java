package com.edu.po;

import org.springframework.web.multipart.MultipartFile;

public class Aunt {
	private String id;
	private String image;
	private String aunt_name;
	private String aunt_sex;
	private String aunt_age;
	private String aunt_type;
	private String aunt_phone;
	private String aunt_idcard;
	private String aunt_introduce;
	private String aunt_state;
	
	private MultipartFile file;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getAunt_name() {
		return aunt_name;
	}

	public void setAunt_name(String aunt_name) {
		this.aunt_name = aunt_name;
	}

	public String getAunt_sex() {
		return aunt_sex;
	}

	public void setAunt_sex(String aunt_sex) {
		this.aunt_sex = aunt_sex;
	}

	public String getAunt_age() {
		return aunt_age;
	}

	public void setAunt_age(String aunt_age) {
		this.aunt_age = aunt_age;
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

	public String getAunt_introduce() {
		return aunt_introduce;
	}

	public void setAunt_introduce(String aunt_introduce) {
		this.aunt_introduce = aunt_introduce;
	}

	public String getAunt_state() {
		return aunt_state;
	}

	public void setAunt_state(String aunt_state) {
		this.aunt_state = aunt_state;
	}

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}

	@Override
	public String toString() {
		return "Aunt [id=" + id + ", image=" + image + ", aunt_name="
				+ aunt_name + ", aunt_sex=" + aunt_sex + ", aunt_age="
				+ aunt_age + ", aunt_type=" + aunt_type + ", aunt_phone="
				+ aunt_phone + ", aunt_idcard=" + aunt_idcard
				+ ", aunt_introduce=" + aunt_introduce + ", aunt_state="
				+ aunt_state + ", file=" + file + "]";
	}

	
	
}
