package jp.co.aforce.bean;

import java.io.Serializable;

public class CartBean implements Serializable {

	private String cart_no;
	private String member_no;
	private String item_no;

	public String getCart_no() {
		return cart_no;
	}

	public void setCart_no(String cart_no) {
		this.cart_no = cart_no;
	}

	public String getMember_no() {
		return member_no;
	}

	public void setMember_no(String member_no) {
		this.member_no = member_no;
	}

	public String getItem_no() {
		return item_no;
	}

	public void setItem_no(String item_no) {
		this.item_no = item_no;
	}

}
