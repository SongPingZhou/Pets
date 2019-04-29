package com.ysd.entity;



public class OrdersDetails {
	private int id;
	private int OrderId;
	private double UnitPrice;
	private int Quantity;
	private String Color;
	private String Remark;
	private int productId;
	private String Ext1;
	private User user;
	private Address address;
	private Orders orders;
	private Product product;
	private Productpic productpic;
	public OrdersDetails() {
		super();
		// TODO Auto-generated constructor stub
	}
	

	public OrdersDetails(int id, String ext1) {
		super();
		this.id = id;
		Ext1 = ext1;
	}


	public OrdersDetails(int id) {
		super();
		this.id = id;
	}


	public OrdersDetails(int orderId, String color, String remark, int productId) {
		super();
		OrderId = orderId;
		Color = color;
		Remark = remark;
		this.productId = productId;
	}

	public OrdersDetails(int orderId, String color, int productId) {
		super();
		OrderId = orderId;
		Color = color;
		this.productId = productId;
	}



	public OrdersDetails(int id, int orderId, double unitPrice, int quantity,
			String color, String remark, int productId, String ext1) {
		super();
		this.id = id;
		OrderId = orderId;
		UnitPrice = unitPrice;
		Quantity = quantity;
		Color = color;
		Remark = remark;
		this.productId = productId;
		Ext1 = ext1;
	}
	
	
	public Productpic getProductpic() {
		return productpic;
	}



	public void setProductpic(Productpic productpic) {
		this.productpic = productpic;
	}



	public Orders getOrders() {
		return orders;
	}
	public void setOrders(Orders orders) {
		this.orders = orders;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Address getAddress() {
		return address;
	}
	public void setAddress(Address address) {
		this.address = address;
	}
	public OrdersDetails(int id, int orderId, double unitPrice, int quantity,
			String color, String remark, int productId, String ext1,
			Product product) {
		super();
		this.id = id;
		OrderId = orderId;
		UnitPrice = unitPrice;
		Quantity = quantity;
		Color = color;
		Remark = remark;
		this.productId = productId;
		Ext1 = ext1;
		this.product = product;
	}
	
	
	
	
	
	
	@Override
	public String toString() {
		return "OrdersDetails [id=" + id + ", OrderId=" + OrderId
				+ ", UnitPrice=" + UnitPrice + ", Quantity=" + Quantity
				+ ", Color=" + Color + ", Remark=" + Remark + ", productId="
				+ productId + ", Ext1=" + Ext1 + ", user=" + user
				+ ", address=" + address + ", orders=" + orders + ", product="
				+ product + ", productpic=" + productpic + "]";
	}



	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getOrderId() {
		return OrderId;
	}
	public void setOrderId(int orderId) {
		OrderId = orderId;
	}
	public double getUnitPrice() {
		return UnitPrice;
	}
	public void setUnitPrice(double unitPrice) {
		UnitPrice = unitPrice;
	}
	public int getQuantity() {
		return Quantity;
	}
	public void setQuantity(int quantity) {
		Quantity = quantity;
	}
	public String getColor() {
		return Color;
	}
	public void setColor(String color) {
		Color = color;
	}
	public String getRemark() {
		return Remark;
	}
	public void setRemark(String remark) {
		Remark = remark;
	}
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public String getExt1() {
		return Ext1;
	}
	public void setExt1(String ext1) {
		Ext1 = ext1;
	}
	
	
}
