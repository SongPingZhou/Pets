package com.ysd.entity;

public class Productstore {
	private int id;
	private int ProductPicId;
	private int QuantityInStock;
	private int MerchantId;
	private String Size;
	private String Ext2;
	private Productcategory productcategory;
	private Product product;
	private Productpic productpic;
	public Productstore() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Productstore(int id,int productPicId, int quantityInStock) {
		super();
		this.id = id;
		ProductPicId = productPicId;
		QuantityInStock = quantityInStock;
	}

	public Productstore(int id, int productPicId, int quantityInStock,
			int merchantId, String size, String ext2) {
		super();
		this.id = id;
		ProductPicId = productPicId;
		QuantityInStock = quantityInStock;
		MerchantId = merchantId;
		Size = size;
		Ext2 = ext2;
	}
	
	public Productcategory getProductcategory() {
		return productcategory;
	}
	public void setProductcategory(Productcategory productcategory) {
		this.productcategory = productcategory;
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
	public int getProductPicId() {
		return ProductPicId;
	}
	public void setProductPicId(int productPicId) {
		ProductPicId = productPicId;
	}
	public int getQuantityInStock() {
		return QuantityInStock;
	}
	public void setQuantityInStock(int quantityInStock) {
		QuantityInStock = quantityInStock;
	}
	public int getMerchantId() {
		return MerchantId;
	}
	public void setMerchantId(int merchantId) {
		MerchantId = merchantId;
	}
	public String getSize() {
		return Size;
	}
	public void setSize(String size) {
		Size = size;
	}
	public String getExt2() {
		return Ext2;
	}
	public void setExt2(String ext2) {
		Ext2 = ext2;
	}
	@Override
	public String toString() {
		return "Productstore [id=" + id + ", ProductPicId=" + ProductPicId
				+ ", QuantityInStock=" + QuantityInStock + ", MerchantId="
				+ MerchantId + ", Size=" + Size + ", Ext2=" + Ext2
				+ ", productcategory=" + productcategory + ", product="
				+ product + ", productpic=" + productpic + "]";
	}
	
	
}
