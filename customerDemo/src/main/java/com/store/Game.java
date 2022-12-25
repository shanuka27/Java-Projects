package com.store;

public class Game {
	private int id;
	private String gamename;
	private String date;
	private String filename;
	private String price;
	
	
	public Game(int id, String gamename, String date, String filename, String price) {
		this.id = id;
		this.gamename = gamename;
		this.date = date;
		this.filename = filename;
		this.price = price;
	}
	
	public int getId() {
		return id;
	}
	
	public String getGamename() {
		return gamename;
	}
	
	public String getDate() {
		return date;
	}
	
	public String getFilename() {
		return filename;
	}
	
	public String getPrice() {
		return price;
	}
	
}
