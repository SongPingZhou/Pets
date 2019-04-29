package com.ysd.entity;

import java.util.List;


public class Fenye {
private int page;
private int limit;
private int total;
private List<User> list;
private List<Resposition> respositions;
private String CustomerId;
private String Status;
private String ShipName;
private String ShipNum;
private String OrderDate;
private String s_ebirthday;
private String ShipProvince;
private Float StartPrice;
private Float EndPrice;
private int Statu;
private int Sta;
private String productCategoryName;
private String productName;
private Float StartSellPrice;
private Float EndSellPrice;
private int QuantityInStock;
private int EndQuantityInStock;
private int clicks;
private int CategoryId;
private String bodyPrc;
private int OrderId;


public List<Resposition> getRespositions() {
	return respositions;
}


public void setRespositions(List<Resposition> respositions) {
	this.respositions = respositions;
}


public int getOrderId() {
	return OrderId;
}


public void setOrderId(int orderId) {
	OrderId = orderId;
}


public String getBodyPrc() {
	return bodyPrc;
}


public void setBodyPrc(String bodyPrc) {
	this.bodyPrc = bodyPrc;
}


public int getCategoryId() {
	return CategoryId;
}


public void setCategoryId(int categoryId) {
	CategoryId = categoryId;
}


public int getClicks() {
	return clicks;
}


public void setClicks(int clicks) {
	this.clicks = clicks;
}


public int getStatu() {
	return Statu;
}


public String getProductCategoryName() {
	return productCategoryName;
}


public void setProductCategoryName(String productCategoryName) {
	this.productCategoryName = productCategoryName;
}


public String getProductName() {
	return productName;
}


public void setProductName(String productName) {
	this.productName = productName;
}


public Float getStartSellPrice() {
	return StartSellPrice;
}


public void setStartSellPrice(Float startSellPrice) {
	StartSellPrice = startSellPrice;
}


public Float getEndSellPrice() {
	return EndSellPrice;
}


public void setEndSellPrice(Float endSellPrice) {
	EndSellPrice = endSellPrice;
}


public int getQuantityInStock() {
	return QuantityInStock;
}


public void setQuantityInStock(int quantityInStock) {
	QuantityInStock = quantityInStock;
}


public int getEndQuantityInStock() {
	return EndQuantityInStock;
}


public void setEndQuantityInStock(int endQuantityInStock) {
	EndQuantityInStock = endQuantityInStock;
}


public String getS_ebirthday() {
	return s_ebirthday;
}


public void setS_ebirthday(String s_ebirthday) {
	this.s_ebirthday = s_ebirthday;
}


public void setStatu(int statu) {
	Statu = statu;
}

public int getSta() {
	return Sta;
}


public void setSta(int sta) {
	Sta = sta;
}


public Float getStartPrice() {
	return StartPrice;
}
public void setStartPrice(Float startPrice) {
	StartPrice = startPrice;
}
public Float getEndPrice() {
	return EndPrice;
}
public void setEndPrice(Float endPrice) {
	EndPrice = endPrice;
}
public int getPage() {
	return page;
}
public void setPage(int page) {
	this.page = page;
}
public int getLimit() {
	return limit;
}
public void setLimit(int limit) {
	this.limit = limit;
}
public int getTotal() {
	return total;
}
public void setTotal(int total) {
	this.total = total;
}
public List<User> getList() {
	return list;
}
public void setList(List<User> list) {
	this.list = list;
}
public String getCustomerId() {
	return CustomerId;
}
public void setCustomerId(String customerId) {
	CustomerId = customerId;
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
public String getOrderDate() {
	return OrderDate;
}
public void setOrderDate(String orderDate) {
	OrderDate = orderDate;
}
public String getShipProvince() {
	return ShipProvince;
}
public void setShipProvince(String shipProvince) {
	ShipProvince = shipProvince;
}



}
