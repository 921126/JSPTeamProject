package com.classboard.model;

public class ClassBoardVO {
	
	private int cbno;
	private String id;
	private String title;
	private String content;
	private String regdate;
	
	public ClassBoardVO() {
		super();
	}

	public ClassBoardVO(int cbno, String id, String title, String content, String regdate) {
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

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	
	
	

}
