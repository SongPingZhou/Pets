package com.ysd.entity;

public class HotSearch {
	private int id;
	private String body;
	private int userid;
	private String Ext1;
	private String Ext2;
	public HotSearch() {
		super();
		// TODO Auto-generated constructor stub
	}
	public HotSearch(int id, String body, int userid, String ext1, String ext2) {
		super();
		this.id = id;
		this.body = body;
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
	public String getBody() {
		return body;
	}
	public void setBody(String body) {
		this.body = body;
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
	public String getExt2() {
		return Ext2;
	}
	public void setExt2(String ext2) {
		Ext2 = ext2;
	}
	@Override
	public String toString() {
		return "HotSearch [id=" + id + ", body=" + body + ", userid=" + userid
				+ ", Ext1=" + Ext1 + ", Ext2=" + Ext2 + "]";
	}
	
}
