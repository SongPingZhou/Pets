package com.ysd.entity;

public class Lately {
	private int id;
	private int productid;
	private int userid;
	private String Ext1;
	private int Ext2;
	private Product product;
	private Productpic productpic;
	
	public Productpic getProductpic() {
		return productpic;
	}



	public void setProductpic(Productpic productpic) {
		this.productpic = productpic;
	}


	public Lately() {
		super();
	}

	
	public Product getProduct() {
		return product;
	}


	public void setProduct(Product product) {
		this.product = product;
	}


	public Lately(int id, int productid, int userid, String ext1, int ext2,
			Product product) {
		super();
		this.id = id;
		this.productid = productid;
		this.userid = userid;
		Ext1 = ext1;
		Ext2 = ext2;
		this.product = product;
	}


	public Lately(int productid, int userid) {
		super();
		this.productid = productid;
		this.userid = userid;
	}


	public Lately(int id, int productid, int userid, String ext1, int ext2) {
		super();
		this.id = id;
		this.productid = productid;
		this.userid = userid;
		Ext1 = ext1;
		Ext2 = ext2;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public int getProductid() {
		return productid;
	}


	


	public void setProductid(int productid) {
		this.productid = productid;
	}


	public Lately(int productid) {
		super();
		this.productid = productid;
	}


	public int getUserid() {
		return userid;
	}


	public void setUserid(int userid) {
		this.userid = userid;
	}


	public String getExt1() {
		return Ext1;
	}


	public void setExt1(String ext1) {
		Ext1 = ext1;
	}


	public int getExt2() {
		return Ext2;
	}


	public void setExt2(int ext2) {
		Ext2 = ext2;
	}


	@Override
	public String toString() {
		return "Lately [id=" + id + ", productid=" + productid + ", userid="
				+ userid + ", Ext1=" + Ext1 + ", Ext2=" + Ext2 + "]";
	}
	
}
