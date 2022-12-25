package com.feedback;

public class feedback {
	private int id;
	private String Name;
	private String email;
	private String phone;
	private String message;
	
	public feedback(int id, String Name, String email, String phone, String message) {
		this.id = id;
		this.Name = Name;
		this.email = email;
		this.phone = phone;
		this.message = message;
	}
	
	public int getId() {
		return id;
	}
	
	public String getName() {
		return Name;
	}
	
	public String getEmail() {
		return email;
	}
	
	public String getPhone() {
		return phone;
	}
	
	public String getMessage() {
		return message;
	}
	
	
	
}
