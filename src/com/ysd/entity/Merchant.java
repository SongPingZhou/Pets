package com.ysd.entity;

public class Merchant {
	private int id;
	private String name;
	private int password;
	private String Ext1;
	private String Ext2;
	public Merchant() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Merchant(int id, String name, int password, String ext1, String ext2) {
		super();
		this.id = id;
		this.name = name;
		this.password = password;
		Ext1 = ext1;
		Ext2 = ext2;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPassword() {
		return password;
	}
	public void setPassword(int password) {
		this.password = password;
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
		return "Merchant [id=" + id + ", name=" + name + ", password="
				+ password + ", Ext1=" + Ext1 + ", Ext2=" + Ext2 + "]";
	}
	
}
