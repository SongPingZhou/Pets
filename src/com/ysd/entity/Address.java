package com.ysd.entity;

public class Address {
	private int id;
	private int userid;
	private String name;
	private int contact;
	private String tel;
	private String country;
	private String province;
	private String city;
	private String town;
	private String Address;
	private String postcode;
	private String Ext1;
	private User user;
	public Address() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Address(int userid, String tel) {
		super();
		this.userid = userid;
		this.tel = tel;
	}

	public Address(int id, int userid, String name, int contact, String tel,
			String country, String province, String city, String town,
			String address, String postcode, String ext1) {
		super();
		this.id = id;
		this.userid = userid;
		this.name = name;
		this.contact = contact;
		this.tel = tel;
		this.country = country;
		this.province = province;
		this.city = city;
		this.town = town;
		Address = address;
		this.postcode = postcode;
		Ext1 = ext1;
	}
	
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getContact() {
		return contact;
	}
	public void setContact(int contact) {
		this.contact = contact;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getProvince() {
		return province;
	}
	public void setProvince(String province) {
		this.province = province;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getTown() {
		return town;
	}
	public void setTown(String town) {
		this.town = town;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	public String getPostcode() {
		return postcode;
	}
	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}
	public String getExt1() {
		return Ext1;
	}
	public void setExt1(String ext1) {
		Ext1 = ext1;
	}

	@Override
	public String toString() {
		return "Address [id=" + id + ", userid=" + userid + ", name=" + name
				+ ", contact=" + contact + ", tel=" + tel + ", country="
				+ country + ", province=" + province + ", city=" + city
				+ ", town=" + town + ", Address=" + Address + ", postcode="
				+ postcode + ", Ext1=" + Ext1 + ", user=" + user + "]";
	}
	
}
