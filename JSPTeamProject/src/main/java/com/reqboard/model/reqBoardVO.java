package com.reqboard.model;

import java.sql.Timestamp;

public class reqBoardVO {
	
	private int RBNO;
	private String id;
	private String title;
	private String content;
	private Timestamp legdate;
	
	//생성자
	public reqBoardVO() {
	}

	public reqBoardVO(int rBNO, String id, String title, String content, Timestamp legdate) {
		super();
		RBNO = rBNO;
		this.id = id;
		this.title = title;
		this.content = content;
		this.legdate = legdate;
	}

	//get & set
	public int getRBNO() {
		return RBNO;
	}

	public void setRBNO(int rBNO) {
		RBNO = rBNO;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Timestamp getLegdate() {
		return legdate;
	}

	public void setLegdate(Timestamp legdate) {
		this.legdate = legdate;
	}

	

}
