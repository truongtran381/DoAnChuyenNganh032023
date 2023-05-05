package com.entity;

public class User {

	private int id;
	private String name;
	private String email;
	private String password;
	private String qualification;
	private String role;

	public User() {
		// TODO Auto-generated constructor stub
	}

	public User(int id, String name, String email, String password,
			String qualification, String role) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.password = password;
		this.qualification = qualification;
		this.role = role;
	}

	public User(String name, String email, String password,
			String qualification, String role) {
		super();
		this.name = name;
		this.email = email;
		this.password = password;
		this.qualification = qualification;
		this.role = role;
	}

	public String getEmail() {
		return this.email;
	}

	public int getId() {
		return this.id;
	}

	public String getName() {
		return this.name;
	}

	public String getPassword() {
		return this.password;
	}

	public String getQualification() {
		return this.qualification;
	}

	public String getRole() {
		return this.role;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public void setQualification(String qualification) {
		this.qualification = qualification;
	}

	public void setRole(String role) {
		this.role = role;
	}

}
