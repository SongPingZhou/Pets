package com.ysd.entity;

import java.util.List;

public class Product {
	private int id;
	private int CategoryId;
	private String productName;
	private String picUrl;
	private Float UnitPrice;
	private Float SellPrice;
	private Float DiscountPrice;
	private int QuantityPerUnit;
	private int clicks;
	private String weight;
	private String Size;
	private String color;
	private String Description;
	private String Ext1;
	private String Ext2;
	private Positions positions;
	private Resposition resposition;
	private Productpic pro;
	private List<Productpic> listPro;
	private Comments comments;
	private String manyidu;//唯一维护的用户满意度字段
	public Product() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	

	

	public Product(int id, int categoryId, String productName, Float sellPrice,
			String size) {
		super();
		this.id = id;
		CategoryId = categoryId;
		this.productName = productName;
		SellPrice = sellPrice;
		Size = size;
	}



	

	public String getManyidu() {
		return manyidu;
	}





	public void setManyidu(String manyidu) {
		this.manyidu = manyidu;
	}





	public Product(int categoryId, String productName) {
		super();
		CategoryId = categoryId;
		this.productName = productName;
	}





	public Product(int id, int categoryId, String productName, Float unitPrice,
			Float sellPrice, Float discountPrice, int quantityPerUnit,
			int clicks, String weight, String size, String color,
			String description, String ext1, String ext2, Productpic pro,
			List<Productpic> listPro, Comments comments) {
		super();
		this.id = id;
		CategoryId = categoryId;
		this.productName = productName;
		UnitPrice = unitPrice;
		SellPrice = sellPrice;
		DiscountPrice = discountPrice;
		QuantityPerUnit = quantityPerUnit;
		this.clicks = clicks;
		this.weight = weight;
		Size = size;
		this.color = color;
		Description = description;
		Ext1 = ext1;
		Ext2 = ext2;
		this.pro = pro;
		this.listPro = listPro;
		this.comments = comments;
	}
	public Product(int id, int categoryId, String productName, String picUrl,
			Float unitPrice, Float sellPrice, Float discountPrice,
			int quantityPerUnit, int clicks, String weight, String size,
			String color, String description, String ext1, String ext2) {
		super();
		this.id = id;
		CategoryId = categoryId;
		this.productName = productName;
		this.picUrl = picUrl;
		UnitPrice = unitPrice;
		SellPrice = sellPrice;
		DiscountPrice = discountPrice;
		QuantityPerUnit = quantityPerUnit;
		this.clicks = clicks;
		this.weight = weight;
		Size = size;
		this.color = color;
		Description = description;
		Ext1 = ext1;
		Ext2 = ext2;
	}
	public Product(int id, int categoryId, String productName, Float unitPrice,
			Float sellPrice, Float discountPrice, int quantityPerUnit, int clicks,
			String weight, String size, String color, String description,
			String ext1, String ext2) {
		super();
		this.id = id;
		CategoryId = categoryId;
		this.productName = productName;
		UnitPrice = unitPrice;
		SellPrice = sellPrice;
		DiscountPrice = discountPrice;
		QuantityPerUnit = quantityPerUnit;
		this.clicks = clicks;
		this.weight = weight;
		Size = size;
		this.color = color;
		Description = description;
		Ext1 = ext1;
		Ext2 = ext2;
	}
	
	public Positions getPositions() {
		return positions;
	}
	public void setPositions(Positions positions) {
		this.positions = positions;
	}
	public Resposition getResposition() {
		return resposition;
	}
	public void setResposition(Resposition resposition) {
		this.resposition = resposition;
	}
	public String getPicUrl() {
		return picUrl;
	}
	public void setPicUrl(String picUrl) {
		this.picUrl = picUrl;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getCategoryId() {
		return CategoryId;
	}
	public void setCategoryId(int categoryId) {
		CategoryId = categoryId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public Float getUnitPrice() {
		return UnitPrice;
	}
	public void setUnitPrice(Float unitPrice) {
		UnitPrice = unitPrice;
	}
	public Float getSellPrice() {
		return SellPrice;
	}
	public void setSellPrice(Float sellPrice) {
		SellPrice = sellPrice;
	}
	public Float getDiscountPrice() {
		return DiscountPrice;
	}
	public void setDiscountPrice(Float discountPrice) {
		DiscountPrice = discountPrice;
	}
	public int getQuantityPerUnit() {
		return QuantityPerUnit;
	}
	public void setQuantityPerUnit(int quantityPerUnit) {
		QuantityPerUnit = quantityPerUnit;
	}
	public int getClicks() {
		return clicks;
	}
	public void setClicks(int clicks) {
		this.clicks = clicks;
	}
	public String getWeight() {
		return weight;
	}
	public void setWeight(String weight) {
		this.weight = weight;
	}
	public String getSize() {
		return Size;
	}
	public void setSize(String size) {
		Size = size;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getDescription() {
		return Description;
	}
	public void setDescription(String description) {
		Description = description;
	}
	public String getExt1() {
		return Ext1;
	}
	public void setExt1(String ext1) {
		Ext1 = ext1;
	}
	public String getExt2() {
		return Ext2;
	}
	public void setExt2(String ext2) {
		Ext2 = ext2;
	}
	public Productpic getPro() {
		return pro;
	}
	public void setPro(Productpic pro) {
		this.pro = pro;
	}
	public List<Productpic> getListPro() {
		return listPro;
	}
	public void setListPro(List<Productpic> listPro) {
		this.listPro = listPro;
	}
	public Comments getComments() {
		return comments;
	}
	public void setComments(Comments comments) {
		this.comments = comments;
	}





	@Override
	public String toString() {
		return "Product [id=" + id + ", CategoryId=" + CategoryId
				+ ", productName=" + productName + ", picUrl=" + picUrl
				+ ", UnitPrice=" + UnitPrice + ", SellPrice=" + SellPrice
				+ ", DiscountPrice=" + DiscountPrice + ", QuantityPerUnit="
				+ QuantityPerUnit + ", clicks=" + clicks + ", weight=" + weight
				+ ", Size=" + Size + ", color=" + color + ", Description="
				+ Description + ", Ext1=" + Ext1 + ", Ext2=" + Ext2
				+ ", positions=" + positions + ", resposition=" + resposition
				+ ", pro=" + pro + ", listPro=" + listPro + ", comments="
				+ comments + ", manyidu=" + manyidu + "]";
	}

	
	
}
