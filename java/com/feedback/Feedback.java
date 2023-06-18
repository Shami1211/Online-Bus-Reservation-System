package com.feedback;

public class Feedback {
	
	private int id;
	private String full_name;
	private String email;
	private String phone_number;
	private String date;
	private String comment;
	
	public Feedback(int id, String full_name, String email, String phone_number, String date, String comment) {
		super();
		this.id = id;
		this.full_name = full_name;
		this.email = email;
		this.phone_number = phone_number;
		this.date = date;
		this.comment = comment;
	}

	public int getId() {
		return id;
	}

	
	public String getFull_name() {
		return full_name;
	}

	

	public String getEmail() {
		return email;
	}

	
	public String getPhone_number() {
		return phone_number;
	}

	
	public String getDate() {
		return date;
	}

	public String getComment() {
		return comment;
	}

	
	
	
	

}
