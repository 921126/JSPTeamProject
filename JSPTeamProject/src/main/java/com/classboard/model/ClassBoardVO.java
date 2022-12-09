package com.classboard.model;

import java.sql.Timestamp;

public class ClassBoardVO {
	
	private int cbno;
	private String id;
	private String title;
	private String content;
	private Timestamp regdate;
	
	public ClassBoardVO() {
		super();
	}

	public ClassBoardVO(int cbno, String id, String title, String content, Timestamp regdate) {
		super();
		this.cbno = cbno;
		this.id = id;
		this.title = title;
		this.content = content;
		this.regdate = regdate;
	}

	public int getCbno() {
		return cbno;
	}

	public void setCbno(int cbno) {
		this.cbno = cbno;
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

	public Timestamp getRegdate() {
		return regdate;
	}

	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}

	@Override
	public String toString() {
		return "ClassBoardVO [cbno=" + cbno + ", id=" + id + ", title=" + title + ", content=" + content + ", regdate="
				+ regdate + "]";
	}
	
	
	

}
