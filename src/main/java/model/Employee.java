package model;

public class Employee {
	private int empId;
	private String eName;
	private String email;
	private double salary;
	
	public Employee(int empId, String eName, String email, double salary) {
		super();
		this.empId = empId;
		this.eName = eName;
		this.email = email;
		this.salary = salary;
	}
	
	public int getEmpId() {
		return empId;
	}
	public void setEmpId(int empId) {
		this.empId = empId;
	}
	public String geteName() {
		return eName;
	}
	public void seteName(String eName) {
		this.eName = eName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public double getSalary() {
		return salary;
	}
	public void setSalary(double salary) {
		this.salary = salary;
	}
}
