package com.reservation.model;

public class ReservationBean {
	private String type;
	private int peopleNum;
	private int roomname;
	private String date;
	private int startusingtime;
	private int endusingtime;
	private int price;
	private String state;
	private String user;
	private int id;
	private String usingdate;

	public String getUsingdate() {
		return usingdate;
	}

	public void setUsingdate(String usingdate) {
		this.usingdate = usingdate;
	}

	public int getRoomname() {
		return roomname;
	}

	public void setRoomname(int roomname) {
		this.roomname = roomname;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public int getStartusingtime() {
		return startusingtime;
	}

	public void setStartusingtime(int startusingtime) {
		this.startusingtime = startusingtime;
	}

	public int getEndusingtime() {
		return endusingtime;
	}

	public void setEndusingtime(int endusingtime) {
		this.endusingtime = endusingtime;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		switch (type) {
		case "송파":
			type = "songpa";
			break;
		case "돈암":
			type = "don";
			break;
		case "방이":
			type = "bang";
			break;
		case "서울대입구":
			type = "seoul";
			break;
		case "공릉":
			type = "gong";
			break;
		}
		this.type = type;
	}

	public int getPeopleNum() {
		return peopleNum;
	}

	public void setPeopleNum(int peopleNum) {
		this.peopleNum = peopleNum;
	}

}
