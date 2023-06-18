package com.user;

public class Customer {
	
	private int userID;
	private String fName;
	private String lName;
	private String phone;
	private String email;
	private String nic;
	private String userName;
	private String password;
	
	public Customer() {
		this.userID = 0;
		this.fName = "0";
		this.lName = "0";
		this.phone = "0";
		this.email = "0";
		this.nic ="0";
		this.userName = "0";
		this.password = "0";
	}
	
	public Customer(int userID, String fName, String lName, String phone2, String email, String nic, String userName,
			String password) {
		super();
		this.userID = userID;
		this.fName = fName;
		this.lName = lName;
		this.phone = phone2;
		this.email = email;
		this.nic =nic;
		this.userName = userName;
		this.password = password;
	}
	
	public Customer(int id,String email) {
		this.userID = id;
		this.email = email;
	}


	public int getUserID() {
		return userID;
	}

	public String getfName() {
		return fName;
	}

	public String getlName() {
		return lName;
	}

	public String getPhone() {
		return phone;
	}

	public String getEmail() {
		return email;
	}

	public String getNic() {
		return nic;
	}

	public String getUserName() {
		return userName;
	}

	public String getPassword() {
		return password;
	}

}
