package com.ysd.entity;

import java.io.Serializable;

public class Productcategory implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int id;
	private String productCategoryName;
	private int ParentId;
	private String Ext1;
	private String Ext2;
	private String leiName;
	Productcategory() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Productcategory(int id, String productCategoryName) {
		super();
		this.id = id;
		this.productCategoryName = productCategoryName;
	}

	public Productcategory(int id, String productCategoryName, int parentId,
			String ext1, String ext2) {
		super();
		this.id = id;
		this.productCategoryName = productCategoryName;
		ParentId = parentId;
		Ext1 = ext1;
		Ext2 = ext2;
	}
	
	public String getLeiName() {
		return leiName;
	}

	public void setLeiName(String leiName) {
		this.leiName = leiName;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getProductCategoryName() {
		return productCategoryName;
	}
	public void setProductCategoryName(String productCategoryName) {
		this.productCategoryName = productCategoryName;
	}
	public int getParentId() {
		return ParentId;
	}
	public void setParentId(int parentId) {
		ParentId = parentId;
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
		return "Productcategory [id=" + id + ", productCategoryName="
				+ productCategoryName + ", ParentId=" + ParentId + ", Ext1="
				+ Ext1 + ", Ext2=" + Ext2 + "]";
	}
 
	
}
