package com.user;

public class User {

	private int id;
	private String name;
	private String email;
	private String phoneNumber;
	private String address;
	private String userName;
	private String password;
	
	public User(int id, String name, String email, String phoneNumber, String address, String userName, String password) {
		
		this.id = id;
		this.name = name;
		this.email = email;
		this.phoneNumber = phoneNumber;
		this.address = address;
		this.userName = userName;
		this.password = password;
	}

	public int getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public String getEmail() {
		return email;
	}

		public String getPhoneNumber() {
		return phoneNumber;
	}

		public String getAddress() {
		return address;
	}

		public String getUserName() {
		return userName;
	}

		public String getPassword() {
		return password;
	}

	
	
	
	
}
