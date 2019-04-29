package com.ysd.entity;

import java.io.Serializable;

public class User implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int id;
	private String username;
	private String userpassword;
	private String Ext1;
	private String Ext2;
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	


	public User(int id, String userpassword) {
		super();
		this.id = id;
		this.userpassword = userpassword;
	}



	

	

	public User(String username, String userpassword, String ext1) {
		super();
		this.username = username;
		this.userpassword = userpassword;
		Ext1 = ext1;
	}



	public User(String username) {
		super();
		this.username = username;
	}



	public User(String username, String userpassword) {
		super();
		this.username = username;
		this.userpassword = userpassword;
	}



	public User(int id, String username, String userpassword, String ext1,
			String ext2) {
		super();
		this.id = id;
		this.username = username;
		this.userpassword = userpassword;
		Ext1 = ext1;
		Ext2 = ext2;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", userpassword="
				+ userpassword + ", Ext1=" + Ext1 + ", Ext2=" + Ext2 + "]";
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getUserpassword() {
		return userpassword;
	}
	public void setUserpassword(String userpassword) {
		this.userpassword = userpassword;
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
	
}
