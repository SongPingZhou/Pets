package com.ysd.entity;



public class Productpic {
	private int id;
	private int productId;
	private String picUrl;
	private int PicType;
	private String creaTime;
	private String color;
	private String Ext2;
	private Product product;
	private Productstore productstore;
	
 


	public Productpic(int id, int productId, String picUrl) {
		super();
		this.id = id;
		this.productId = productId;
		this.picUrl = picUrl;
	}

	




	public Productpic(int id, String picUrl, int picType) {
		super();
		this.id = id;
		this.picUrl = picUrl;
		PicType = picType;
	}






	public Productpic(int productId, String picUrl) {
		super();
		this.productId = productId;
		this.picUrl = picUrl;
	}



	public Productpic(int id,int productId, String picUrl, int picType, String creaTime) {
		super();
		this.id = id;
		this.productId = productId;
		this.picUrl = picUrl;
		PicType = picType;
		this.creaTime = creaTime;
	}



	public Productpic(String picUrl) {
		super();
		this.picUrl = picUrl;
	}

	

	public Productpic() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Productpic(int id, int productId, String picUrl, int picType) {
		super();
		this.id = id;
		this.productId = productId;
		this.picUrl = picUrl;
		PicType = picType;
	}

	public Productpic(int id, int productId, String picUrl, int picType,
			String creaTime, String color, String ext2) {
		super();
		this.id = id;
		this.productId = productId;
		this.picUrl = picUrl;
		PicType = picType;
		this.creaTime = creaTime;
		this.color = color;
		Ext2 = ext2;
	}
	
	public Productpic(int productId, String picUrl, String color) {
		super();
		this.productId = productId;
		this.picUrl = picUrl;
		this.color = color;
	}
	
	
	public Productstore getProductstore() {
		return productstore;
	}






	public void setProductstore(Productstore productstore) {
		this.productstore = productstore;
	}






	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public String getPicUrl() {
		return picUrl;
	}
	public void setPicUrl(String picUrl) {
		this.picUrl = picUrl;
	}
	public int getPicType() {
		return PicType;
	}
	public void setPicType(int picType) {
		PicType = picType;
	}
	public String getCreaTime() {
		return creaTime;
	}
	public void setCreaTime(String creaTime) {
		this.creaTime = creaTime;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getExt2() {
		return Ext2;
	}
	public void setExt2(String ext2) {
		Ext2 = ext2;
	}






	@Override
	public String toString() {
		return "Productpic [id=" + id + ", productId=" + productId
				+ ", picUrl=" + picUrl + ", PicType=" + PicType + ", creaTime="
				+ creaTime + ", color=" + color + ", Ext2=" + Ext2
				+ ", product=" + product + ", productstore=" + productstore
				+ "]";
	}





	
	
	
}
