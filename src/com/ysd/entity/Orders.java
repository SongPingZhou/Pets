package com.ysd.entity;


public class Orders {
	private int id;
	private String OrderDate;
	private int CustomerId;
	private double TotalMoney;
	private String Status;
	private String ShipName;
	private String ShipNum;
	private String ShipDate;
	private String ShipCountry;
	private String ShipProvince;
	private String ShipCity;
	private String ShipTown;
	private String ShipAddress;
	private String ShipPostCode;
	private String Ext2;
	private User user;
	private OrdersDetails orderDetails;
	private Address address;
	private Product product;
	private Productpic pro;
	
	
	public Productpic getPro() {
		return pro;
	}

	public void setPro(Productpic pro) {
		this.pro = pro;
	}

	public Orders() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Orders(int id, String status) {
		super();
		this.id = id;
		Status = status;
	}

	public Orders(String orderDate, int customerId, double totalMoney,
			String status, String shipName, String shipNum, String shipDate,
			String shipCountry, String shipProvince, String shipCity,
			String shipTown, String shipAddress, String shipPostCode,
			String ext2) {
		super();
		OrderDate = orderDate;
		CustomerId = customerId;
		TotalMoney = totalMoney;
		Status = status;
		ShipName = shipName;
		ShipNum = shipNum;
		ShipDate = shipDate;
		ShipCountry = shipCountry;
		ShipProvince = shipProvince;
		ShipCity = shipCity;
		ShipTown = shipTown;
		ShipAddress = shipAddress;
		ShipPostCode = shipPostCode;
		Ext2 = ext2;
	}

	public Orders(int id, String orderDate, int customerId, double totalMoney,
			String status, String shipName, String shipNum, String shipDate,
			String shipCountry, String shipProvince, String shipCity,
			String shipTown, String shipAddress, String shipPostCode,
			String ext2) {
		super();
		this.id = id;
		OrderDate = orderDate;
		CustomerId = customerId;
		TotalMoney = totalMoney;
		Status = status;
		ShipName = shipName;
		ShipNum = shipNum;
		ShipDate = shipDate;
		ShipCountry = shipCountry;
		ShipProvince = shipProvince;
		ShipCity = shipCity;
		ShipTown = shipTown;
		ShipAddress = shipAddress;
		ShipPostCode = shipPostCode;
		Ext2 = ext2;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getOrderDate() {
		return OrderDate;
	}
	public void setOrderDate(String orderDate) {
		OrderDate = orderDate;
	}
	public int getCustomerId() {
		return CustomerId;
	}
	public void setCustomerId(int customerId) {
		CustomerId = customerId;
	}
	public double getTotalMoney() {
		return TotalMoney;
	}
	public void setTotalMoney(double totalMoney) {
		TotalMoney = totalMoney;
	}
	public String getStatus() {
		return Status;
	}
	public void setStatus(String status) {
		Status = status;
	}
	public String getShipName() {
		return ShipName;
	}
	public void setShipName(String shipName) {
		ShipName = shipName;
	}
	public String getShipNum() {
		return ShipNum;
	}
	public void setShipNum(String shipNum) {
		ShipNum = shipNum;
	}
	public String getShipDate() {
		return ShipDate;
	}
	public void setShipDate(String shipDate) {
		ShipDate = shipDate;
	}
	public String getShipCountry() {
		return ShipCountry;
	}
	public void setShipCountry(String shipCountry) {
		ShipCountry = shipCountry;
	}
	public String getShipProvince() {
		return ShipProvince;
	}
	public void setShipProvince(String shipProvince) {
		ShipProvince = shipProvince;
	}
	public String getShipCity() {
		return ShipCity;
	}
	public void setShipCity(String shipCity) {
		ShipCity = shipCity;
	}
	public String getShipTown() {
		return ShipTown;
	}
	public void setShipTown(String shipTown) {
		ShipTown = shipTown;
	}
	public String getShipAddress() {
		return ShipAddress;
	}
	public void setShipAddress(String shipAddress) {
		ShipAddress = shipAddress;
	}
	public String getShipPostCode() {
		return ShipPostCode;
	}
	public void setShipPostCode(String shipPostCode) {
		ShipPostCode = shipPostCode;
	}
	public String getExt2() {
		return Ext2;
	}
	public void setExt2(String ext2) {
		Ext2 = ext2;
	}
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public OrdersDetails getOrderDetails() {
		return orderDetails;
	}
	public void setOrderDetails(OrdersDetails orderDetails) {
		this.orderDetails = orderDetails;
	}
	public Address getAddress() {
		return address;
	}
	public void setAddress(Address address) {
		this.address = address;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	@Override
	public String toString() {
		return "Orders [id=" + id + ", OrderDate=" + OrderDate
				+ ", CustomerId=" + CustomerId + ", TotalMoney=" + TotalMoney
				+ ", Status=" + Status + ", ShipName=" + ShipName
				+ ", ShipNum=" + ShipNum + ", ShipDate=" + ShipDate
				+ ", ShipCountry=" + ShipCountry + ", ShipProvince="
				+ ShipProvince + ", ShipCity=" + ShipCity + ", ShipTown="
				+ ShipTown + ", ShipAddress=" + ShipAddress + ", ShipPostCode="
				+ ShipPostCode + ", Ext2=" + Ext2 + "]";
	}

	
}
