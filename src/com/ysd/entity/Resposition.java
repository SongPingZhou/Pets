package com.ysd.entity;

public class Resposition {
	private int id;
	private int PositionId;
	private int ResId;
	private int Weight;
	private String Url;
	private String Type;
	private Positions positions;
	private Product product;
	private Productpic productpic;
	public Resposition() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Resposition(int id, int positionId, int resId, int weight,
			String url, String type) {
		super();
		this.id = id;
		PositionId = positionId;
		ResId = resId;
		Weight = weight;
		Url = url;
		Type = type;
	}
	
	
	public Resposition(int positionId, int resId, int weight) {
		super();
		PositionId = positionId;
		ResId = resId;
		Weight = weight;
	}
	@Override
	public String toString() {
		return "Resposition [id=" + id + ", PositionId=" + PositionId
				+ ", ResId=" + ResId + ", Weight=" + Weight + ", Url=" + Url
				+ ", Type=" + Type + ", positions=" + positions + ", product="
				+ product + ", productpic=" + productpic + "]";
	}
	public Positions getPositions() {
		return positions;
	}
	public void setPositions(Positions positions) {
		this.positions = positions;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public Productpic getProductpic() {
		return productpic;
	}
	public void setProductpic(Productpic productpic) {
		this.productpic = productpic;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getPositionId() {
		return PositionId;
	}
	public void setPositionId(int positionId) {
		PositionId = positionId;
	}
	public int getResId() {
		return ResId;
	}
	public void setResId(int resId) {
		ResId = resId;
	}
	public int getWeight() {
		return Weight;
	}
	public void setWeight(int weight) {
		Weight = weight;
	}
	public String getUrl() {
		return Url;
	}
	public void setUrl(String url) {
		Url = url;
	}
	public String getType() {
		return Type;
	}
	public void setType(String type) {
		Type = type;
	}
	
}
