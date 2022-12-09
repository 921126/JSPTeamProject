package com.shareboard.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.util.Util;

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
	

	//글 등록, DB에서 데이터를 받아 가공한 정보를 다시 DB에 넣어주는 작업
	public void regist(String writer, String title, String content) {
		String sql = "insert into ShareBoard values(shareboard_seq.nextval,\r\n"
				+ "?, ?, ?, sysdate)";
		try {
			conn = DriverManager.getConnection(URL, UID, UPW);
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, writer);
			pstmt.setString(2, title);
			pstmt.setString(3, content);
			pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			Util.close(conn, pstmt, rs);
		}
	}
	
	public ArrayList<ShareBoardVO> getList() {
		ArrayList<ShareBoardVO> list = new ArrayList<>();
		
		String sql = "select * from shareboard order by sbno desc";
		try {
			conn = DriverManager.getConnection(URL, UID, UPW);
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				ShareBoardVO vo = new ShareBoardVO(
						rs.getInt("sbno"),
						rs.getString("writer"),
						rs.getString("title"),
						rs.getString("content"),
						rs.getTimestamp("regdate"));
				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			Util.close(conn, pstmt, rs);
		}
		return list;
	}
	
	
}
