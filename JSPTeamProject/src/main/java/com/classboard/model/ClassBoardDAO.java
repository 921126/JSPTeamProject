package com.classboard.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class ClassBoardDAO {
	
	//싱글톤 형식으로 DAO 설계 - 한개의 객체만 만들어지도록함.
	//1. 나 자신의 객체를 생성해서 1개로 제한.
	private static ClassBoardDAO instance = new ClassBoardDAO();
	
	//2. 직접 객체를 생성할 수 없도록 생성자를 private로 지정.
	private ClassBoardDAO() {
		
		//드라이버 클래스 로드
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (Exception e) {
			System.out.println("드라이버클래스 로드에러");
		}
	};
	
	//3. 외부에서 객체생성을 요구할 때 getter메서드를 통해 1번의 객체르 ㄹ반환
	public static ClassBoardDAO getInstance() {
		return instance;
	}
	
	//4.필요한 데이터베이스 변수 선언
	public String URL = "jdbc:oracle:thin:@172.30.1.71:1521:xe";
	public String UID = "prjt";
	public String UPW = "prjt";
	
	//사용할 객체 참조변수 선언, 원래는 지역변수로 만들어줘야 한다고 함.
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	//------ 위에서 여기까지 DAO 기본 환경 구축 완료 ------------
	// 아래서 부터는 사용할 메서드 작성내용.
	
	
	
		
	

}
