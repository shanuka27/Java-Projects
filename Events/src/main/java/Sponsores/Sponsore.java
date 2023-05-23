package Sponsores;

public class Sponsore {
	private int id;
	private String sponame;
	private String conNO;
	private String email;
	private String price;
	
	public Sponsore(int id, String sponame, String conNO, String email, String price) {
		super();
		this.id = id;
		this.sponame = sponame;
		this.conNO = conNO;
		this.email = email;
		this.price = price;
	}

	public int getId() {
		return id;
	}

	public String getSponame() {
		return sponame;
	}

	public String getConNO() {
		return conNO;
	}

	public String getEmail() {
		return email;
	}

	public String getPrice() {
		return price;
	}



}
