package model;

public class Register {
	private int Id;
	private String name;
	private String email;
	private String phoneNo;
	private String orgName;
	private String password;
	
	public Register(int id, String name, String email, String phoneNo, String orgName, String password) {
		super();
		Id = id;
		this.name = name;
		this.email = email;
		this.phoneNo = phoneNo;
		this.orgName = orgName;
		this.password = password;
	}
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhoneNo() {
		return phoneNo;
	}
	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}
	public String getOrgName() {
		return orgName;
	}
	public void setOrgName(String orgName) {
		this.orgName = orgName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
}
