package com.ysd.entity;



public class UserCustomers {
	private int id;
	private int UserId;
	private String RealName;
	private String Birthday;
	private String Eamail;
	private String Mphone;
	private String State;
	private String Default;
	private int Mark;
	private String Remark;
	
	
	
	public UserCustomers() {
		super();
		// TODO Auto-generated constructor stub
	}
	public UserCustomers(int id, int userId, String realName, String birthday,
			String eamail, String mphone, String state, String default1,
			int mark, String remark) {
		super();
		this.id = id;
		UserId = userId;
		RealName = realName;
		Birthday = birthday;
		Eamail = eamail;
		Mphone = mphone;
		State = state;
		Default = default1;
		Mark = mark;
		Remark = remark;
	}
	
	public UserCustomers(int userId, String realName, String birthday,
			String eamail, String mphone, String remark) {
		super();
		UserId = userId;
		RealName = realName;
		Birthday = birthday;
		Eamail = eamail;
		Mphone = mphone;
		Remark = remark;
	}
	@Override
	public String toString() {
		return "UserCustomers [id=" + id + ", UserId=" + UserId + ", RealName="
				+ RealName + ", Birthday=" + Birthday + ", Eamail=" + Eamail
				+ ", Mphone=" + Mphone + ", State=" + State + ", Default="
				+ Default + ", Mark=" + Mark + ", Remark=" + Remark + "]";
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUserId() {
		return UserId;
	}
	public void setUserId(int userId) {
		UserId = userId;
	}
	public String getRealName() {
		return RealName;
	}
	public void setRealName(String realName) {
		RealName = realName;
	}
	public String getBirthday() {
		return Birthday;
	}
	public void setBirthday(String birthday) {
		Birthday = birthday;
	}
	public String getEamail() {
		return Eamail;
	}
	public void setEamail(String eamail) {
		Eamail = eamail;
	}
	public String getMphone() {
		return Mphone;
	}
	public void setMphone(String mphone) {
		Mphone = mphone;
	}
	public String getState() {
		return State;
	}
	public void setState(String state) {
		State = state;
	}
	public String getDefault() {
		return Default;
	}
	public void setDefault(String default1) {
		Default = default1;
	}
	public int getMark() {
		return Mark;
	}
	public void setMark(int mark) {
		Mark = mark;
	}
	public String getRemark() {
		return Remark;
	}
	public void setRemark(String remark) {
		Remark = remark;
	}
	
}
