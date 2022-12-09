package com.shareboard.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class ShareBoardDAO {
	
	//dao객체를 private 선언, 외부에서 get메서드로만 불러올 수 있음
	private static ShareBoardDAO instance = new ShareBoardDAO();
	
	//DB에 접근하기 위한 드라이버 클래스 로드 
	private ShareBoardDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (Exception e) {
			System.out.println("드라이버 클래스 오류");
		}
	}
	
	//외부에서 객체 생성 시 getter메소드로 객체 얻어오기
	public static ShareBoardDAO getInstance() {
		return instance;
	} //ShareBoardDAO.getInstance();
	
	//데이터베이스 변수
	public String URL = "jdbc:oracle:thin:@localhost:1521:xe";
	public String UID = "prjt";
	public String UPW = "prjt";
	
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public void regist(String writer, String title, String content) {
		String sql = "insert into board values(ShareBoard_seq.nextval,";
		
	}
	
	
}