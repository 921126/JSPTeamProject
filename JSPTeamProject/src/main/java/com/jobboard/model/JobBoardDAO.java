package com.jobboard.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class JobBoardDAO {

	//DAO객체
	private static JobBoardDAO instance = new JobBoardDAO();
	
	private JobBoardDAO() {
		
		try {
			
			Class.forName("oracle,jdbc.driver.OracleDriver");
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("드라이버 로드 에러");
		}
	}

	//DAO객체 반환
	public static JobBoardDAO getInstance() {
		return instance;
	}
	
	public String URL = "jdbc:oracle:thin@localhost:1521:xe";
	public String UID = "prjt";
	public String UPW = "prjt";

	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	
	//취업게시판 '글 작성' 메서드 ( 관리자만 작성가능하고, 학생은 확인만 가능 )
	public void Jobregist( String id , String title, String content ) {
		
		String sql = "insert into jobboard(jno, id, title, content) values(jobboard_seq.nextval, ?, ?, ?)";
	
		try {
			
			con = DriverManager.getConnection(URL, UID, UPW);
			
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, title);
			pstmt.setString(3, content);
			
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			
		}
	
	}
	
	
	
}
