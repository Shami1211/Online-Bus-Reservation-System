package com.booking;

public class Payment {
	
	private int bookingID;
	private String busNo;
	private String start;
	private String end;
	private String time;
	private String date;
	private String name;
	private String nic;
	private String mobile;
	private String email;
	private String cardNo;
	private double amount;
	
	//parameterized constructor
	public Payment(int bookingID, String busNo, String start, String end, String time, String date, String name, String nic,
			String mobile, String email, String cardNo, double amount) {
		super();
		this.bookingID = bookingID;
		this.busNo = busNo;
		this.start = start;
		this.end = end;
		this.time = time;
		this.date = date;
		this.name = name;
		this.nic = nic;
		this.mobile = mobile;
		this.email = email;
		this.cardNo = cardNo;
	}

	public int getBookingID() {
		return bookingID;
	}

	public String getStart() {
		return start;
	}

	public String getEnd() {
		return end;
	}

	public String getTime() {
		return time;
	}

	public String getDate() {
		return date;
	}

	public String getName() {
		return name;
	}

	public String getNic() {
		return nic;
	}

	public String getMobile() {
		return mobile;
	}

	public String getEmail() {
		return email;
	}

	public String getCardNo() {
		return cardNo;
	}

	public String getBusNo() {
		return busNo;
	}

	public double getAmount() {
		return amount;
	}
	
	
	
	
	
}
