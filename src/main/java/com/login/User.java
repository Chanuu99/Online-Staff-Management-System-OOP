package com.login;

public class User {
	
	//attributes
	private int userID;
	private String fName;
	private String lName;
	private String email;
	private String gender;
	private String city;
	private String phone;
	private String dob;
	private String status;
	private double salary;
	private String username;
	private String password;
	
	//constructor
	public User(int userID, String fName, String lName, String email, String gender, String city, String phone,
			String dob, String status, double salary, String username, String password) {
		super();
		this.userID = userID;
		this.fName = fName;
		this.lName = lName;
		this.email = email;
		this.gender = gender;
		this.city = city;
		this.phone = phone;
		this.dob = dob;
		this.status = status;
		this.salary = salary;
		this.username = username;
		this.password = password;
	}

	//setters and getters
	public int getUserID() {
		return userID;
	}

	public void setUserID(int userID) {
		this.userID = userID;
	}

	public String getfName() {
		return fName;
	}

	public void setfName(String fName) {
		this.fName = fName;
	}

	public String getlName() {
		return lName;
	}

	public void setlName(String lName) {
		this.lName = lName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public double getSalary() {
		return salary;
	}

	public void setSalary(double salary) {
		this.salary = salary;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	
	
	

}
