package Venue;

public class Venue {
	private int id;
	private String venuename;
	private String address;
	private String capacity;
	private String ameni;
	
	public Venue(int id, String venuename, String address, String capacity, String ameni) {
		super();
		this.id = id;
		this.venuename = venuename;
		this.address = address;
		this.capacity = capacity;
		this.ameni = ameni;
	}

	public int getId() {
		return id;
	}

	public String getVenuename() {
		return venuename;
	}

	public String getAddress() {
		return address;
	}

	public String getCapacity() {
		return capacity;
	}

	public String getAmeni() {
		return ameni;
	}


}
