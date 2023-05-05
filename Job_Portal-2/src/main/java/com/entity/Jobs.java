package com.entity;

public class Jobs {

	private int id;

	private String title;

	private String description;

	private String category;

	private String status;

	private String location;

	private String pdate;

	public Jobs() {
		// TODO Auto-generated constructor stub
	}

	public Jobs(String title, String description, String category,
			String status, String location, String pdate) {
		super();
		this.title = title;
		this.description = description;
		this.category = category;
		this.status = status;
		this.location = location;
		this.pdate = pdate;
	}

	public String getCategory() {
		return this.category;
	}

	public String getDescription() {
		return this.description;
	}

	public int getId() {
		return this.id;
	}

	public String getLocation() {
		return this.location;
	}

	public String getPdate() {
		return this.pdate;
	}

	public String getStatus() {
		return this.status;
	}

	public String getTitle() {
		return this.title;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public void setPdate(String pdate) {
		this.pdate = pdate;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public void setTitle(String title) {
		this.title = title;
	}

}
