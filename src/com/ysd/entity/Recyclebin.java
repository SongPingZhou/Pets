package com.ysd.entity;

public class Recyclebin {
	private int id;
	private int CategoryId;
	private String productName;
	private double UnitPrice;
	private double SellPrice;
	private double DiscountPrice;
	private int QuantityPerUnit;
	private int clicks;
	private String weight;
	private String Size;
	private String color;
	private String Description;
	private String Ext1;
	private String Ext2;
	public Recyclebin() {
		super();
		// TODO Auto-generated constructor stub
	}
	Recyclebin(int id, int categoryId, String productName, double unitPrice,
			double sellPrice, double discountPrice, int quantityPerUnit,
			int clicks, String weight, String size, String color,
			String description, String ext1, String ext2) {
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
	public double getUnitPrice() {
		return UnitPrice;
	}
	public void setUnitPrice(double unitPrice) {
		UnitPrice = unitPrice;
	}
	public double getSellPrice() {
		return SellPrice;
	}
	public void setSellPrice(double sellPrice) {
		SellPrice = sellPrice;
	}
	public double getDiscountPrice() {
		return DiscountPrice;
	}
	public void setDiscountPrice(double discountPrice) {
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
	@Override
	public String toString() {
		return "Recycle [id=" + id + ", CategoryId=" + CategoryId
				+ ", productName=" + productName + ", UnitPrice=" + UnitPrice
				+ ", SellPrice=" + SellPrice + ", DiscountPrice="
				+ DiscountPrice + ", QuantityPerUnit=" + QuantityPerUnit
				+ ", clicks=" + clicks + ", weight=" + weight + ", Size="
				+ Size + ", color=" + color + ", Description=" + Description
				+ ", Ext1=" + Ext1 + ", Ext2=" + Ext2 + "]";
	}
	
}
