package com.ysd.entity;

public class Positions {
	private int id;
	private String position;
	private String Ext1;
	public Positions() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Positions(int id, String position, String ext1) {
		super();
		this.id = id;
		this.position = position;
		Ext1 = ext1;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getExt1() {
		return Ext1;
	}
	public void setExt1(String ext1) {
		Ext1 = ext1;
	}
	@Override
	public String toString() {
		return "Positions [id=" + id + ", position=" + position + ", Ext1="
				+ Ext1 + "]";
	}
	
	
	
	
}
