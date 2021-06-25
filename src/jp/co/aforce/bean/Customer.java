package jp.co.aforce.bean;

import java.io.Serializable;

public class Customer implements Serializable {

	private String member_no;
	private String password;


	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getMember_id() {
		return member_no;
	}

	public void setMember_id(String member_no) {
		this.member_no = member_no;
	}

}
