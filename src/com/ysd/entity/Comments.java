package com.ysd.entity;



public class Comments {
	private int id;
	private int ProductId;
	private String CommentContent;
	private String CommenTime;
	private String bodyPrc;
	private int ProductMarks;
	private int ServiceMarks;
	private int Status;
	private int Reply;
	private String Ext1;
	private String Ext2;
	private User listUser;
	private Product listProduct;
	private Product product;
	private Productpic productpic;
	private User user;
	public Comments() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Comments(int id, String commentContent, String commenTime) {
		super();
		this.id = id;
		CommentContent = commentContent;
		CommenTime = commenTime;
	}

	public Comments(int id, int productId, String commentContent,
			String commenTime, String bodyPrc, int productMarks,
			int serviceMarks, int status, int reply, String ext1, String ext2) {
		super();
		this.id = id;
		ProductId = productId;
		CommentContent = commentContent;
		CommenTime = commenTime;
		this.bodyPrc = bodyPrc;
		ProductMarks = productMarks;
		ServiceMarks = serviceMarks;
		Status = status;
		Reply = reply;
		Ext1 = ext1;
		Ext2 = ext2;
	}
	
	
	public Comments(int productId, String commentContent, int productMarks,
			int status, int reply, String ext1) {
		super();
		ProductId = productId;
		CommentContent = commentContent;
		ProductMarks = productMarks;
		Status = status;
		Reply = reply;
		Ext1 = ext1;
	}
	//ÆÀÂÛÓÃµÄ
	public Comments(int productId, String commentContent, int productMarks,
			int serviceMarks, int status, int reply, String ext1) {
		super();
		ProductId = productId;
		CommentContent = commentContent;
		ProductMarks = productMarks;
		ServiceMarks = serviceMarks;
		Status = status;
		Reply = reply;
		Ext1 = ext1;
	}
	
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
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
	public User getListUser() {
		return listUser;
	}
	public void setListUser(User listUser) {
		this.listUser = listUser;
	}
	public Product getListProduct() {
		return listProduct;
	}
	public void setListProduct(Product listProduct) {
		this.listProduct = listProduct;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getProductId() {
		return ProductId;
	}
	public void setProductId(int productId) {
		ProductId = productId;
	}
	public String getCommentContent() {
		return CommentContent;
	}
	public void setCommentContent(String commentContent) {
		CommentContent = commentContent;
	}
	public String getCommenTime() {
		return CommenTime;
	}
	public void setCommenTime(String commenTime) {
		CommenTime = commenTime;
	}
	public String getBodyPrc() {
		return bodyPrc;
	}
	public void setBodyPrc(String bodyPrc) {
		this.bodyPrc = bodyPrc;
	}
	public int getProductMarks() {
		return ProductMarks;
	}
	public void setProductMarks(int productMarks) {
		ProductMarks = productMarks;
	}
	public int getServiceMarks() {
		return ServiceMarks;
	}
	public void setServiceMarks(int serviceMarks) {
		ServiceMarks = serviceMarks;
	}
	public int getStatus() {
		return Status;
	}
	public void setStatus(int status) {
		Status = status;
	}
	public int getReply() {
		return Reply;
	}
	public void setReply(int reply) {
		Reply = reply;
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
		return "Comments [id=" + id + ", ProductId=" + ProductId
				+ ", CommentContent=" + CommentContent + ", CommenTime="
				+ CommenTime + ", bodyPrc=" + bodyPrc + ", ProductMarks="
				+ ProductMarks + ", ServiceMarks=" + ServiceMarks + ", Status="
				+ Status + ", Reply=" + Reply + ", Ext1=" + Ext1 + ", Ext2="
				+ Ext2 + ", listUser=" + listUser + ", listProduct="
				+ listProduct + ", product=" + product + ", productpic="
				+ productpic + "]";
	}
	
	
	
}
