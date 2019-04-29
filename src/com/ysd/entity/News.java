package com.ysd.entity;

public class News {
	private int nid;
	private String name;
	private String details;
	private String ntime;
	private int pid;
	private int reading;
	private String Ext1;
	private int Ext2;
	private Productpic productpic;
	private Product product;
	public News() {
		super();
		// TODO Auto-generated constructor stub
	}
	public News(int nid, String name, String details, String ntime, int pid,
			int reading, String ext1, int ext2, Productpic productpic,
			Product product) {
		super();
		this.nid = nid;
		this.name = name;
		this.details = details;
		this.ntime = ntime;
		this.pid = pid;
		this.reading = reading;
		Ext1 = ext1;
		Ext2 = ext2;
		this.productpic = productpic;
		this.product = product;
	}
	@Override
	public String toString() {
		return "News [nid=" + nid + ", name=" + name + ", details=" + details
				+ ", ntime=" + ntime + ", pid=" + pid + ", reading=" + reading
				+ ", Ext1=" + Ext1 + ", Ext2=" + Ext2 + ", productpic="
				+ productpic + ", product=" + product + "]";
	}
	public int getNid() {
		return nid;
	}
	public void setNid(int nid) {
		this.nid = nid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDetails() {
		return details;
	}
	public void setDetails(String details) {
		this.details = details;
	}
	public String getNtime() {
		return ntime;
	}
	public void setNtime(String ntime) {
		this.ntime = ntime;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public int getReading() {
		return reading;
	}
	public void setReading(int reading) {
		this.reading = reading;
	}
	public String getExt1() {
		return Ext1;
	}
	public void setExt1(String ext1) {
		Ext1 = ext1;
	}
	public int getExt2() {
		return Ext2;
	}
	public void setExt2(int ext2) {
		Ext2 = ext2;
	}
	public Productpic getProductpic() {
		return productpic;
	}
	public void setProductpic(Productpic productpic) {
		this.productpic = productpic;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	
}
