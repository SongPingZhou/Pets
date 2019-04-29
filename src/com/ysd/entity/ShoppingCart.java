package com.ysd.entity;

import java.util.List;

public class ShoppingCart {
	private int id;
	private int userid;
	private int productId;
	private int size;
	private String Ext2;
	private Product  product;
	private Productpic productpic;
	
	public ShoppingCart() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ShoppingCart(int id, int userid, int productId, int size, String ext2) {
		super();
		this.id = id;
		this.userid = userid;
		this.productId = productId;
		this.size = size;
		Ext2 = ext2;
	}
	
	
	
	public ShoppingCart(int userid, int productId, int size, String ext2) {
		super();
		this.userid = userid;
		this.productId = productId;
		this.size = size;
		Ext2 = ext2;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public Productpic getProductpic() {
		return productpic;
	}
	public void setProductpic(Productpic productpic) {
		this.productpic = productpic;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public int getSize() {
		return size;
	}
	public void setSize(int size) {
		this.size = size;
	}
	public String getExt2() {
		return Ext2;
	}
	public void setExt2(String ext2) {
		Ext2 = ext2;
	}
	@Override
	public String toString() {
		return "ShoppingCart [id=" + id + ", userid=" + userid + ", productId="
				+ productId + ", size=" + size + ", Ext2=" + Ext2
				+ ", product=" + product + ", productpic=" + productpic + "]";
	}
	
	
}
