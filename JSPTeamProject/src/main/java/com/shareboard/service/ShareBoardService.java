package com.shareboard.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shareboard.model.ShareBoardVO;

public interface ShareBoardService {
	
	//public 생략함
	//글 등록하기
	void regist(HttpServletRequest request, HttpServletResponse response);
	
	//글 목록
	public ArrayList<ShareBoardVO> getList(HttpServletRequest request, HttpServletResponse response);
	
	
	
	
//	//글 작성자에 유저 아이디 넣는 작업(안씀)
//	public void userName(HttpServletRequest request, HttpServletResponse response);
	
}
