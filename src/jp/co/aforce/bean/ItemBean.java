package jp.co.aforce.bean;

import java.io.Serializable;

public class ItemBean implements Serializable {

	private String item_no;
	private String item_name;
	private String item_size;
	private String color;
	private int price;

	public String getItem_no() {
		return item_no;
	}

	public void setItem_no(String item_no) {
		this.item_no = item_no;
	}

	public String getItem_name() {
		return item_name;
	}

	public void setItem_name(String item_name) {
		this.item_name = item_name;
	}

	public String getItem_size() {
		return item_size;
	}

	public void setItem_size(String item_size) {
		this.item_size = item_size;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

}
